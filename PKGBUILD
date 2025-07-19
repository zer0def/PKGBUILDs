# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.139.6
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/roboll/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/roboll/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("455e774b28bcceadf21bab214740a922d1e1efb36c0a112c61dec1dc2933fb333cc6884aa9053bab506c30a09077d4dae5389d315d0362030e37b3653d1e39b3")
b2sums=("b50dbead33fcf8c034259ac93ab771ca5241e62b096f4ce1031096399cf6c37a3cd2c413fb50cdec9983cc517568acf15ea5de4ab3a9daf02f4c9f30ae1dab42")
b3sums=("8da9cf0aba06f513626f427356d07debc4f7e2fe0ffe84b681620678dbbe4e80")

prepare() {
  export GOPATH="${srcdir}"
  mkdir -p src/github.com/roboll "${GOPATH}/bin"
  mv "${pkgname}-${pkgver}" "src/github.com/roboll/${pkgname}"
  export PACKAGE_ROOT="${GOPATH}/src/github.com/roboll/${pkgname}"
}

build() {
  cd "${PACKAGE_ROOT}"
  export CGO_ENABLED=1
  export CGO_CPPFLAGS="${CPPFLAGS}"
  export CGO_CFLAGS="${CFLAGS}"
  export CGO_CXXFLAGS="${CXXFLAGS}"
  export CGO_LDFLAGS="${LDFLAGS}"
  export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"
  go build -v -ldflags "-linkmode=external -X github.com/roboll/helmfile/pkg/app/version.Version=${pkgver}" .
  chmod +x ./helmfile
}

check() {
  cd "${PACKAGE_ROOT}"
  go test -v ./...
}

package() {
  cd "${PACKAGE_ROOT}"
  install -Dsm755 ./helmfile "${pkgdir}/usr/bin/helmfile"
}

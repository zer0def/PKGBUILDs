# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.170.1
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/helmfile/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/helmfile/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("5ca330bebe6778f6dd13f42da02e022bcb9c3901436c92e82356ebd25505196f5ffdd5c64af556d427b3b440b5a773c7a359ee533d6d232f391c6fdc399b301e")
b2sums=("f1e937073d193c490f241822da299396e2bacb57ba59e70b02cd78533d21f194c682992318afe52e2b77aa9896970b37026d3aa2eafd2a8413c283cc521a54b7")
b3sums=("58c7c1ab8bcab33fa70c3cf26738b0ff51a02db49ed7c8cab9e2e3a88fa52a9e")
options=('!lto')

prepare() {
  export GOPATH="${srcdir}"
  mkdir -p src/github.com/helmfile "${GOPATH}/bin"
  mv "${pkgname}-${pkgver}" "src/github.com/helmfile/${pkgname}"
  export PACKAGE_ROOT="${GOPATH}/src/github.com/helmfile/${pkgname}"
}

build() {
  cd "${PACKAGE_ROOT}"
  export CGO_ENABLED=1
  export CGO_CPPFLAGS="${CPPFLAGS}"
  export CGO_CFLAGS="${CFLAGS}"
  export CGO_CXXFLAGS="${CXXFLAGS}"
  export CGO_LDFLAGS="${LDFLAGS}"
  export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"
  go build -v -ldflags "-linkmode=external -X github.com/helmfile/helmfile/pkg/app/version.Version=${pkgver}" .
  chmod +x ./helmfile
}

#check() {
#  cd "${PACKAGE_ROOT}"
#  go test -v ./...
#}

package() {
  cd "${PACKAGE_ROOT}"
  install -Dsm755 ./helmfile "${pkgdir}/usr/bin/helmfile"
}

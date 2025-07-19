# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.163.0
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/helmfile/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/helmfile/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("72d6dfb9ef6a7b635c1589620f1d7f72b87baf3a265aefaacf0b11eb28779c9904912e5e8d1ee383b3b730c22d8c48943d16a8cc3fed704be9ea19a69423365f")
b2sums=("c7d428db46f0ec3b600627ad5c85b795cb9f1af69e31f5b4a1f20da263cdc3c8733535c9eb95d3bb974695e0ae9998231df02c17aef37722668596dbf90f80ee")
b3sums=("6596306bd79ea3ac8d5d883168963384ffab5bb8c4a7544be9cc2cb6d2249c0e")
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

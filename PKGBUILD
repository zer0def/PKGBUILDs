# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.169.1
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/helmfile/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/helmfile/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("180c11838c2200356a2bdc4d9e8eaabf288ac0885959828c60e1241430f5dafbffb3bbbff86f810d19ef6cb6b0459fa62eed876fa97ff0c72c8ed393948731ff")
b2sums=("cf61cefd4d55a8efc209a462c1276cc38ae11d255a06e675d4f8b91a9ce3d11945a0cd590894aa73ad7accf0434d72a44fbf8a88e5345961057839ca668810c9")
b3sums=("7a3ced1eb24bb16990a7a50695bbe7c7ccbd680476d34dda66b9becd0b8a491f")
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

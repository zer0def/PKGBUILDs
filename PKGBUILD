# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=1.1.2
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/helmfile/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/helmfile/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=('9d01f9632d99115fc41ce092377cae3f635e0a906d934622540a514042c4578eb60a168e32fb7ccfb7762ecafe9bdc44178628aed35c3d938292675f2b4af4a0')
b2sums=('52fb3940fbc8d397d90424ca6b3b532b597bb85873074aead0f56cb0c41eb2c59c7e6b296cae3d7531e5ffaa8f732c6f82bcb4e02a715aa6c5ae1bde06efaae2')
b3sums=("9a3fdf824e47fabafc1dd0186d5d01a9efec36b31a9ce0bdb02a62926fcfd8a9")
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

# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.139.4
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/roboll/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/roboll/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("bf31a5a6510df2f3f181cf904b871b40c32a8f8cdd801f00af4bdfa3bc9ab9d86149c3d58dc9994421b01ee75ff219d1a8518e7b3432cf1d070c346d50061117")
b2sums=("ecc38072eedab41728565a1031653eee6711616efa8b13adf9a0b0adf7c0f2c5d55e12496eef4a56e30b0d0adf9f7461a5af7459d74b070ca6376875a154509d")
b3sums=("b18456b44e22ac17b2a78a316ebdd41a409768063ab558bb1360bb38d1edde09")

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

# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.143.1
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/roboll/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/roboll/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("831e8ec68afd95cac660bb986d7340cef98693e4e21f9f34f38071800e69821d6f9397ed83ff9f227e6ed1b0a04ceb3bbe0a9f5b75d9f41d9593e89c04385fb6")
b2sums=("a24bdcd6fecb8501995a36372b3a1f768db2c93a1a062327a6edd0d410f1ad0971ec32fc33db52918ac3ce21242818858f9f913bae6dc579fa5799570b257b77")
b3sums=("25bdd8e94a0cb0b5a1a2631559a899b810e91de4d3bb320332840634f64d6bd1")
options=('!lto')

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

#check() {
#  cd "${PACKAGE_ROOT}"
#  go test -v ./...
#}

package() {
  cd "${PACKAGE_ROOT}"
  install -Dsm755 ./helmfile "${pkgdir}/usr/bin/helmfile"
}

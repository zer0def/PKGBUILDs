# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.138.6
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/roboll/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/roboll/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("8a7aa63cbcaf8a9f56a6fb5b536f6cfcf68ef55c3a242fd07db0d7eb050f6323edc44a4dfb472b6c5151e876944a9b0f87c3e982965b3ddfff138c7270a44688")
b2sums=("6a209d1ac6435104bef14a37f14b802be4e268528a9ccca9f5283645b790bd81d4c704d219a11c4ab3b17db911e457708be2a693fc944527fa187079c1336f99")
b3sums=("4a1402f9e9b7dbce7e400531e9a9b52e0a5bdbec20bad6bfae38a8ce850b9b1b")

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

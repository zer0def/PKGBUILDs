# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.169.0
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/helmfile/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/helmfile/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("bee9c79e52a2526a5c03ef994d2e951ad81a503d812bc380910e390c7bc42a2b46a255419896a04f8b9d1915c47d64ded2611598fbeaf07e94d506c64f12f848")
b2sums=("c0510fb3aef434d831750958f1cddd9ee4c0190dd107206564dd1ba8477c91f5fbd17a55457e771cedd43d9f8235967433c88491e827c09c63456610994b4acc")
b3sums=("6eec4b104518ee7cacf30f031d43ee65dd0a1ddffb2b5cb0cefb6d49b4490043")
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

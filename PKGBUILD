# Maintainer: Christian Rebischke <chris.rebischke@archlinux.org>

pkgname=helmfile
pkgver=0.139.2
pkgrel=1
pkgdesc="Manage multiple helm charts with a single helmfile"
arch=('x86_64')
url="https://github.com/roboll/helmfile"
license=('MIT')
makedepends=('go')
depends=('glibc')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/roboll/helmfile/archive/v${pkgver}.tar.gz")
sha512sums=("4d936d025c955ea82175236ccad4a4eef722177f6c13e99d702757b382d5e2fafbb42a7ce4dc9eda47ab12112504dee52df8e8501f94a810b39daf074bd2b419")
b2sums=("5a51553f585db103d76105cb192e96a1d3bbae4d5fdd3cf9335b0809b7ffbe4ea8da15892ad05add246891d342535920acc9f44fe988b5d987ce921036219af0")
b3sums=("389572453f7e337b86b56a6c6862e3313280e8485fcc5ca058e5915aaebc69cc")

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

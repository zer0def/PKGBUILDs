# Maintainer: Morten Linderud <foxboron@archlinux.org>
# Maintainer: Carl Smedstad <carsme@archlinux.org>
# Contributor: Lukas Grossar <lukas.grossar@gmail.com>
# Contributor: Ivan Shapovalov <intelfx@intelfx.name>
# Contributor: Wayne Cheng <waynethecheng@gmail.com>
# Contributor: Matthias Lisin <ml@visu.li>

pkgname=helm
pkgver=3.16.0
pkgrel=1
pkgdesc="The Kubernetes Package Manager"
arch=("x86_64")
url="https://github.com/helm/helm"
license=("Apache-2.0")
depends=("glibc")
makedepends=(
  "git"
  "go"
)
options=("!lto")
source=("git+https://github.com/helm/helm.git#tag=v$pkgver?signed")
validpgpkeys=(
  '672C657BE06B4B30969C4A57461449C25E36B98E' # Matthew Farina <matt@mattfarina.com>
  'CABAA8D44DFACA14791FBE9892C44A3D421FF7F9' # Matthew Farina <matt.farina@rancher.com>
  '967F8AC5E2216F9F4FD270AD92AA783CBAAE8E3B' # Matthew Fisher <matt.fisher@microsoft.com>
  'F1261BDE929012C8FF2E501D6EA5D7598529A53E' # Martin Hickey <martin.hickey@ie.ibm.com>
)
sha256sums=("b5a74c39fef7e24c1ca6a50212dccbd62ee29cf17b8c2cdcc803df9da95ae769")
sha512sums=("265a0352228ebc636bb9ce5d74a3e7136ca3c64738a55811bb48d89f2eb1a2f9e5a5dfe5647f000d4ee7f1c123abde0a67a63b24248f2f85752040a819801276")
b2sums=("bf85314f199113ffc4071d2aef21921fc4154210129b00a590fb44914a4bdfe8cd086e3d33573fca8e76969fc6bd0da9d3901d6d235b6505d49601b281d27983")
b3sums=("18a5666a744fdcfdbe1bcb1d7668cb39b3d7f29999b84cae4603be8cf8c019c3")

prepare() {
  cd $pkgname
  GOFLAGS="-mod=readonly" go mod vendor -v
}

build() {
  cd $pkgname
  export CGO_LDFLAGS="$LDFLAGS"
  export CGO_CFLAGS="$CFLAGS"
  export CGO_CXXFLAGS="$CXXFLAGS"
  export CGO_CPPFLAGS="$CPPFLAGS"
  export GOFLAGS="-buildmode=pie -mod=vendor -modcacherw"
  export GOPATH="$srcdir"
  local ld_flags=" \
    -compressdwarf=false \
    -linkmode=external \
    -X helm.sh/helm/v3/internal/version.version=v$pkgver \
    -X helm.sh/helm/v3/internal/version.gitCommit=$(git rev-parse HEAD) \
  "
  go build -v -ldflags="$ld_flags" ./cmd/helm
}

check() {
  cd $pkgname
  # Test that the exectuble reports the correct version.
  test "$(./helm version --template '{{.Version}}')" = "v$pkgver"

  local unit_tests=$(go list ./... | grep -v helm.sh/helm/v3/pkg/registry)
  # shellcheck disable=2086
  go test $unit_tests
}

package() {
  cd $pkgname
  install -vDm755 -t "$pkgdir/usr/bin" helm
  ./helm completion bash | install -vDm644 /dev/stdin "$pkgdir/usr/share/bash-completion/completions/helm"
  ./helm completion zsh | install -vDm644 /dev/stdin "$pkgdir/usr/share/zsh/site-functions/_helm"
  ./helm completion fish | install -vDm644 /dev/stdin "$pkgdir/usr/share/fish/vendor_completions.d/helm.fish"
}

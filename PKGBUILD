# Maintainer: Morten Linderud <foxboron@archlinux.org>
# Maintainer: Carl Smedstad <carsme@archlinux.org>
# Contributor: Lukas Grossar <lukas.grossar@gmail.com>
# Contributor: Ivan Shapovalov <intelfx@intelfx.name>
# Contributor: Wayne Cheng <waynethecheng@gmail.com>
# Contributor: Matthias Lisin <ml@visu.li>

pkgname=helm
pkgver=3.17.0
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
  '208DD36ED5BB3745A16743A4C7C6FBB5B91C1155' # Scott Rigby <scott@r6by.com>
)
sha256sums=('fbff48e4abcae4c8912355ea85d27aad3d3d8b37549c67471323089c63493862')

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

  local k8s_modules_ver=$(go list -f '{{.Version}}' -m k8s.io/client-go | sed 's/v//')
  local k8s_modules_minor_ver=$(echo "$k8s_modules_ver" | cut -d. -f2)
  local ld_flags=" \
    -compressdwarf=false \
    -linkmode=external \
    -X helm.sh/helm/v3/internal/version.version=v$pkgver \
    -X helm.sh/helm/v3/internal/version.gitCommit=$(git rev-parse HEAD) \
    -X helm.sh/helm/v3/pkg/lint/rules.k8sVersionMajor=1 \
    -X helm.sh/helm/v3/pkg/lint/rules.k8sVersionMinor=$k8s_modules_minor_ver \
    -X helm.sh/helm/v3/pkg/chartutil.k8sVersionMajor=1 \
    -X helm.sh/helm/v3/pkg/chartutil.k8sVersionMinor=$k8s_modules_minor_ver \
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

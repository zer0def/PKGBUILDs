# Maintainer: Morten Linderud <foxboron@archlinux.org>
# Contributor: Lukas Grossar <lukas.grossar@gmail.com>
# Contributor: Ivan Shapovalov <intelfx@intelfx.name>
# Contributor: Wayne Cheng <waynethecheng@gmail.com>
# Contributor: Matthias Lisin <ml@visu.li>

pkgname=helm
pkgver=3.15.0
pkgrel=1
pkgdesc="The Kubernetes Package Manager"
arch=("x86_64")
url="https://github.com/helm/helm"
license=("Apache-2.0")
depends=('glibc')
makedepends=("go" "git")
options=("!lto")
source=("git+https://github.com/helm/helm.git#tag=v${pkgver}?signed")
validpgpkeys=(
  '672C657BE06B4B30969C4A57461449C25E36B98E' # Matthew Farina <matt@mattfarina.com>
  'CABAA8D44DFACA14791FBE9892C44A3D421FF7F9' # Matthew Farina <matt.farina@rancher.com>
  '967F8AC5E2216F9F4FD270AD92AA783CBAAE8E3B' # Matthew Fisher <matt.fisher@microsoft.com>
  'F1261BDE929012C8FF2E501D6EA5D7598529A53E' # Martin Hickey <martin.hickey@ie.ibm.com>
)
sha256sums=("24f27c365a2535dfcab56d0f644ea7afd257bce5c3bf06c0961d44fbedf48319")
sha512sums=("b6aa5d8e3804b2806b51875810ff418ebd37ef64aa97aa1c3ef8b61d619d77348643a2349edce136747a4bc96c4f871265a82f3a32929a67b765cf8e05db6261")
b2sums=("03ef3b09c4cdb865541dcd224ca9aa76605326b9ee931e1a1102659c6723fbc280caa584bb92f3ed1fbfa4f59aa4adab948b9ecd7903661a67b889042ba49463")
b3sums=("432bf5004a57828586ecf2c2bd5c309876ee2a6954f93d15a8b0b58207fa95ee")

prepare() {
  cd "${pkgname}"
  go mod download -x
}

build() {
  cd "${pkgname}"
  export CGO_LDFLAGS="$LDFLAGS"
  export CGO_CFLAGS="$CFLAGS"
  export CGO_CXXFLAGS="$CXXFLAGS"
  export CGO_CPPFLAGS="$CPPFLAGS"
  export CGO_ENABLED=1
  make EXT_LDFLAGS="-linkmode external" GOFLAGS="-buildmode=pie -trimpath"
}

check() {
  cd "${pkgname}"
  local unit_tests=$(
    go list ./... \
      | grep -v helm.sh/helm/v3/pkg/registry
  )
  # shellcheck disable=2086
  go test $unit_tests
}

package() {
  cd "${pkgname}"
  install -Dm755 bin/helm -t "$pkgdir/usr/bin"
  bin/helm completion bash | install -Dm644 /dev/stdin "$pkgdir/usr/share/bash-completion/completions/helm"
  bin/helm completion zsh | install -Dm644 /dev/stdin "$pkgdir/usr/share/zsh/site-functions/_helm"
  bin/helm completion fish | install -Dm644 /dev/stdin "$pkgdir/usr/share/fish/vendor_completions.d/helm.fish"
}

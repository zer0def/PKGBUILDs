# Maintainer: Morten Linderud <foxboron@archlinux.org>
# Contributor: Lukas Grossar <lukas.grossar@gmail.com>
# Contributor: Ivan Shapovalov <intelfx@intelfx.name>
# Contributor: Wayne Cheng <waynethecheng@gmail.com>
# Contributor: Matthias Lisin <ml@visu.li>

pkgname=helm
pkgver=3.14.4
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
sha256sums=("aa5f85e902f08da39194d66ccc614c3cd57f8cc912b501881c64b63b06159047")
sha512sums=("bde076ba9d2aeca1c3636558283d6fa417e44d1d6f87fb83a603ed4fd9cb238078aa7d323ad9ec4e806c6da7f322c38c708b87011ecbfb9aa0f768b461472c24")
b2sums=("d7c67a1195b2d51a80cd0596d45e667deb24eb0f917e3362dd2d5cabd0042eec828e365ed3d8d45af31c38924fdaa867dc48d78741867d60521adf8507a12d2a")
b3sums=("9e876d370caa3ee096cbb6cb4350136f31b2a9bef8e9e1311b67dd84729c5275")

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
  export CGO_LDFLAGS="$LDFLAGS"
  export CGO_CFLAGS="$CFLAGS"
  export CGO_CXXFLAGS="$CXXFLAGS"
  export CGO_CPPFLAGS="$CPPFLAGS"
  make LDFLAGS="-s -w -linkmode external" GOFLAGS="-buildmode=pie -trimpath" test-unit || true
}

package() {
  cd "${pkgname}"
  install -Dm755 bin/helm -t "$pkgdir/usr/bin"
  bin/helm completion bash | install -Dm644 /dev/stdin "$pkgdir/usr/share/bash-completion/completions/helm"
  bin/helm completion zsh | install -Dm644 /dev/stdin "$pkgdir/usr/share/zsh/site-functions/_helm"
}

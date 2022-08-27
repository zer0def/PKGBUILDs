pkgname=box64-git-bin
pkgver=0.1.8
pkgrel=1
pkgdesc='Linux Userspace x86_64 Emulator with a twist'
arch=('aarch64')
url='https://github.com/ptitSeb/box64'
license=('MIT')
depends=('gcc-libs' 'libpng12')
optdepends=('libstdc++5')
makedepends=('jq')
provides=('box64' 'box64-git')
conflicts=('box64' 'box64-git')
source_aarch64=(
  "box64.zip::${url}"
  'box64.sh'
  "box64-git::git+${url}#branch=main"
)
sha512sums_aarch64=(
  'SKIP'
  'f450bfea8212eb1bb68e575791abe94e43bd91a58080b8f372c3b6ef1b275363a181c5e50cd35e0e4a383c472ecacf1b5f7f66990d48ec03e66fd53518cf6e19'
  'SKIP'
)
b2sums_aarch64=(
  'SKIP'
  'fd0d0ca08ad8fc458f122963b4e2f2da79e1ab5b64a0e16660013b93b24a0acbb83701c34ada1564aff8e9679777e8fe9f6a7a6639ead126eed4cd6aa17676b0'
  'SKIP'
)
b3sums_aarch64=(
  'SKIP'
  'f48d0f6144a06ffa1da0e9f207c06df97c043578e92eb15ced752f54454b09b8'
  'SKIP'
)
DLAGENTS=("https::/bin/sh $(pwd)/nightly-build-dl.sh %o %u")

package() {
  install -Dm755 "${srcdir}/box64.sh" "${pkgdir}/usr/bin/box64"
  install -Dm755 "${srcdir}/box64" "${pkgdir}/opt/box64/bin/box64"
  install -Dm755 -t "${pkgdir}/opt/box64/lib" "${srcdir}/box64-git/x64lib/"*
}

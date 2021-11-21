# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=11.0
_apiver=30
_rev=1
_rel="r$(printf %2s ${_rev} | tr ' ' 0)"
_arch=arm64-v8a
pkgname="android-${_arch}-system-image-${_apiver}"
pkgver="${_sdkver}_${_rel}"
pkgrel=1
pkgdesc="Android ${_arch} Atom System Image, API-${_apiver}"
arch=('any')
license=('custom')
depends=("android-platform-${_apiver}")
optdepends=('qemu' 'libvirt')
options=('!strip')
source=(
  "https://dl.google.com/android/repository/sys-img/android/${_arch}-${_apiver}_${_rel}.zip"
  "package.xml"
)
sha512sums=(
  20b210e9f1db96e0abc5e992ed5f38b34fc1fa5dec213029b6a4c14bd56ace82d4cdfc6e1ad42130ecb9fa6d8b74570e6b9a567a901e430001558d262ed01fe0
  7eca4dd52fe2f27d43dcdf11169bff2cbbd7800637bef5a1ed211b6ca031da175b0e4ab24ea90b139520ec35de978434d2a4784975c3007b1dab92d1b0e6ab94
)
b2sums=(
  c4920bb2cb622fa437d5530d322d1195d56bb8cf779c71f1e476dd62df46d4a682592601a9cbd90b10e7715a8674394bff802356df940bad81edcd17fc4071e3
  aff19be3c37ef68bd4c642319d6c011ce9a39cc1b4241a2dd51a25a1c9ced5eaf3ba6e6060d294e067af055e052ed2970e7a295cef361b23a8b9cf7d9bf4ae74
)
b3sums=(
  ea43e38568513539794283f2ef3f95623b4f6a2ca2b9a831fd8472e091412990
  b4b4698d58681e4cae0432d61056d7eaf25969f58df17747ef8750a0de7d9bd7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

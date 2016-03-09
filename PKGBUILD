# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=4.1.2
_apiver=16
_rev=6
_rel="r$(printf %2s ${_rev} | tr ' ' 0)"
_arch=armeabi-v7a
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
  256db569c8c95771e6d778c006f12391218d32ce7de658016852575fe574994df291be77f9a1d783bb20374b9c989e5e6cccbcf172845ba2d79b4a31979dace0
  7eca4dd52fe2f27d43dcdf11169bff2cbbd7800637bef5a1ed211b6ca031da175b0e4ab24ea90b139520ec35de978434d2a4784975c3007b1dab92d1b0e6ab94
)
b2sums=(
  a9916406f812d54df83c69577dfdd84f265a5c13e8c8639e341ccb742bf5e5b8fafbbc2de916c2463d821da32ef3402a8d3c28b96d1cf80df40bd364cb753df8
  aff19be3c37ef68bd4c642319d6c011ce9a39cc1b4241a2dd51a25a1c9ced5eaf3ba6e6060d294e067af055e052ed2970e7a295cef361b23a8b9cf7d9bf4ae74
)
b3sums=(
  4b5c7bf7090abed667ae9ca1b97de98fc562ad4f42be63ebd038bbbc51b2dff5
  b4b4698d58681e4cae0432d61056d7eaf25969f58df17747ef8750a0de7d9bd7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

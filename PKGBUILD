# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=11.0
_apiver=30
_rev=10
_rel="r$(printf %2s ${_rev} | tr ' ' 0)"
_arch=x86_64
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
  32ac63c70d6188baeb27fd480d5ee2eaf8a2a5a75c7e2153128fe131206d7cf837ca5d5304d5603e40f4af4bcdea6d68d9df364b876fb263495f4a247eeaeca6
  9392703cb4614330b142eba8d60fcfed794a3b30176e38e4651c08bb57d5391735f575e24589281a439555df7fcf49015ec876a6ab1c0e2df2adbde4168f44be
)
b2sums=(
  63ffb9c22ab81d293e3c35eb2091be3527214d1b7c58840ce4f3d4570824c6309d4c2522080ae2deff42775905fa1ddea0f9a35ad054eeb10925076bbb0ff446
  a0b2d83466c93737d724bee12d97f36e89f290525c0236ad18d432a9f6a25d2a1d7c76c948ec5a483e0224445e58b63a45e26cc31efa6a1183c6513405cd7269
)
b3sums=(
  f21e6c1464491abfb24b7033df6122ad620bfe6e60da2a86f3e44763c1bfd157
  62ad06ae5e1eed1f65feefd55b55f499e417bbec4a3fb6d42adc5e6d667901a7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

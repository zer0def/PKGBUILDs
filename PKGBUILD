# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=12.0
_apiver=31
_rev=3
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
  6401a30cf17adf4d235075d13d8afafaabc6bf79946e7d61725a74c26f2d9998c3a917d20c66a098f25b49145b470e10c4e77e55d747998e6969bec2a1a6325e
  9392703cb4614330b142eba8d60fcfed794a3b30176e38e4651c08bb57d5391735f575e24589281a439555df7fcf49015ec876a6ab1c0e2df2adbde4168f44be
)
b2sums=(
  8f5af42bc75d684f8c89b872871a813a9a6e016052563f96195344a0e414ff7275f24eb3611a7e60123989eb2612ded6cca781254651e754dc11db9bcc2b35fa
  a0b2d83466c93737d724bee12d97f36e89f290525c0236ad18d432a9f6a25d2a1d7c76c948ec5a483e0224445e58b63a45e26cc31efa6a1183c6513405cd7269
)
b3sums=(
  b40a2add606eab6e459ef920c0c7580f4d8600b6603a9025616a62d04f2838e1
  62ad06ae5e1eed1f65feefd55b55f499e417bbec4a3fb6d42adc5e6d667901a7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

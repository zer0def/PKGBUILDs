# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=5.0
_apiver=21
_rev=5
_rel="r$(printf %2s ${_rev} | tr ' ' 0)"
_arch=x86
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
  cf733a793d9fdadbcc3b9e944a884cd6b56c2e56e07b5e6ba2395c76baf121fe2dc77e88576b98e0541fb886aa4575fd826a84c81898a2ab9c7666322d364f9f
  9392703cb4614330b142eba8d60fcfed794a3b30176e38e4651c08bb57d5391735f575e24589281a439555df7fcf49015ec876a6ab1c0e2df2adbde4168f44be
)
b2sums=(
  08f1811b140ff9f352085845d6e602e0300c03813250689d06cf6cffa5dba066963a745702d91daf9b59aa5a71a04782f5669848712113b06b4e0ae6223e7f57
  a0b2d83466c93737d724bee12d97f36e89f290525c0236ad18d432a9f6a25d2a1d7c76c948ec5a483e0224445e58b63a45e26cc31efa6a1183c6513405cd7269
)
b3sums=(
  a326cfa5d451797db30b24d7474fdf9354ecd7c2fb9c3935c93c523987c0450b
  62ad06ae5e1eed1f65feefd55b55f499e417bbec4a3fb6d42adc5e6d667901a7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

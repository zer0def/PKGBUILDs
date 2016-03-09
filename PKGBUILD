# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=4.1.2
_apiver=16
_rev=7
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
  044042d0e5bb566f2c7c1f7c4245fae96b921f6580d416d750c6563873be3541f2b175acc4f74ec7ec07ac7f4a55e3b6733882133e94a53404a077ade70346c1
  9392703cb4614330b142eba8d60fcfed794a3b30176e38e4651c08bb57d5391735f575e24589281a439555df7fcf49015ec876a6ab1c0e2df2adbde4168f44be
)
b2sums=(
  7047a603a05ba664a9ebfd22140a8ca28c8ebedfb279bc9759d5edd13e8f32d2daa1673390c00d38cedc63eb678969a36cd31a8b894c2919f3ad5866bf6839f3
  a0b2d83466c93737d724bee12d97f36e89f290525c0236ad18d432a9f6a25d2a1d7c76c948ec5a483e0224445e58b63a45e26cc31efa6a1183c6513405cd7269
)
b3sums=(
  a64a1042ad267f3bdbadd2fbc4d85b51415cf5b99a601ccc541eaad75e831c16
  62ad06ae5e1eed1f65feefd55b55f499e417bbec4a3fb6d42adc5e6d667901a7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

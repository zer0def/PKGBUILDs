# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=12.0
_apiver=31
_rev=3
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
  681a6df69b6e29a134a9a85fbeebd33b30c63faf2c24184b0ca24d4b0f908cd5e6ef98a3c31a3148331f033901bbdc0eb33fadba269f225c487030c496a4963e
  7eca4dd52fe2f27d43dcdf11169bff2cbbd7800637bef5a1ed211b6ca031da175b0e4ab24ea90b139520ec35de978434d2a4784975c3007b1dab92d1b0e6ab94
)
b2sums=(
  ae44381f06593c5ed9024dc6660a80adf2c22e5d3d86ebdbb275eb41f36b34f5028d2539158c2128576e9fd59678825d0e355edf5bc0a849e579604d2786d1ca
  aff19be3c37ef68bd4c642319d6c011ce9a39cc1b4241a2dd51a25a1c9ced5eaf3ba6e6060d294e067af055e052ed2970e7a295cef361b23a8b9cf7d9bf4ae74
)
b3sums=(
  d912ed0594eef14b9d8b4aee824161f0bb4013da4a0563445761c7020a327f93
  b4b4698d58681e4cae0432d61056d7eaf25969f58df17747ef8750a0de7d9bd7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

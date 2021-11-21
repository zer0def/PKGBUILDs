# Maintainer: Joel Pedraza <joel@joelpedraza.com>

_sdkver=5.0
_apiver=21
_rev=4
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
  4078c5da74894a9c2b8c0bdb8fd08f9e593463c86ae994a3f2e9421780f4740e4c9b680f4e21109bf977744adcea234c7738174e3a1f8b7272383c8660230c4f
  7eca4dd52fe2f27d43dcdf11169bff2cbbd7800637bef5a1ed211b6ca031da175b0e4ab24ea90b139520ec35de978434d2a4784975c3007b1dab92d1b0e6ab94
)
b2sums=(
  73b25ea6651ee616656ade6aaa44746a53f1046f6c4a5f37b0b6baf263fced4be0f7e06f88db3d52b5dbf04a428491619c696e5202aec16dd321382851ef3cd5
  aff19be3c37ef68bd4c642319d6c011ce9a39cc1b4241a2dd51a25a1c9ced5eaf3ba6e6060d294e067af055e052ed2970e7a295cef361b23a8b9cf7d9bf4ae74
)
b3sums=(
  fee0c475ad4d9f4945208460b152074d80587a26bc744c860b8526b41816894c
  b4b4698d58681e4cae0432d61056d7eaf25969f58df17747ef8750a0de7d9bd7
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default"
  mv "${srcdir}/${_arch}" "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}"
  apiver="${_apiver}" abi="${_arch}" rev="${_rev}" envsubst <"${srcdir}/package.xml" > "${pkgdir}/opt/android-sdk/system-images/android-${_apiver}/default/${_arch}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

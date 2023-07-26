export _rev=6 _layout_api=15 _api=28
_revr="r$(printf '%02d' "${_rev}")"
_ver=9
pkgname="android-platform-${_api}"
pkgver="${_ver}_${_revr}"
pkgrel=1
pkgdesc="Android SDK Platform, API-${_api}"
arch=('any')
url="http://developer.android.com/sdk/index.html"
license=('custom')
depends=('android-sdk')
options=('!strip')
source=(
  "https://dl.google.com/android/repository/platform-${_api}_${_revr}.zip"
  "package.xml"
)
sha1sums=(
  '9a4e52b1d55bd2e24216b150aafae2503d3efba6'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '8452dbbf9668a428abb243c4f02a943b7aa83af3cca627629a15c4c09f28e7bd'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '155d7a1e09e1f1d0df958052f9553a01de80ccaab136427515a4165fc4d294cf58ae1873d56f6579c5203177d81f876611aee3a3ab5910beb596853598ac863b'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '86e2e3d88a07814a56bf8dd219aaae8fc7adeddcdf7dd469c87ae2412299f8b01d318ab26ec9c695df90235be7f00494e1e671006b7d5e30e3590ea77c05a2c5'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '5c49ed750a4a332fd604363adc5a6c4f640a45847691c81a76f75058d34a60c0'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

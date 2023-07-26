export _rev=5 _layout_api=12 _api=16
_revr="r$(printf '%02d' "${_rev}")"
_ver=4.1.2
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
  "https://dl.google.com/android/repository/android-${_api}_${_revr}.zip"
  "package.xml"
)
sha1sums=(
  '12a5ce6235a76bc30f62c26bda1b680e336abd07'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  'fd7f269a423d1f1d079eabf9f918ceab49108702a1c6bb2589d57c23393503d3'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '6b0f7773d07114515bfb107f0c36cebb3d15257cd2573a28537b3aa945c502e09e0925a7f023385e0ee52217e193442cfcce534717f3a1db4528b3268e24b598'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '962a3ba77da4e5ba8cca305591d2dbd9604872f03a2bb44e0d68a95c9672145fbe19623526b96817f16cbf7186f67416e4eb97cc4cc9e887389b9aaa4aa7a94d'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '4cf137652aa6e55404fce3c7da616eaff09514a7b1630de450ed118ad8141d3b'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

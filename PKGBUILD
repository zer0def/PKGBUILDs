export _rev=3 _layout_api=16 _api=25
_revr="r$(printf '%02d' "${_rev}")"
_ver=7.1.1
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
  '00c2c5765e8988504be10a1eb66ed71fcdbd7fe8'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '9b742d34590fe73fb7229e34835ecffb1846ca389d9f924f0b2a37de525dc6b8'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '7be91199a12952d85746afda84020db8132f819e7f30745bfd5c11b0d876b296f05c5d523cd0a0e1c8bcb670d505cdaa22196d11e39b58521d617fea02aef6be'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  'a41a0fa925f2294bbdd1f9267657627ca8032c4184ca8d23bd6d7d41e0761e35ca8c0e3e71fb04eb15a1a9f53268cb31477dd7144fe603fbdfe64ea1fb384070'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '53d08a9f07877edcc8b69efe3faa2df5335013ce73863fe0fadd86fd25d2413d'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

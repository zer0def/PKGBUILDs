export _rev=3 _layout_api=16 _api=23
_revr="r$(printf '%02d' "${_rev}")"
_ver=6.0
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
  '027fede3de6aa1649115bbd0bffff30ccd51c9a0'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '4b4bcddead3319708275c54c76294707bfaa953d767e34f1a5b599f3edd0076c'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  'f2dac46e6972e2ebf9ea69db1cbc6df6c4fe4bc42e8047bb6d1a15ff7dcfc21ebf6393d4918c017d770e11aa765fb043c10bd134a35631b890fe4121534eba3b'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  'f1e2fdd83c3a19062b1f700cfa6007ba11213a2ec301aaa38dcae43eb01bcaef07f218cac31154e8eafd7c8ba4ad6c8c295a7ffd34557eab358c115c6e3ef60f'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '7f9dc76f28290d16a58f2a0676e68e1f2de75f7236cf78e5d365cfa11eca1f62'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

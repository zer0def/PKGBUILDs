export _rev=4 _layout_api=12 _api=19
_revr="r$(printf '%02d' "${_rev}")"
_ver=4.4.2
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
  '2ff20d89e68f2f5390981342e009db5a2d456aaa'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '5efc3a3a682c1d49128daddb6716c433edf16e63349f32959b6207524ac04039'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '23daa6c08594474367596c56e56c25ec6a092e56a9bcb07c1effd68d6085cef619379f1b4ef4e1319b723025523260a95724fbecd7eb894d4fcf0d965e9827bb'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  'df16058f96171279f47c7fbaf4ec754ea94337af5b72b85438399b767e75c7e6db2ddba3d588ac3b141aef0cfb2e88926e834a51cd850e14ef839698236eead8'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  'c4f52561cf9755e27a51285c6d25f2db4ae83c9568a68d7c181fba5209f1c56c'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

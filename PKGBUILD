export _rev=2 _layout_api=16 _api=24
_revr="r$(printf '%02d' "${_rev}")"
_ver=7.0
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
  '8912da3d4bfe7a9f28f0e5ce92d3a8dc96342aee'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  'f268f5945c6ece7ea95c1c252067280854d2a20da924e22ae4720287df8bdbc9'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '39882b53bb0f94278ea3265a50f4d91ccc50f8bc26141475e2e8edf2fc519b926c9a8dfe7ea62c075d396111a44c1fdc4fa49cf0abf245a40e84f5c278472f0d'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '0a16b5f3a0ad444f712cd75358f60ce32c63702604d1443eb251b5bc0360fde8c23f3ca1a7c793ddefb901bf65aad769af5317f2d1cb2f1719a042d41b926b8e'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '9316076cf444e9589fb264b535255825c5ceb7466fc121f9cbb50cbb91482a29'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

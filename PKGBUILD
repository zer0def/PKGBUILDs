export _rev=2 _layout_api=12 _api=21
_revr="r$(printf '%02d' "${_rev}")"
_ver=5.0.1
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
  '53536556059bb29ae82f414fd2e14bc335a4eb4c'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  'a76cd7ad3080ac6ce9f037cb935b399a1bad396c0605d4ff42f693695f1dcefe'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  'a4e68fe01369505499c9f0a99a228a7717a73f6e74ef0a59dc3f0bd48706a715b132b5ba4ca5a484dafd465c2ab08a5fbe525b487c62824fca2fab44cade809c'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  'aacde6012a6ab3a1fe182dab7dc8f17be3dcc775c58098eae8b32e0e01f1e78872014a4081b879e11fd35f1f57898d38d24a6de9f4395c50fed3e68e564f0ba7'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '576aff03d468da30fec27dd34455d5daac479eb21258cc7c36b99942b162c961'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

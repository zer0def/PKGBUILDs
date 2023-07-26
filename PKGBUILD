export _rev=1 _layout_api=15 _api=31
_revr="r$(printf '%02d' "${_rev}")"
_ver=12
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
  'ca5bcaa565cb37e9d287051d6dd0e49a5426ec29'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '1d69fe1d7f9788d82ff3a374faf4f6ccc9d1d372aa84a86b5bcfb517523b0b3f'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '7a75503843deb831a5748b096a43324acb44e00ec5c9348a49edcbf929ceb65bace73ddd6945a17f0f7212e18d0a6bf19dca612fd6e2adda6b8cfe739d958f69'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '08b25324e02d72d306833d51cdf24002211efc159ddc14bc8b66d1c2c8b92f02f50ef98bfbfb77f1a12d6d8dbc30d6475110fb463977e5da93356c7eaf924bff'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  'a9d484797140f9b0603991b1f9c76996e8b183bfcc43d939dfda38d16763ef98'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

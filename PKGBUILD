export _rev=3 _layout_api=15 _api=27
_revr="r$(printf '%02d' "${_rev}")"
_ver=8.1.0
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
  '35f747e7e70b2d16e0e4246876be28d15ea1c353'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '020c4c090bc82ce87ebaae5d1a922e21b39a1d03c78ffa43f0c3e42fc7d28169'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '7c2c54a1f97299e0cf8490e8f78032f5f9a0f588ae3db6ec1c1ff5c2e4eb9b32c3dd06600f01e950c7f0366b037eaf679dcbd65af4c63db788ae06498faeb448'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '441dafe60f7fcb9c036b21d07d2171f48c6b779a80a6daea00be6158dcc32069bb4d5f5af8bcccb809b06f5c780267533030ea1fbe4769dc2f64ad7bda754ba8'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '8e701170632e3b2fa931627fdd6bbea746a1f251f91b69e3d1d5f22e2675d58a'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

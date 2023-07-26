export _rev=2 _layout_api=15 _api=26
_revr="r$(printf '%02d' "${_rev}")"
_ver=8.0.0
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
  'e4ae5d7aa557a3c827135838ee400da8443ac4ef'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '2aafa7d19c5e9c4b643ee6ade3d85ef89dc2f79e8383efdb9baf7fddad74b52a'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '7f125570e0e2e347865503148af23f9f6402456e5afe724ac19f788c4fbc3ae7c1305707502f87206e8a9bb7b720ac383a881f411586f3d0fff913273e7cb961'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '7c0b62416a6787be06fc750ababe8a9bec2e10d84ebbaa6d56f6b56c03873a45f6429bfd308cddcb24cf64315375821b51130a41ec82f0e6fe1a933105f42035'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  'c50ec3333f8f678bc72b3b8aa55eef3317096c31e9298a9f7ec5f891c054c838'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

export _rev=1 _layout_api=15 _api=32
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
  'afae86ed55d29733d50996ffed832f2d1bd75b9a'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '01d8da1c900e70fcf5da39767d5444e39928935b1a5927055ce749fc348ca7ae'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  'b9b008a076d2f00530fd366c6fd4c9efd0791ed380518cd40678c69d90f96d4804146ed451f773c45fe4f34b9662231ed8eadc8d4fda4f57fcfaf6417f3637a4'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '0b5915d37b9400416b4735cf7307ad601f8c6826c96d1a84c5eac7d555f13d3347ca5088f0c09ba10fb3bea6430b3df588b66ce3242bdf0316cc737c0bf0447f'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '16dd907efde8479195c28aefd8e1c1c2b8bc3a9c2c57be9cd30788c3c3b50983'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

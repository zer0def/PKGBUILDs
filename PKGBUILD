export _rev=2 _layout_api=14 _api=22
_revr="r$(printf '%02d' "${_rev}")"
_ver=5.1.1
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
  '5d1bd10fea962b216a0dece1247070164760a9fc'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '45eb581bbe53c9256f34c26b2cea919543c0079140897ac721cf88c0b9f6789e'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  '7cd640ec74bb871b7162205c075c309f60f6e74792f5f85f5fc40e563520783420971241da08865029e087d1130c5b11617d5a88fd564da5ee17e06b675c5bcd'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '6eb8bd56cd3e914731119f34c5c8d43a809a1dbe59dd679d307391c7f6b535706447f5b4f8482cec1576bf395766f3923e77174790821712b71395b743ac4962'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  'ef8569a470af3dcdf0c5c3c2dda5a48d8b4e60efd3212ca276f521661ba2a306'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

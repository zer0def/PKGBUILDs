export _rev=5 _layout_api=15 _api=29
_revr="r$(printf '%02d' "${_rev}")"
_ver=10
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
  '9d8a7e0ffa5168dbca6c60355b9129c6c7572aff'
  'ac422c77ba5124b8be5397ecf4a6d2b3d316a4b4'
)
sha256sums=(
  '951da8bf175254da74626824f919bd28def64f8828f29dd3b124a535cf4049d8'
  '63e6fb65c89c38984a0dacb0a9ecf4c38582f1f9bfc3956327fd42c8004be53e'
)
sha512sums=(
  'c197070e8aadb7158486a575aefdad202d23f141a5da6460e89c5101488fcf1051b58100dcc8b28d38cfdd30ac40ec417bb9957b5db01da3983869db4d077979'
  '0b369b878e9f59b081e415958afc9c8a30f1c34376a6d21dee72ff7b16e3d29c492fd896a50af9bc9d8383ef98db8eb7945009c190e3731de5578336e254d508'
)
b2sums=(
  '39c77447017d0c0c3eb6a22a01ef7b90dfdc8a008032906b7cdc5f8700cb9b021cd233e6115437d6aabe06d874507a80904a70bfa0cc4bebe5946fdad3c4b3ae'
  '5e1a0523c9826209ab7fca56940f313b70f5e937b21ab123177296e41fdd9dbcb56d7c0babf7482b5f105dea871aaf4fadf8d8455dc2f2845c567fa00fe059bc'
)
b3sums=(
  '264c5eea249ed5bdfaecdf82c6395472e1000c5dd6a934241344ed74f77ef07d'
  '1916c72890608efce8d43f4feb465589b6521e1270448e6420a6b5705b700fee'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

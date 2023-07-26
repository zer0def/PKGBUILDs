export _rev=2 _layout_api=15 _api=33 _ext=3
_revr="r$(printf '%02d' "${_rev}")"
_ver=13
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
  'eef99bd4617e80da85187a183eba356d787100d9'
  'b102264c96b23dbd0b960802494c528d5cb4a508'
)
sha256sums=(
  'f851b13fe89f8510a1250df5e8593e86176b2428f4f3cbe0e304a85818c07bc8'
  'd202ebcc08c71f45a197691e95981314b1003a42bc93fa7e58ab1a40a40bb0d7'
)
sha512sums=(
  '3b946bdd0a1c4db15619c4da05e8d2befd8148649b12a13ca07268e19788fde1a1f77d170bd535f0c5fe16ae1bbcbb7166cbe62b4d400cf5ad6fffb4f08b07e3'
  '648aca2d7c43c67aae90a622ce585b8410b218a9bd9becf99c84527f48365fd5fe3bfc45ad471d4fccf64a2a48ed8220c071d68a20af44a049f91d6da484f711'
)
b2sums=(
  '5be38c8981c323a5efac70b138f44f3b216f49e66c7db89aef007bcf58b12f71b4a4585571babdc2d9f92c25400ab1232f9454327971509983bfca16ca738492'
  '4b0f6ec00bdff9f284651df193ee80a09ed92c1d28a68d1b0e22332006fe83f16fb38b2d52c6794b135534042828b0bb191f0c5edf88a02849392113b6facaf2'
)
b3sums=(
  '91924c38faa021955cae9a32f80f59c1c917e7198c796d4d22ddf62fec8e73d9'
  '073a059b9b4ad67f34c1e0127bef6925d3b5941beae30607f9a3161568909a89'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_ver}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

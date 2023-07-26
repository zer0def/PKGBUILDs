export _rev=1 _layout_api=15 _api=34 _ext=7
_revr="r$(printf '%02d' "${_rev}")"
_ver=14
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
  "https://dl.google.com/android/repository/platform-${_api}-ext${_ext}_${_revr}.zip"
  "package.xml"
)
sha1sums=(
  '618f593e7d30c1c9ff530d1bf2fec155d47d43e0'
  'b102264c96b23dbd0b960802494c528d5cb4a508'
)
sha256sums=(
  'dcb3052b9c24f25d08922821b8a55a8f15b1b0060984f55bc7ed6aac00ab542d'
  'd202ebcc08c71f45a197691e95981314b1003a42bc93fa7e58ab1a40a40bb0d7'
)
sha512sums=(
  'c507a130c52398dc467696bdbe0b5c1c88ddf312a05c2b362b52a787f93ef9db497dbac2a8d24efe81c89217e2b58e42cf17684217b17e3c7dfb698f6052052d'
  '648aca2d7c43c67aae90a622ce585b8410b218a9bd9becf99c84527f48365fd5fe3bfc45ad471d4fccf64a2a48ed8220c071d68a20af44a049f91d6da484f711'
)
b2sums=(
  'ed68c232500017f0de5ed7cc7641ac72d05d2593351998102a6dc68f33c21bf1e3eac27a7355b0680a7fe613d6565df09270e0a28e5429da6541a4b2d053902d'
  '4b0f6ec00bdff9f284651df193ee80a09ed92c1d28a68d1b0e22332006fe83f16fb38b2d52c6794b135534042828b0bb191f0c5edf88a02849392113b6facaf2'
)
b3sums=(
  '34204c9139a6c9f1c9c4b905f712518f767012accbfd021cb240fee1c03933b9'
  '073a059b9b4ad67f34c1e0127bef6925d3b5941beae30607f9a3161568909a89'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_api}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

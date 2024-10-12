export _rev=1 _layout_api=15 _api=35 _ext=7
_revr="r$(printf '%02d' "${_rev}")"
_ver=15
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
  'c84ed39cecaeec13bc06c67639fcf86734013d98'
  'b102264c96b23dbd0b960802494c528d5cb4a508'
)
sha256sums=(
  'ec20a0a65704e1b2554f8e3eebf588ef260569673c848c01aff2e29c28734cf4'
  'd202ebcc08c71f45a197691e95981314b1003a42bc93fa7e58ab1a40a40bb0d7'
)
sha512sums=(
  '730b8182ad7e8077d3264dbbf25a9177fce91ad0490cfe7a9ce03e4f271235b14e930f4c04b62d99eb2e94ff2394e0b7c8ca1d8df1d965d359693fcbf8e46e78'
  '648aca2d7c43c67aae90a622ce585b8410b218a9bd9becf99c84527f48365fd5fe3bfc45ad471d4fccf64a2a48ed8220c071d68a20af44a049f91d6da484f711'
)
b2sums=(
  '3de433eb6500fd7dc5cf37b254465d49b43553deef60749943a539662f28e1cfdf979b8eb294ccca9046a5714293c381a9d513b1ff5a3500e26e16912fdc3ca5'
  '4b0f6ec00bdff9f284651df193ee80a09ed92c1d28a68d1b0e22332006fe83f16fb38b2d52c6794b135534042828b0bb191f0c5edf88a02849392113b6facaf2'
)
b3sums=(
  '163e7355d2cbce6c8ba1aa0c0262d48e09de89ad5f46169b55c920259717729f'
  '073a059b9b4ad67f34c1e0127bef6925d3b5941beae30607f9a3161568909a89'
)

package() {
  mkdir -p "${pkgdir}/opt/android-sdk/platforms/"
  mv "${srcdir}/android-${_api}" "${pkgdir}/opt/android-sdk/platforms/android-${_api}"
  envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/platforms/android-${_api}/package.xml"

  chmod -R ugo+rX "${pkgdir}/opt"
}

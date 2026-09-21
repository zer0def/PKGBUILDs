pkgname=libnvsdm
pkgver=610.43.02.1
pkgrel=1
arch=(x86_64)
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')

_ver_prefix=''
_ver_suffix='-'
_devel_dash="$(echo -n ${dash:+-}${_ver_suffix:+-}|head -c1)"
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvsdm/linux-x86_64/libnvsdm-linux-x86_64-${pkgver}-archive.tar.xz"
  )
fi
sha256sums_x86_64=(
  '9b44b19c1c65bcf968801f678a93f875a3c44f61b138439b18027b921befe567'
  '6761b2c2f589f6ee2ae9b8ba260c4cd8b79af53fd9d6ea5e365f915a7752f79b'
)
sha512sums_x86_64=(
  '7035d922f1496f1be15af9386e0cec2beca004eee585146a61d7d8019adf96b597f74c903ee095591aaa909729c3eba5e8b89d3c8067dd7549a1926abaa9826c'
  '5fafe836216fef5ae21e6a45de535510004594db7554ef3b436a8c3cd206c217b4b09f17cc8f38f725d7dbc605dabbebd80b8c3c2a0c035d5644c630d118d59d'
)
b2sums_x86_64=(
  '60c755d59f082fe6e5dde120f5e29933179427638731d1526da1c5b80ce9bf03f6596e8abf213b3ff64c63d5a22ded3716e133a5b9c09cc59834b5af070d45cf'
  '06646112a0bbfa5d04e4110570c1b1c7cc44ff1219c11dad96c720a01e8a6ae4c84b8cd06c57e6c04e0f66626543459a7934aaa229dde93e95a19b75f5785580'
)
b3sums_x86_64=(
  '9dca57a1da07216dc4da21b7a5d008d2bcfcde5d1002718af691304a2f5a55d4'
  '9def7c86df82d65fb3cc8342eebaf943bc9d6ee4b38b8498db7d5f5ab3b7ddb8'
)

package(){
  [ "${pkgver##*.}" = "1" ] && {
    bsdtar -C "${srcdir}" -xf "${srcdir}/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"
    bsdtar -C "${srcdir}" -xf "${srcdir}/libnvsdm${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"

    mkdir -p "${srcdir}/usr/lib" "${srcdir}/usr/share/licenses/${pkgname}"
    mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"
    [ ! -d "${srcdir}/usr/share/doc" ] || mv "${srcdir}/usr/share/doc/${pkgname}-${pkgver%%.*}/"* "${srcdir}/usr/share/licenses/${pkgname}"
    mv "${srcdir}/usr/share/licenses/${pkgname}-${pkgver%%.*}/"* "${srcdir}/usr/share/licenses/${pkgname}"
    rm -rf "${srcdir}/usr/share/licenses/${pkgname}-${pkgver%%.*}/" "${srcdir}/usr/share/doc/" "${srcdir}/usr/lib64/"
    mv "${srcdir}/usr" "${pkgdir}"
  } || {
    _srcdir="${srcdir}/libnvsdm-linux-${CARCH}-${pkgver}-archive"
    mkdir -p "${_srcdir}/share/licenses/${pkgname}"
    mv "${_srcdir}/LICENSE" "${_srcdir}/usr/share/doc/third-party-notices.txt" "${_srcdir}/share/licenses/${pkgname}"
    rm -rf "${_srcdir}/usr" "${_srcdir}/apps"

    mkdir -p "${pkgdir}/usr";mv "${_srcdir}/"* "${pkgdir}/usr"
  }
}

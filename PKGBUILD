pkgname=libnvsdm
pkgver=570.124.06
pkgrel=1
arch=(x86_64)
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')

_ver_prefix=''
_ver_suffix=''
_devel_dash="$(echo -n ${dash:+-}${_ver_suffix:+-}|head -c1)"
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
    #"https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvsdm/linux-x86_64/libnvsdm-linux-x86_64-${pkgver}-archive.tar.xz"
  )
fi
sha256sums_x86_64=(
  'd3e36b09ad7fbe48ebc9e1df0cf6f022e6e92ddaa0d927d06539c1bcaef04e2e'
)
sha512sums_x86_64=(
  '017ffd7a3f338f19a0a48b4fa794918e774bcee7b9484fe68a01cb323fc910da5ce08e136bd8a86d8eacd202d1b536fc7138bbfd090a19f66e43e6fc0ae19a27'
)
b2sums_x86_64=(
  '2ef6a888800af25cf0ad99091020af985cab6b282c3f9c89ad5495e65605f94f110f161ec6fe3943b4c560d78d516d0da8c99a80a38361490c1fcb6042032b65'
)
b3sums_x86_64=(
  'eff7a1c0eed471f64719ba7eed6d694b37ad9d0b1c8c1f5c222f56c5a9c8a591'
)

package(){
  [ "${pkgver##*.}" = "1" ] && {
    #bsdtar -C "${srcdir}" -xf "${srcdir}/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"
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
    rm -rf "${_srcdir}/usr"

    mkdir -p "${pkgdir}/usr";mv "${_srcdir}/"* "${pkgdir}/usr"
  }
}

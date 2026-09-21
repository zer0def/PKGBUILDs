pkgname=libnvsdm
pkgver=570.158.01
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
  'c2ecf656a02268f2d5afc2f112201f183e9caaa7eae15de9d41d0cba63f44bd2'
)
sha512sums_x86_64=(
  '22d09fd9390c4a4402d4e1aebfddd94cfe2d838f1f2a402fc145b0ac63063cd70b2d48a6959adb29072e5ecaf96ab68b5a3ad0bcc7f562f58381453806fd140f'
)
b2sums_x86_64=(
  'd3c20243a5628c5bc90e484a585caedacef9e6ca9b24290deaf015ce706dcbe9ff5ef127b7028fcdfa6eb5590032d82fc7429ac3e8a14941d6c3785166856491'
)
b3sums_x86_64=(
  '3182000967d02a115fee4bcf5c4a593cafbfecf1c5cd66b1dfe6215842c21519'
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

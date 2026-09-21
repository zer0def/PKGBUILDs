pkgname=libnvsdm
pkgver=580.167.08
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
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvsdm/linux-x86_64/libnvsdm-linux-x86_64-${pkgver}-archive.tar.xz"
  )
fi
sha256sums_x86_64=(
  '42ff8468c299627a777b1d05cfb54cd6f36416df93475a7a0c435984a00b9e60'
)
sha512sums_x86_64=(
  '2e2b3b8878b7372b1428287bd5816a019e0edb99c6bb09f1ca3d547c91bf9e40c4dd23cfe3c4f29c830d928e5183432c70e43ec32a95703c76fa3020502dfb41'
)
b2sums_x86_64=(
  'a83512723644423c4a215c35d568b7e47480f681424c6acad7d9cb716f24e4265aec42937b3ebe811944dc0303678cc82d6193e17809896be5d36837cbb1e3d2'
)
b3sums_x86_64=(
  '58b9e06ab6a8582ac080d04e6715d0250e64854c07c10c2f038e72297a2009b8'
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

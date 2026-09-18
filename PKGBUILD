pkgname=libnvsdm
pkgver=560.28.03.1
pkgrel=1
arch=(x86_64)
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')

_ver_prefix='-'
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
  '815582d9e585754088ae55641c85e3db0075f67a46835ddc731863706307ca93'
)
sha512sums_x86_64=(
  'ca597a9666890e784d4816ee4c8ab8faef91286077346713136dcab4fe4f38f6b01b5278c6e48b0eaed4cef94fead1d4063d1398fe10334bb8cd9f2b5fca00a0'
)
b2sums_x86_64=(
  'aa49d5ac955b2a73a8fd4e6a2aa837ee5df833c8cabf9a5449659feaf864c4fc955d48b604b26eb22e77b0b72105c008850bf57e83e229f7ea061570fefa3033'
)
b3sums_x86_64=(
  'cce3ca7c7a833581c7cced073f2891cad748cab31f30187b079d295e9bcf6d5c'
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

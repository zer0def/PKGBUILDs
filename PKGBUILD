pkgname=libnvidia-nscq
pkgver=535.247.01
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix='-'
_ver_suffix=''
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvidia-nscq${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/libnvidia-nscq${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.aarch64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
fi
if [ "${_arm64}x" != "x" ]; then
sha256sums_aarch64=(
  'c60e4bf07e5957de9f89110b83ac70f1ffef600a112742f78442c956f3ddd145'
)
sha512sums_aarch64=(
  'c661ec04ff4aa62dc4ee7f91d2e6fb97bd080c72f659562abe07f01ddaca6bf7c7eff9c49d14939d0295a8c462a382361995195ecae47a0e52678e54194e709f'
)
b2sums_aarch64=(
  'b685b7f3d894c3f2bb9f3780dfa5c227a15d41113d629de084387c5ec69b8af55d32a34ebf0bc610f5cc3257422d9467abec982f10ffd88d8e39266889ac4a87'
)
b3sums_aarch64=(
  'c041077504c5ab5311777a1ecac961c15ce524c38603f276fe59dd118b35c427'
)
fi
sha256sums_x86_64=(
  '87f3a52fd244197cd205994da4da1d950428a950d7734aa4bf4c4bce0ffeab58'
)
sha512sums_x86_64=(
  'dce4c7e4949809637aea1b9b3f0a62cf144709ee7e92d09e69f8991c37da603b9b2f0867775db52fa9a1707a5703e5bc3aa1250ea4af0785a1465f55b59b26e2'
)
b2sums_x86_64=(
  'f58b0520a65b03175b6b2031a6bab48fe94ded117f9e30f90233b57296219d4eaa3a492be6e63dd4507fcc9478120d60e4542794624cc3ee0f23c7bdcd37fa80'
)
b3sums_x86_64=(
  '36a9357849f59c3f22872acde02100c7a0d51b55fdecc614124edbc39f01b801'
)

package(){
  mkdir -p "${pkgdir}/usr"
  [ "${pkgver##*.}" = "1" ] && {
    mv "${srcdir}/usr/lib64" "${pkgdir}/usr/lib"
  } || {
    _srcdir="${srcdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive"
    mkdir -p "${pkgdir}/usr/share/licenses"
    mv "${_srcdir}/lib" "${pkgdir}/usr"
    mv "${_srcdir}/LICENSE" "${pkgdir}/usr/share/licenses/libnvidia-nscq"
  }
}

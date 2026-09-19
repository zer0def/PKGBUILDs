pkgname=libnvidia-nscq
pkgver=595.58.03
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
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
  'a564cff1fd237031a38886882ce06d53b48750bfa4a18d719e470df9d2aeca0d'
)
sha512sums_aarch64=(
  '6b76e0e65528ddac37fc36914d2450cb74eee6860a431ea99e59f908316a05765087eed82716022f86b396964ea1881aa7f965bef46187fb422d016ff4a0f6ef'
)
b2sums_aarch64=(
  '4686eb417b320c2939facbb1493145cdb3c403719dc022f57ab1d786451cf5dc270c8d0fb5c8a8fe344e0afd731a67019d5e0aad5676c293890752bd430d1094'
)
b3sums_aarch64=(
  'e209feb2dcabb65c41e87fda1102ba670442bcd907844c82641dac7ec2b2e497'
)
fi
sha256sums_x86_64=(
  '1c008787111fc55a7fc1d3521a6d41c2523b8949354e5651eadb4498554e5469'
)
sha512sums_x86_64=(
  'a7aa09401d3f372bf8f303eabe53c676d308f7cf2c16f94247a5684e99be734b9565f9e3ed6f32a99e8bf7021d4c641a907b1ce945ac8fe8a45189651cee785f'
)
b2sums_x86_64=(
  '61e23a37c8e0f53aa3c3c67fbe75ad4ba9d6c675039e4d51683ffadf886c627a587b6908c9f99bd7fcfa22317490c05b4de89ae5b796d75e8ebe77795bfb71de'
)
b3sums_x86_64=(
  '01110bd789076cb66aeb7bc02bf82c988eaa14ab19de521417a1558c525e0c9c'
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

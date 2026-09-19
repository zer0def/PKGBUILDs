pkgname=libnvidia-nscq
pkgver=550.163.01
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
  '0a22d76fa5506441ef3ae8bf8ceb28973522c691f5f41d4046a48d05aef437e8'
)
sha512sums_aarch64=(
  '98bc6b4b90377b4f84221a55129bc3804246756af82b608980af6dd2f6e86c5d1184eef1d38a48303d83e46b3269f42e6aecced1f733485f44631b5ec1eb03c5'
)
b2sums_aarch64=(
  'c429f49e4019f0913c507e387b67e474b9252f68960f8100e70d41a133b1c731fc94f81b42338954dd4f928b5ef0a54190a22c2d9ecf9f0fcbe0c112e2d9bfec'
)
b3sums_aarch64=(
  '16965a41c66ced2ca749c6bf79bdc09d01405655632dac044da4bc4cb9ac67a7'
)
fi
sha256sums_x86_64=(
  '01187a546b521f4facda169dab77f9f204c61eb8f54c1e1902280c0c8ffdf7fb'
)
sha512sums_x86_64=(
  'c24e2f196e554efb6d9601c29a5f4251bfd5e9c6e92c743d92d3930e0e3778e629fdc87a5770e54c7211706f3e986dc4728d53bfc104e51e5b3fdb035a0ef2de'
)
b2sums_x86_64=(
  '240dfdbaddc9da15f54065df2608cff35e17e41a63b5fe537525026ef5858d8f91792bfe0605ce04276381714f2137a96a9cc0cdd9859e33e6899e7c8e124bd5'
)
b3sums_x86_64=(
  'd37863d8c6e5365e3d08d6fd4454de9c8ae9efa00a2342140162d76d9eec70d3'
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

pkgname=libnvidia-nscq
pkgver=570.86.10.1
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
  '6a89c3704e14a987fa7c6a9e90bca07f943446a4dfd1d4759963e857799fc793'
)
sha512sums_aarch64=(
  '8b67e9504c8c72563860aa89937677a2d3f5fc175ebc314166d72a8da473780c872214009aa333feb27d2120f4e7aa43c8178563af22514a686f0ba26be23d1b'
)
b2sums_aarch64=(
  '87536339052f8c141b5955d984b0df080098b941d9fc9704e1da59cdeaade962e051e0c01c2e7bb44ae2e1aa4aea39261efc16c85829516a26ed11939587d05b'
)
b3sums_aarch64=(
  '0f0fd1ae031dd7dc9fbdc5bd7921b237cc2ec5a2b02c9d4dda0a0b3a92c29ce5'
)
fi
sha256sums_x86_64=(
  'c50591d3e7784a47f5aeed63993362bf946e80b9a6ee9f2c7479b2f74dd79e6d'
)
sha512sums_x86_64=(
  '47535411774b285ce3c12aa197ff8880305926acfb2bbeffc846232407ea9e659dc155a1cc2bc5befead615420b1f7a5826d4c88b9ec240fef67759cac4ec8d1'
)
b2sums_x86_64=(
  'c47210e501705508149ea6ef8a3ca2b897b524a5a36c5c4ac2989bb8d047b94900dd9463e18d573826285db8d1721cfc41b35249352eaf40caba16595661757f'
)
b3sums_x86_64=(
  '4695d9ffee798f635fe8487cbb3fed73f57e9b7f0c70aa3b46e80fb1f73dbbdd'
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

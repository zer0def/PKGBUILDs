pkgname=libnvidia-nscq
pkgver=460.106.00
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
  '62250bfbe92f8738d6e505b59f70548ea5aad6d99c8f43d8501c8e10bfdea599'
)
sha512sums_aarch64=(
  'e582cb8f7fbc608d88334a7b33e6daaf2729f0f2ad31870b1a94bcd6cd57d93f77af811a3aa62414be07f5338d6aa1f7ae2e77c3b96944504404fa64c1232ba9'
)
b2sums_aarch64=(
  '99efce56966c33059265d72ccae5ae58c5eddf059b7bed7681113fc3da74bfae7a3e45eb76cfcdfa3e8e2db1ce57980628e25319b7d1734862ab511d8c1ef6db'
)
b3sums_aarch64=(
  'a31daff6372723ac3bf19617e450c39e2255fac7459c065a2fe9571b0966eca8'
)
fi
sha256sums_x86_64=(
  'ae8e48dfb51bb79f806582c700f3b75214e62fd7b3ad3b706407fd6aca0e6048'
)
sha512sums_x86_64=(
  '9557f8834eaa8baa2ebb28e7fa1e5bc7e8be7f6e9ac6b9c5d229e2b5bc035c96a52a56fedd54317b87c6007ed688c653f3e64cc0b09412947db2a919f93f0815'
)
b2sums_x86_64=(
  '19d3e0932ba0fc6ee6a34ab5d4a0e9ac7ce986f602d2aadc374f44d8abb48f7a7a428cb06b8e31d819eba738969281489e5d04edba6797a1e0a55cc5ce57a673'
)
b3sums_x86_64=(
  'ab9530d82338053f02da211992dde8fc6957fe91f61b05386bb4496e073973bd'
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

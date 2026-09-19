pkgname=libnvidia-nscq
pkgver=535.104.12
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
  'dae93ed512be49b9412352732f476a9b67d3fd5f63ea148c568a3082d6fc4b0c'
)
sha512sums_aarch64=(
  '29cd781513a6bd1c2b19573e760d58c02561a14f7196665f98b57c812622fe7e691ff910f6a40157a4213c99b37e78b84db6bdfde15d10af0e6bd2884eb9fe25'
)
b2sums_aarch64=(
  '91a3c778e0ebbadb3e8609c1a494364f7efd04d1d966ec805ff617fe46c9577649d1e16b1bb14df799b7bc416294b00a4913a2a7b28d5f3bfc9697b07070265c'
)
b3sums_aarch64=(
  'ee12311345dc0c2a554d01478711f961f0bcbb0d3d7b69418d616d77b2c7c832'
)
fi
sha256sums_x86_64=(
  'bd47a9c666f7c0299c87ceda872a305e230e821fe4d45a0748dbdae2ed003766'
)
sha512sums_x86_64=(
  '2340ff853cbd752dbd6980f165fb1e127faeda0a151647f6b4245ad4cdc4fb6628954ff8906aaa8f57d328cbc57db948a5eca0ef2dc4114a5bfa581de1e8f8a8'
)
b2sums_x86_64=(
  '3155b26b127137b85bb6cb857a738f5dfd5d62b8e8abe6db10e638a173cb64260fd03aef7de4144e6138ecf0d69e297ac903fbc710b1ebfea15a2dc26cd49212'
)
b3sums_x86_64=(
  '11f1866ae9dcc957bd0a37c109117667478a44905b9236c94f993c2634531ece'
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

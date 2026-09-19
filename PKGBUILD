pkgname=libnvidia-nscq
pkgver=570.124.06
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
  '15ea42d7c3282b27e2e37efe8f59ee499f5ab40fc9e76f8295775ea1a3d5c139'
)
sha512sums_aarch64=(
  '88f96ef859bbf048405aa139def8fff696250507fbe2f91afe0e2cd593ff2dee60abe8eebc875cb2ba0ee129e80c8e0f31dec874b0c362244c3f926bb99e6b8e'
)
b2sums_aarch64=(
  'de1a0ae6e5015f0fec02f66f644718b8f3d6e9c5f618bfae983804091a244b38cbd799f83362f52eaa6de6796371e0852fdddadfae07dee0f1be9b0b74dbd575'
)
b3sums_aarch64=(
  'b2ddfcbc82cb0e8ca3aaaa0ff5a202f71bf5fa39d6fdd3aaf88c8dc1630d8c5d'
)
fi
sha256sums_x86_64=(
  '8af30cdb8883a358a456566ee18c34e6e3b1eb166f8bc005b2f018da9a8c920a'
)
sha512sums_x86_64=(
  '5f5721b47c357d47d2700caacf5930da960498a2b5c73529464f249180feb036115774bb80b2331146f8e44f64c109dd41e06a9fde3bab3718b470ade5679321'
)
b2sums_x86_64=(
  '724745393cbd4f664f85a04006e75854ed64f6418da07e63857ea8c462d3236f253d45b14085ac9c3774890cc94a03f90d5df24658c6967eca0a8e657f739d6f'
)
b3sums_x86_64=(
  'e4dbc3fbff5bfa8b58812d50e4cd46b7e0941aaad41ade1034c0fe939cd4db5e'
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

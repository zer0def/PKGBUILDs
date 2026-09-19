pkgname=libnvidia-nscq
pkgver=570.211.01
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
  '01752f9fd0af7e8aec21168d759243b23716e6f970789f3ba19aeefe12d12493'
)
sha512sums_aarch64=(
  '26e079058cb0c811af0e87405f915630b6e77022eee28ebb02816982fdc96be3f542f11bee0a17eb570ed1345a37885e6d87df6746ce1446652abbd32e62cd80'
)
b2sums_aarch64=(
  '96f4eac0a960aa96f7b4bab6dafc40b2c4ea29448ab9560f821cbdbf4183d73be6e3d0d4e420e2a78efd1ec0ecda1a158e8283cad260521cf50a523ec231c9a6'
)
b3sums_aarch64=(
  '7d2b47409a81fdcb08d75fc879216644edd002725ce5373bd368421efdacd7dd'
)
fi
sha256sums_x86_64=(
  '935a24b4a421430c69accb0314e6777e647f946e50057f8142d5283fc9a7d0c8'
)
sha512sums_x86_64=(
  '761947b12b2a7a798e0bf6c982819bd65a5b44159132193cee7f9dfdb89fd5313930b8e8ade33a7b89f745aca1c002b4588dc85499fb1111b8d1303fde8fa9d1'
)
b2sums_x86_64=(
  'aab280abd06a792932eb96ec0e3e9a6704c1ab66e058a6525e24faee5ee87c49be99a5d750b1997dca62215d51fdb916cec831f5a9f62b56cef60fd649a7106d'
)
b3sums_x86_64=(
  '96d9a8da77fe69934fe493153ee50cec83bce2a9d00b12d4f4e6904ca58a859d'
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

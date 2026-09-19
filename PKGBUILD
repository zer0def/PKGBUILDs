pkgname=libnvidia-nscq
pkgver=535.288.01
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
  'c2ecf3f84258c4c2065eda3d34aaef5ad14ba4db0cb598c9cbbbb2aa223903d8'
)
sha512sums_aarch64=(
  '161e442e85e9b8302e717c3d673936ee576b604b6ba79d6f7ce7bcb8dcf53dd222e2ecc9e43c691d7e79a9a0b6545bf98a3d4d2f2872cc83d2b6576f76d63daf'
)
b2sums_aarch64=(
  'c4254b085908cade0e82d67d2bab7f213eafddee25fe3d09bb48d5761e89fa881a7654f84e9d8bb8aeacfc283e12249f6800590fba332ee633cde10c42ebc542'
)
b3sums_aarch64=(
  '37856eebbc854a4e6e3e30b97f8db2ead722fb2783a6c773a5031abbc68e89ef'
)
fi
sha256sums_x86_64=(
  'dd71cf298109345a2b1976bd29e7dca56875f02e5e15e6364fdf4e0dc5a2fb9e'
)
sha512sums_x86_64=(
  '0c4f62cf7d29a1f71bf22ee49cdec737f537739a71c17bedc3e4bf406e25cd8586ba37dce8352784be0e4ddc77de1408459981c62237ad1c94e17a118de9a568'
)
b2sums_x86_64=(
  '4c16e92a2ef0ff148d8b613cbb16893da198ecc509fc7f5a59a7dcd65e38bd0252ffddc4561c716e0ad71ac9deffc2dd0ea709008836f367ce5252108444488d'
)
b3sums_x86_64=(
  '1a4798d5545413c056eb160be82344bff46a814545fa6bc736d72ac461a28f73'
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

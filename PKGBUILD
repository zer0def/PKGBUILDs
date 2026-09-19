pkgname=libnvidia-nscq
pkgver=525.105.17
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
  '5c6c0f3dd4fdbb4a064aab6a3b6889d04184a45c9702364aaf9b338cb401acad'
)
sha512sums_aarch64=(
  '1b89a325ea81a787e2a994672d57f425cb4762b4911d06e61157eb53a9c8159c5643360273b3f54fa89dd2ef93be1690f687b9bddf75fb58f163ac8d49be31ca'
)
b2sums_aarch64=(
  '88a313577fd2a9ed3b6283c5c9d852136a30cf7c4f620c13eb5a7df312224ec1ddd823b0101d6aecdc0819442cbd5b3287295e5fa86571ee1ee43597b031429c'
)
b3sums_aarch64=(
  'a483af26434ff76378c901d5672e19dea4a8a1719c657559eb4e16b5ca23b2fe'
)
fi
sha256sums_x86_64=(
  '88005c3781b86fcd5f31a6841e4facee99e8696d57b25717c22e00a61cff4f8c'
)
sha512sums_x86_64=(
  '942ee1c602db98c381a449919c7d70327742b697265727a14770102ee931d2ee8f2ec1f4458569137ecb7e3f63d598660315931581bc14d357c23180f43a79fd'
)
b2sums_x86_64=(
  '8210f831a2b633d44cad1d839aee4eceb318ed261e99ebd537c38f20fb3b176a51fe2bba50aa00cdeeae07e5975705def93cf3095c237d963a9fa7861c44a964'
)
b3sums_x86_64=(
  'b07365885cdf760b095505a786a7cbb4cae02644aec1662b82727706cbb20d89'
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

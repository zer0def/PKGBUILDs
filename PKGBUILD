pkgname=libnvidia-nscq
pkgver=570.158.01
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
  'b2edc5b85a20d8c77d38f1cfbceb95372029c989391e94df5c290edd6038edea'
)
sha512sums_aarch64=(
  'd3aba6e398f0d9474f7b3b09daef2ecf4f130b31396e087a04c095bd7588370d1cb876fbc7cf427442e69e75d31214c31d2775c9800e3aac4caffbb755921b55'
)
b2sums_aarch64=(
  '89e073fcd6db3c308f3fcb2fd415141cce71bafad6c676aad584ecae68ee23bb95d806508db984fdd32e5563b34b17f5ea57524a92dab0dd59389427b27baad8'
)
b3sums_aarch64=(
  'b997aae0a54a4da2646ed80eabde3e5d880d22b16fbd34b14a4bb893d9ec5241'
)
fi
sha256sums_x86_64=(
  'da9dee564fef0cb6ed852049822e373b7ee36dd225bc5d2a0ae250665e0a7461'
)
sha512sums_x86_64=(
  '1cc146eee366956e25ac838e2b9ab216357910692fd157e5c3cffad70e98cd2f5d9f85a5ff50491d785bd453fc3d376971224c09554695241c9a7d4528a692d3'
)
b2sums_x86_64=(
  '1b1bb9be87f06c1da42fc385d97b8c842b5a86b5de3f890f6239cf4d6db9a18da44388022d4e5f62b548f7856944b7cab947fd43dfaa704553e772792693a74a'
)
b3sums_x86_64=(
  'a18679073cf8db7a8b4f3ce4452230a9c3502bf6b05c5543ff5c1a0ac08802ea'
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

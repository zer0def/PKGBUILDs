pkgname=libnvidia-nscq
pkgver=535.86.10
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
  '158ec568402a56c063a92684c4f6fcb8084c5ea037b0153330cb43f93baa34da'
)
sha512sums_aarch64=(
  'df87a89fa49f2eb88df5b7e50af09c0d27a2a8451fb9e8b85e2c02b4f0ae2cab294372201f54b5477ee7fcfe40453b4ed64f66a363c9e6e97b85b6c7614a0f63'
)
b2sums_aarch64=(
  '2052b86b8fe08274942a326d541ac215e5e100761a2208002e7bd4d0fb1ada8cdf27e8ddb3b733f28b2ac8d189661cacc4c57489d49a5138d5bba06c6f98fa7d'
)
b3sums_aarch64=(
  '1aff0a76b6d9f50944459c7d3f66e36570f62cf3aace46c3e01a896b2f0d7f7d'
)
fi
sha256sums_x86_64=(
  'e0297bedf9e68db5b08d983cbb19e642cb298bcc1c8425d73d1727687fdb25a5'
)
sha512sums_x86_64=(
  '11034694f6e25d04efa6bae502f6e7f7abd3133e94b847c5a527a50cb06cec96be557a65ef0ee938c6adb3dc35b620121f88aed7ad41c2fec0d90c7748f84281'
)
b2sums_x86_64=(
  'bbb8d147b337f610709957a63b276e9f1e120184d1a334f89f4cb3a9fb9fd2bfa27e771a4f284b99df0411ae00d8770a3070b0f14c7c27c60966a71627f1dbd4'
)
b3sums_x86_64=(
  'ff51167ce94762b8580a9c08f063f98e77b1e9a8fc59ce207c7b179e473eb519'
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

pkgname=libnvidia-nscq
pkgver=550.54.15
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
  'bd31f2ca27a24538805ae2476ccd20edde0a1e03cb050b650f563a65859ce64d'
)
sha512sums_aarch64=(
  '617805c54ae5ed42513c12c515eae4f1a9d2de4d8b30783d8f1775be490c54629b267933eb984e19ecbae16f50089ab426985ed72e3fc3a2aa1163eb4d022e03'
)
b2sums_aarch64=(
  '2b87638da19b2ab511502dd8172b6d19fb83492e987b039a61893cbbf9af8a42ed8a3b55b9b3b50af7587fcbcdb00c6571a5eca91154b93e6cef6a3f902c35a8'
)
b3sums_aarch64=(
  'cd782762a378c2732c87d5df95839fd094540ac4ce205f5bda9386f9ac5987b2'
)
fi
sha256sums_x86_64=(
  '170788919ae9ef6a026a5a784df47e23bb25dcae3b22b1a68dfe91c41f8fe165'
)
sha512sums_x86_64=(
  'e2fabe54165988b1eb047a853befeffa048d334f55facd57e9fc331683dfca611a0bc91ed9c26792cb8e221e28d077f8928937ea0d3ebe34572d008665ffef72'
)
b2sums_x86_64=(
  'a2156ee9b06c49fbf605ba6bc818b1faf5ff6a443e816f8b2a29e59d39e64fb7b3f0063a269a806f93c313aa47dcb94090d37434f2ebc3ca941647e4e312bc31'
)
b3sums_x86_64=(
  '5c169ea0db8098ebc809ddc881a1d96cbb2ad3a0d57b7df3864263f893c9e7cb'
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

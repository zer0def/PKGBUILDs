pkgname=libnvidia-nscq
pkgver=580.82.07
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
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
  'd46718439b4399a313e35924e0c3d9f7bc528a9b1f3354ed83150dda09a614be'
)
sha512sums_aarch64=(
  '87ba98ec563e615d4a3078c11df00d79b37a70bee52dcdb4f2461ef36b36ea343c061f9b640dc0783fc5511a74b33079412dc4cb7e3f7ea80cb524573b9e95a2'
)
b2sums_aarch64=(
  '5e35b641da9cadc388bf18d53ec262f4016aec10e913695994d552483e127d7b666916ecc60dea162b7e9876310e87e24ca173130ee355345eb7f58877784299'
)
b3sums_aarch64=(
  '192b849cc7286f7718513027977f27ff71e1b201bd089f84775e597e1bffaae1'
)
fi
sha256sums_x86_64=(
  'b714e266ce129354fad02000930005c5085a5c81aa933d3f2699327f198ad4de'
)
sha512sums_x86_64=(
  '200dca240d86ce9b7acd5ee588ada2fe5ee099e87c64ae7e02c94075f199ea09b68a5501304d9d1147f84ac00eb6f513199fed80a30989521c1abe20be018dc7'
)
b2sums_x86_64=(
  'db8c822c0cc34e452e23d9e75673126a7b0677e2c89463059527615ab25264aede11b201ba664968c5b10794fa9400bd9cb7110360b611102566ebda43a2d1dc'
)
b3sums_x86_64=(
  'eb8dcc8d6ae00221d6e3f484248b4149a0bf5b405177cda4cb22cd93e558578a'
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

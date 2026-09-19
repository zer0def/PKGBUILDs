pkgname=libnvidia-nscq
pkgver=550.54.14
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
  'acc7b2d66725a89d659ac620e5003da8e4fa068c81f4392e2bc085aa96af5186'
)
sha512sums_aarch64=(
  'f0577e6895d1dd30ae4961fdbc665d2cd3b4a6288f478cc69054dd58b393c6cea27d3cfb9cfe04ae6a95a09f67c7d4b8877efbe84ea9c28d968bafec86dd6656'
)
b2sums_aarch64=(
  '5ad78ee100dc97ba3af34de2905aeae66ef0bc856cc04381a6134a9bf1cd071dd3d06f38d9ddc3c808fec8abe2f16c73c9179c4b5871eb5467e0e585c0ff71d4'
)
b3sums_aarch64=(
  'e1469c8c0949cf84fa68cbcdfb5e11875963f21cb88414159ad8fe9bd05075be'
)
fi
sha256sums_x86_64=(
  'e91f006079ea8a0432ff48c7456b0996bc214adb9f95f2eea237cb0bde94acd2'
)
sha512sums_x86_64=(
  'a8272a587abc0da11d74970f85918ac1b3a1934b51a6f7f8345b5821b733fe5a09aee1d6f241ae8dac7ce640c426455080e1d83898a3f9ef3c68b21c03f0d423'
)
b2sums_x86_64=(
  '79ddaf7b1dcda504f37f5570082167b483d6498fe7400e942d1641a13e418c3574ce0b621a0aa57e040135917491ae913324cc136c7e5a91f643c76a7b9cb78c'
)
b3sums_x86_64=(
  'be45334262b7fbe7ab31339f26b974a499026c3a838973ce8e8d4d8fea6c4de7'
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

pkgname=libnvidia-nscq
pkgver=570.86.15
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
  '42388a7db83b9739aa51827edc67e833e7cd99889147056b1d1bd4c6d47f165d'
)
sha512sums_aarch64=(
  '828319954d683a96a11041f77eb1197c1feeaee7eedc343499fe794640209873de8a14615cb061f2e1ce066b467f1b40084b5bbc9473ccfa18d2f3254b13ccf9'
)
b2sums_aarch64=(
  'da2fb3b016f21044c497f0f1086863a47529ef2b65910b168e5c9eaaf5544c033e5a7d7b3c384becf0ea2dc2671f82434910b4a14c09256eca72789c31da420b'
)
b3sums_aarch64=(
  '9ae7276735a7ec4ac4f108e8ebf8da3d7006d6938e7907b2e038a44538da90ff'
)
fi
sha256sums_x86_64=(
  'fcfb2e43e09b3682422add043b5f7475e2adc771c09893d3c251aa1601267667'
)
sha512sums_x86_64=(
  '5f63fab39768f81aab0570b1cb5909062641876416e871d12b444e801875814c32701997d98815143f41889395aa4fd3ad73624f3e16909a7c4247f8325fe43a'
)
b2sums_x86_64=(
  'eed832a18d34a1c1023530fe6c0be50371467872995f92f88b44649b75f025ae895b8f9561792438f273c8307cb310c106b2e2c43e3db5725cc24ea11cbf4fde'
)
b3sums_x86_64=(
  'ed6e9ffc78412c61bd0b0c63d77e3ea145ddaaa5130b30f953430946f69a9f18'
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

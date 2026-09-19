pkgname=libnvidia-nscq
pkgver=580.178.04
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
  '25eed29776a0429ee35facf62d1abef941097c6781641ba5570606613d796e43'
)
sha512sums_aarch64=(
  '53c6418a77ba25dc4a00ad9eebc1f814f0ec36025e42f625bcb2f86093156f063948ed5384cf3aa419a1ad4a409792831998848ba01ea867ef6e1bc6a53324da'
)
b2sums_aarch64=(
  '113e8185da9eebf413d98b9d967045cb2d039a2e7f57dd22b857dfb48f380188dd4d1d25c492a6d525487e7208daad3cfb9288e1ab157836a17a7baec0362506'
)
b3sums_aarch64=(
  '35545ffccbd197abc7196f7fe1ea6c16a2312c98b7f5db09376234455616d14f'
)
fi
sha256sums_x86_64=(
  '924c4ed09f01a04d16e9e7c0932d30a03d7eb20ad30af269f95ebc32d9bc6c84'
)
sha512sums_x86_64=(
  'd3a50f8f326b0468674beee4ffb8054d2781f123736169e48feaac5cb7bb323f99e43174b5f3af08b68d6943ed370d99d253ca1df8970f496de626646284c3a2'
)
b2sums_x86_64=(
  '979b3fea3d847d7a5041b72b1ae512f44c783ce25f4e05ef9fc7ea0ede1188c0fbf2e78e6520f870424df2016239c5b45c99948e9493ccde09c5ed8aa721a3a6'
)
b3sums_x86_64=(
  'b5eb5657866cddf1eaa31888bb6a1b71705829fa7572a4302ba871449122dba6'
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

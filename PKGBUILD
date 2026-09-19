pkgname=libnvidia-nscq
pkgver=535.161.08
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
  '1e95d95465bc224586b61a6f84ac64aafadad85237adc7fbe7c9163f363748f4'
)
sha512sums_aarch64=(
  '81e5eb49112bc4ae5cbbef8fe962254856fa0eb078a2fa61d8f4cc4097582f2b17b2b5d88e3e7b16fe30f83aba6806aff4c41141e07c126cafb30cc7ef98625a'
)
b2sums_aarch64=(
  '5f9fc09061598f805cf60475385c16539969b379f811a9d93b5c9d54177009336ee13f23635be166ed4ebc5e374ae9b45dd7296f027c5b585ea6e58f0002c474'
)
b3sums_aarch64=(
  'b425bacf30807ca24603ee77b260507f86d365280bd475e854fde51b8650cfdf'
)
fi
sha256sums_x86_64=(
  '8be73c435e6772d292b4b5821d6fbe1c18385cf8c58a873008cb3314c767ef6c'
)
sha512sums_x86_64=(
  '8c2fbde630b7c2d9a77dc55a88d0ccae7dd6a14c108fd8c89984a22bade34e77f388df8c9e7ebc52ab192ec3fe4f83efd413d6907b8398a67368444c81bceab6'
)
b2sums_x86_64=(
  '18233dfd574719f06caf03933cacef2c5ea72eaa83a8d6cd6f61f540c837ea335524befe5cf0f8b986638f76a6e61810ccfa0870e5b7c57c7ba7313f1c9e792f'
)
b3sums_x86_64=(
  '36da3687addfbb297025514775771d427065f1be018849536be3436e8e7b1859'
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

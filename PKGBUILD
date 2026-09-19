pkgname=libnvidia-nscq
pkgver=535.129.03
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
  '77ea5a6ac1e0810de4854006f39a858a6eaffcc90dc85613e62d44a6e1027e93'
)
sha512sums_aarch64=(
  '891f51e68029c3177586156473e842cabf013173b2f9e45b1442655b035836a25192eb9aaa588111b27f6272544af9cab1c6918356022eabb12a3f7ec9a4b741'
)
b2sums_aarch64=(
  'fe317c8b28c6d75de0e20d69064da709c5d03c4d59e7239c33214d93e1267752d94b66a3baf0b554fcd78a86e7da6fcbb99bf2ba9bdc6def67543903dd74c5d5'
)
b3sums_aarch64=(
  '0efcf93e5bd201d42baf782f908baab1cae73f178bd9e3334c5a1bef5d15072b'
)
fi
sha256sums_x86_64=(
  'fbdfd40505befae3a4b2874f763c96f320aa9ebed039a2653382d869dc7c2683'
)
sha512sums_x86_64=(
  '67fae3e579530d05e91f991383a5d2d1ae67735df6f09a271c92aefe8b4b7c79e2a340305cda7cc3bde64cf79eb3cf658b2002d6ecb2b57869cdd5b130763075'
)
b2sums_x86_64=(
  'a4ed440769d36eec5230fdeff8cb14a703ff874067d129828c74d79c4222b4fd3cc02ec30dd6b1b2ccd2d7034011e993ae88dbb17367cfed778b39ed09af2da4'
)
b3sums_x86_64=(
  '012d04e5c0532a7bf10491652628ce77c0b6e7e52b7287f9ca9733e70d330e1c'
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

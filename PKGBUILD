pkgname=libnvidia-nscq
pkgver=580.65.06
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
  '65f6ff10af2d90b0fb76f778e1b82a6b2215c896df34a769486bd77cd7a4d7a3'
)
sha512sums_aarch64=(
  'ab593e4e773f40f62ae84b45b908e62764c0eab8a100824e97a639ef603fe0f4d426a3cd4da79e8fc2514c49076a25e873546232306ccb630ef132f53e0d60a6'
)
b2sums_aarch64=(
  '41f832953aea9d3783195fc5d1fa30b7a4d0db6bcd73fd8471fd59a77157a9457b4199b3b152a51a098a78de416fa829370725e720e769345fd35b997c3561fa'
)
b3sums_aarch64=(
  '0ff194ee823fba3f12272d81e420632f4aedbc096ae3f13b6232bb5e25fa605b'
)
fi
sha256sums_x86_64=(
  '2194f4cfad5516f79aab883b29d5028e578ed4b8a825bcd0fe51090b6d23e61a'
)
sha512sums_x86_64=(
  'eb4085b1e0d8e249e15140b3530d07c78e7524156fe0c984f0b342c0949a1b411b2980f718a46350f1d224d69b13a3d060f3abf7a8ae8f8eecf59dc3c36c743f'
)
b2sums_x86_64=(
  'c1a51a0e30e47f898ca6080d51bf463ea270a5697bcc0f77f10acbd4629f07363926201abddebe4de174002e5e1de3414a52b97ee0ef2ebd94f841ae158473f2'
)
b3sums_x86_64=(
  '5f2225b15086429f64144bc86b66c8c44bbad266c934e751e4dbd6bc1bd4af27'
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

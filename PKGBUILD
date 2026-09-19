pkgname=libnvidia-nscq
pkgver=535.274.02
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
  'cef15784b1a39fb5231e385202cc82253cbc9aea02ad8de9d28c2db41cec906b'
)
sha512sums_aarch64=(
  'f0f2d3f855073984337349303c182c663515e8b0c891d6388a3e4df9e300aea8c24e8f317c8450911b81f65210a2de5b12afb0402b17896538ea59c50428312d'
)
b2sums_aarch64=(
  'c88ddbb9eaaff1150849eb3da592316d5623916e22a43553e4836c2b890c58ff0a61154763ee401ee7c6f01a8f81db5e922a498a677ae994595e8f327e61eb07'
)
b3sums_aarch64=(
  'a4126930f521e3892cdddfe6b2a1fb8d72e8ba5edf9e7c66078bd642a27029bd'
)
fi
sha256sums_x86_64=(
  '887d6f1ec5b44612c2870591b063caf5bea6ffd11b9a2a43a0cb6d9b7c9805f2'
)
sha512sums_x86_64=(
  '4ae92343a0b3ea927cc63889bfcad4fc5b7439a22c2c30a59fb59bc53b73bffa14f4b5465fe3485113081f98dce1c022559ecd66c1ae0b08efe1413151787a75'
)
b2sums_x86_64=(
  '3243da11f5d1fc8b53009cea1b0a92987fb3df2febfc153b9be51f13ef62b5090513300ea02feef3527625529437048e55aa7b56e1c0b7f266fc1817e2e9e6a1'
)
b3sums_x86_64=(
  'e8bb3b9e2f829cd223209a256229597cad07afb375c60ba9a1ef25f419aec501'
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

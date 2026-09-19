pkgname=libnvidia-nscq
pkgver=550.144.03
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
  '200958116b133faae2597e234668b58d0e0311902674e4a0644535b0094a8735'
)
sha512sums_aarch64=(
  '9766a32160e2b770df7b64d697450a2270558ed5149d661351255b87247492f13664e977b0d293cd9fbb8c4c546c6f7ee4d39b4dffdfe72d819865dad01fa89e'
)
b2sums_aarch64=(
  'c42014ec7eb627522178d6e31399d5d461c371f5004e0a836e6d4bbc492c7362153a7d97d89a063bc325ecd4b3e692a7cc2ca137ad3afe2e707828140e11b930'
)
b3sums_aarch64=(
  '6cc5fed2ff0ac1382c8399b14ff3bc5877d59ea28e8d4ef706add638cf6163ed'
)
fi
sha256sums_x86_64=(
  'fcf369f4ca93525244d8a9e960be57dc91852e9c83f60aa256ccd89e54ec3c11'
)
sha512sums_x86_64=(
  '17dd97e6cc86d7cbcdbffa5a3e1c84a9584ffb37bfab95e109a680570cbd59cb12224fb078563c27472daeeeeba825ac0983c6b77966bf211664cc695aad9dc7'
)
b2sums_x86_64=(
  'de0fd3d3814c5e829d5d92c7c716b86c7d97070e425e3c390862c10de0ea99bfe698432c0b5cac394a70915ff971d7b34ff7d1f62085c1c440d26725994155e6'
)
b3sums_x86_64=(
  'a478d43a252b8c3bf51f33c14e6eee6835d494086f9b0f1461b7a6d6697b6e5a'
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

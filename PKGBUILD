pkgname=libnvidia-nscq
pkgver=580.105.08
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
  '6ae1682169a3f10e2349487c0aac6c08ab08be2e7aa5c3de269d52bdc5036a18'
)
sha512sums_aarch64=(
  '440fed88e56a864d07fa1aaf8e4c7c42f92fa195da9d19ef5925a873d43fdc5b0ace59e933d9c863035d70bed68f2ed939315c3ace54e0cd64d78c84c409b886'
)
b2sums_aarch64=(
  'b398ec7b7e0b29f15f19128fe3f611e1a8ca0b513375f4c783bdd85eabe11cf717b1aa74a971e23d58f52ad8dbae12c09fd2a91da703228f7c3dc2f3a31f657d'
)
b3sums_aarch64=(
  '8cd65176068dc80eb9cc46e37d7b007be3ab438682f17e3bc29178eaeaf07889'
)
fi
sha256sums_x86_64=(
  '71086dc7d9c97ac20a7d14de2a119e3b2ee97a08da452d63c2c4f5a71d80e19a'
)
sha512sums_x86_64=(
  '1b7bebf8dfbbb3d49e74876341e7edabc8fc2cf4460a00ef30b74d1cdeac068cb276cf1d361f5e0ab0f5df4a686a53ea574242aec251e99ffe4582f663fd8a7d'
)
b2sums_x86_64=(
  '5c5b6f716db1d965887d71f50fe6902b111c80168a9818355bded172e309b5f3fc379fc0ce7c294f4c11343876c9d08e1234db7c6b03b13bb1091c1a12140f6a'
)
b3sums_x86_64=(
  '073cb80ba167a2019ac9cbfd33776cecc5dd59079df54875e400612809a51d7d'
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

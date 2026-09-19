pkgname=libnvidia-nscq
pkgver=560.35.05.1
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
  'eb370da83f88b63f0b7dae2fa94c522e619b9132d4794a0b2f2182bcec5b01ab'
)
sha512sums_aarch64=(
  'e8d63deeed772bf8a4c87ee18245eb8073f35088513db41997cdfc8eaecd38bacf871e36eaccbea702fd3993d148dccedb01f9e0cfc39e8a70017c6adbb048c1'
)
b2sums_aarch64=(
  '956bd9ebf8a66bc74ef85b58aac639ba0c5936451c592fab8897d3a9954ce1d81aae93a34e2b53391237b6405c879b3b7fc774f11af0625e45fcd3d1c6e06710'
)
b3sums_aarch64=(
  '7cfdbbdf2f51e61a119a79add7934097f9f24c53745a29d258e684a06c225d79'
)
fi
sha256sums_x86_64=(
  '5b181c995073ccc3f4afe430c23ec13ab1b6025a40bfa199d29896c00f1eed77'
)
sha512sums_x86_64=(
  'b181d654e9396ca27ba5349922212ce0a0771208cdda14d6592deaffa4493e2a3d6313927cc4b531806a40ddad4d77c364fac21b124de6c3dda273cb487d9495'
)
b2sums_x86_64=(
  '9ee045eb559fbd71f7751baced92b2c0fb1f77d4981375b5a71487acd3bc6f7fca2f408d9f255de6857c7b622ec863c05041a4eb683aab85c44818beec6e4952'
)
b3sums_x86_64=(
  '2d97135e992c39443906fc00100507f13516fb6caebf841d0a9e8c6ab0039dbb'
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

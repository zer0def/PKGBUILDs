pkgname=libnvidia-nscq
pkgver=570.195.03
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
  'b9cbf3f5747af386fcd6ec79eb02815c15b7358352efbb5dd38af45d269419c0'
)
sha512sums_aarch64=(
  '112bb5de2c9aa25e73ee987daa1b05c638819dcd2a08a0ae5f1aa7be99ad74e037e73c8cd6928c542bcacb6bdb1dd782ce6bcddcdbc85efc98bc185a8a2aa699'
)
b2sums_aarch64=(
  '5dd5ace23a0eb06df97a8c5a23ee0c7fa5e8bf5a7d92b064c915f3048a8ca696d1856f2c532ab775492a2610bf8094fdd755e4c31cfee18b0101613ff6067e04'
)
b3sums_aarch64=(
  '049bc7563219d35ee73fa89401cc3694bc793622ef885a452476432c5cdb3d1b'
)
fi
sha256sums_x86_64=(
  'b30bc9d0c15919f8c1cedbcef2f640af21216da2390c15556e5fbf4fd9ab89ff'
)
sha512sums_x86_64=(
  '8c1a6f602ef3be5a891acec5a0981c4a31c1561d104c72371fd51526f6909e72e5f2ff86609c3099617d1072689aede05f5e7c04822360d2ae860915fabf16bf'
)
b2sums_x86_64=(
  'a90ce58af5f7b87796c7f54e1d69c857ac2dfef157547e75a530462a9fad1ea05af1615cad147ed355e0f432bf86f75665d1fced1c9939c4136166e2e6efab92'
)
b3sums_x86_64=(
  '00a0fe744845c611d737c54f10f82af2b794f00a3df831891e98a4c2ffd70087'
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

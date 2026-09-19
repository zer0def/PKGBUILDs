pkgname=libnvidia-nscq
pkgver=520.61.05.1
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
  'cc5a4b70beb4fc4cbe8c1d74d8e309b1b6db117148988efcb39849b5fa2762b7'
)
sha512sums_aarch64=(
  'd5d747324df659f5c3d30c4c171933b3b768a719a2c71096f7191ea4dd8ee33d7682ff82502f6af53ff505533254c692ccdf8d1aadde00ff69df9992286d0c18'
)
b2sums_aarch64=(
  '86ec0e4abcad70cd6aaacaff2ba24a82874f499163f3d629aee8c848043b1f86608a80530b8589ec9f059293ba0f4f787943d170897af3bfcb6c3c8a71f59071'
)
b3sums_aarch64=(
  '13ec3d0a5628569d4a19205b543e20b182afea841dae5c0c993d6206d9921375'
)
fi
sha256sums_x86_64=(
  'da22c514cd5a85cd1308b73d39f82ca39abdf15df1363c514d619727598151b3'
)
sha512sums_x86_64=(
  'f6044ba210bfe33e30120dccb45ac035938804eb2c696b516c4cda939d8a0ea7db90d29164c1c6b5516b718040f3c146bf7b58c44db9922feae9ce97ada7d096'
)
b2sums_x86_64=(
  '9fbfdf7f5f13a73c82cf4e1dd4739ae912df3045a3e37de8b7325f5cf0997bbe00cf4ff50fbf12b6ea81f2309e5b835c628d31a50344630ecd0ee73af447ba6e'
)
b3sums_x86_64=(
  '7ed6f0a464b83a45aa9d281f83e829d0903c7a216fd81b3a11cbf945c79317ba'
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

pkgname=libnvidia-nscq
pkgver=550.127.08
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
  '4548782a3de71ff037471960afdc7a04002d765aea25f5bfddbc7172b56b6c06'
)
sha512sums_aarch64=(
  'b0f52657ed10a609a00281f2ee612cd360c1904e2d4bae488461f4b67a3ad0ca4bda4e7554a1e0349b802533681647843cf11f7782b9dbfd64e34831bf2074d9'
)
b2sums_aarch64=(
  'e0ec794b5c4d452e8db7774d8429e2ba53ddac09ebde0217ed4103261c833e33e76e7772a85c14f5fb300df521457eb196fab0fbed167992965f24d1008920f2'
)
b3sums_aarch64=(
  '3c3b18da101441fda5e31ce9ee53cc2e9c3299d960cec7ff276661181d7a2a3e'
)
fi
sha256sums_x86_64=(
  '8a33df685e549e5e96872300f510c6139ad6e252ad772529540d7fadec74b230'
)
sha512sums_x86_64=(
  '99cb9dfa79ec735d6deed0e9193f97868b1f151e663b90165c2ec41b045ee188b18fc91ad14e2e2469865da26a004d0a3888aa2035a4d3ee5a291dcec94f9674'
)
b2sums_x86_64=(
  'ce17a5058fea507d23eb8444b6e216e5a011ff09976b2a3fafcf1bfdd7fb809828c9eca0487c55614e381dcca40a5f30ef8f15da33c62eb652c6d7cfb4c0cee4'
)
b3sums_x86_64=(
  '47e17d4d9a739702ebe9b2a32630771bc8d87c56df16e44876978a3e4755c850'
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

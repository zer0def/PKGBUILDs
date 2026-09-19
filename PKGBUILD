pkgname=libnvidia-nscq
pkgver=550.127.05
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
  '6349ad5971cf202d080521eb52e3ba15e77d1ba523397b0f00c9231cb0723013'
)
sha512sums_aarch64=(
  '70cfd3b854357a53eb93448152e6013f1a2fc92218b2b87f08f5ad867a9a5db0c28fdc0369bfab1546375fc2a95242bd97d8101bd2c7fbfd83df0afc6b6dea40'
)
b2sums_aarch64=(
  'cb9f90bf54e1ea85622b86da26a46d69b12555eb7a30634480101ef8cf403ceebe9e8f14880ee8d5e32e1936da9ef4bb331652bd95cafe6eaa03eaa401cfe8b2'
)
b3sums_aarch64=(
  '84ae98d22e5d2abea9f31320c65ae30cd97bc79cc340618e03e73b5205d2b4f2'
)
fi
sha256sums_x86_64=(
  'd1fbaa3662d287fef7f758786803c903e69d7b5a3549b87026e327eb5d9912a2'
)
sha512sums_x86_64=(
  'a541378a25199be3f16fb00131faa2441ecec0250fb3db0b4d40981a4491eb57d2f806c275935d041faddeca84cb94509a3d01666b7f9ca79d8fcad51ed47127'
)
b2sums_x86_64=(
  '31ea7505f188d120c358f7c1b04e5f25deb43fe86ac714c5ab9ae00f4ef9e20e5692253acf8d09ce467471d70bad0e20ce778948df24bc9a63c6c2e1ec863ba1'
)
b3sums_x86_64=(
  'c956d06824cd349add8d69acc5e9f6751c3728c0a266a6ba8b5ba711c6d28b4e'
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

pkgname=libnvidia-nscq
pkgver=595.91.07
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
_ver_suffix='-'
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
  'a54267d24fe91f1a1e27ac1aed723bfc198dbfa4015efb948222f5f5cff45169'
)
sha512sums_aarch64=(
  '1f5f24bcf1a9f81099f7ba7acb2f6fb51652483b42817fba7ffdb61494d3075e6e28525a3baee257ab7ff20a42c76ff9b8cade8f1b199d14fc400c657c5dbd15'
)
b2sums_aarch64=(
  '0ddfaba784c369b9f05aa8d69c1590d6ebb5eec478eb92aa86f1a0e691c212ca09d2fac27c47467e99211e7cc0dfaa172a18d95ca417963e68940300204675d4'
)
b3sums_aarch64=(
  '28851c2490e4ee224cd623f64c82c1397ccbdef96037ff7bd2b79758e4592066'
)
fi
sha256sums_x86_64=(
  '86fbe59adef7696b2364ecba50d928d3e4b266113fe155cc6461387d9ba462dd'
)
sha512sums_x86_64=(
  '0d4e53b54dcff9d5b477369b051093420137b57a4b87cfc19f4d2aa864f9fe11309c41b86859b5c293766b2a44d06cd3ed70c0c11b18da80a3def1b4e299ae8b'
)
b2sums_x86_64=(
  '52becfdd2d7f55d5c350b07a64ee7151b16af76f7669944bb6f21fe6a3b4934b3732389e57ffd533ad5cd95de79bee4d0312ca9648f2b03090fdab3e86763e4d'
)
b3sums_x86_64=(
  '4013b096f8b62157f2f5b2420e79fc65f30734431645538cf8f125440e52327d'
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

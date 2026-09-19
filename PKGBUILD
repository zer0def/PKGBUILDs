pkgname=libnvidia-nscq
pkgver=550.90.07
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
  'b9b1e0451e15c56909869c1b09bc93c8d2ee28cb65084b65cb9dfd9ca4957f6e'
)
sha512sums_aarch64=(
  '95a212e87d6e248f56f99579c28759e62f90cd6cafdfac62889872ab9852b22963e9d3a245746e336c3d890ce483a3877bcbd2479c36098fd0bc9e9ff8e0d52d'
)
b2sums_aarch64=(
  '4a386e795fcc4e4a6d9dc994f1e89dfaa44e72a4efb9df3d28722866bc77450b1fb5a1d885a4b8562907f64b510f6e35d3eacf042a1164a9029e10cb8dd329fa'
)
b3sums_aarch64=(
  '159276b32b5e04fbc8f7e9fc877842bb45813869d336ecb985b5585e9a74b5cb'
)
fi
sha256sums_x86_64=(
  '3402ae7324ad9a8c424e157356ae341191c277cbf1ab0f0193b88b1db17e0e3c'
)
sha512sums_x86_64=(
  '5f0063347801a280fcd67905cb0abefd7d84f5b5c311d10f944606c92814326da8b8daeeeb10e1072636c8e5f4348774e7a63559ec423a72dee3960beec1a3e7'
)
b2sums_x86_64=(
  '20b5df0dc1eb481d6c86521799b95e03d6b2ed7c180311695a434270cbe901b2c7117cc246972b8c88f23626cae565e55999d1e9293789d1dc99b0fafa80091c'
)
b3sums_x86_64=(
  '2927bed40ceb6d95b8005e0d337bc8217c95c18e7e782553b55daa0d348e4a46'
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

pkgname=libnvidia-nscq
pkgver=580.126.09
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
  '528da64bc3afa8c5986f9cf737235e50af657b17453d21ac1857d64f494703d9'
)
sha512sums_aarch64=(
  '129016a4258d5faf1e41a08669cf8f481ac53205ed0872ced848b66b693dac6b0d12a8dd78bc2f1fe7ea3951a98fa62d9cf28537af63c01fa6dfcc1ced4ccfd8'
)
b2sums_aarch64=(
  'a68f598b3aedf89623362e7edb831fad2714fe0bf8a054dd5752901886b43bd47c034857a25bf8da84b08407c67c80001cea5ed9825e761b3c28e6560dc3d6f4'
)
b3sums_aarch64=(
  '74fa8a4fd792306277236b2d618c90963275da5200d775a3e1a68c2d2a9594f8'
)
fi
sha256sums_x86_64=(
  'c74a74c51b149fe35d0f2618da485066986c5d3bf7f55263a5626122975b71bf'
)
sha512sums_x86_64=(
  '724431b60072921bec60a17473a0620035122c50d2e68bfe7098e9b035bae1761f414ee53e3d1c8dddc3638416374d684a6199f9977d64f012ee7a83508e9628'
)
b2sums_x86_64=(
  'bbf9ae14b26b6d77d6ff10cb88eea1f7af930b90bc5397f5845c0557084eb6eddac0e5df889a339be5e95ad95d5a764e852df9e9c5abaedc5050477df1256cd7'
)
b3sums_x86_64=(
  '05c6788bbcd8e35e5348c81e0b5276adc7f851bd720d49cf7cc2e81eb9f38e51'
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

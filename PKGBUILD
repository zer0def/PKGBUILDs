pkgname=libnvidia-nscq
pkgver=565.57.01
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
  '3cc01868181d3588ea08662ce0b016553f3c4d456428486e034be1f2250ecc08'
)
sha512sums_aarch64=(
  '59bea0e27ffc199fd5860e2d42039a65c6a59cfd101db16f99dd17a6b972f9d7b5be728dd64672800f72f3c234c71262a3dc094ed6a1f77ee812e49d86d3b50f'
)
b2sums_aarch64=(
  '9bf08c8f3bb2050dd7d7cf92df46fdea25ed7ccfcf8fe588ebc23da9128df81db1364155414dfd54ed493373a6aeac7b2c3e1042fe644f060d775eae81dd38da'
)
b3sums_aarch64=(
  'cad261f4bbbf041c643d661294f3287a52e0623d287b4e0c61b7424d29965ec6'
)
fi
sha256sums_x86_64=(
  '29240973b14b0e847ddd65d05bcd653d7671fb025c2dc68aee2df62c3d8e9105'
)
sha512sums_x86_64=(
  'eb93e6195b59a88b534cc12d68e7480448a3fe12116b5a12e96c9bbaaae146c92746de81f9f6dd84770265ae6c60beb40060d77a984afdb9c1a1596d421a9393'
)
b2sums_x86_64=(
  '349eb2bf5b0f262730d0ce149c502d690005d0738bdab411fd9bbbc2ab3091d0af56a72bb7e91c20023f9b22b08c0d9091b0c83e41c9c4bed3c875a2fb265df0'
)
b3sums_x86_64=(
  'bfd0492d912128076a937afc76aafc6a797ca0e64a32866e4bfe2c9de70804a2'
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

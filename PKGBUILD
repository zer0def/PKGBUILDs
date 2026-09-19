pkgname=libnvidia-nscq
pkgver=525.125.06
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
  '6f03e065daf68c3725971fd8d44bc39e58fa543938de6aba4f86582d9752b4f5'
)
sha512sums_aarch64=(
  '00ec56ad175ee64ec1160c21200324f6dc613794a6c4590c266b25aa7180986252b1ccb2639fb38c450ba88ac7d59903e4a01d16a5c3b0771771b456ff2ee370'
)
b2sums_aarch64=(
  '56e481babc88fa35d8a577492bf5160649644ce8e1f055c78711dd253e428bc117c8d8f9cbd862d71c3739767543aea9852948a81608669e460236e33b30b337'
)
b3sums_aarch64=(
  'c30215a4ff5e3734d022f104d742123a0fa21e0933aa9b1cb33551eef385da55'
)
fi
sha256sums_x86_64=(
  'c217f1142fbf65d0a2d2d441eaa581f288734d3849b57e6849031349d4d14fb1'
)
sha512sums_x86_64=(
  '430c225cbfd219d740d54a70f96add2c4af781dcf7b93c41db33e8e58579ada12b0a744e60fd3f2514cc1073b912685a70512e05870db6b165d30af3677c54c8'
)
b2sums_x86_64=(
  '22ab5f8beb0f2002993c4561e4294ad311d879359ddead860b4f17414c23add0792a68a69010379c631dbfc4f7922b93c46520cd95fcbb2d0262664b0d797829'
)
b3sums_x86_64=(
  '41493393965dd567d8693c4bce75f40eb85f4ccb3855273e25b0bacc3a2f12f7'
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

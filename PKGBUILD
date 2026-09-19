pkgname=libnvidia-nscq
pkgver=590.48.01
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
  'bc160a9a4ec62f3baaaae5dd1e40a6ee83daa17bfda4e9ebc8cd46f8fbc12b9a'
)
sha512sums_aarch64=(
  '5d68b6a9a79f8101720b6fb6c2a626668bf07750ba600d1c79dbff35d149e33f9818c4f55863cb41d63f98287f6b09c9c498cd877fc4223a6c8e6e28e28a7d61'
)
b2sums_aarch64=(
  'a8365288cd6b4c3e41320e38701d7d0ff511a70ed3261b804ea6e02f810bec670c2d9e0ddc22280e0129bcb3b16a98e786c684b07623ceeaa36d8ba71d4fd2fb'
)
b3sums_aarch64=(
  '458e2287e3b5c9e678d8562c96b22443bb73dab76ec5f4bf955f416c897ff17b'
)
fi
sha256sums_x86_64=(
  'f6e6f85ccd1bf0c53db291093d055dc6331b0049e7096741a115a1faa59fdb86'
)
sha512sums_x86_64=(
  '7b3334c9a166f77d785b458e4296d18bb2a9024273bcff86d5c2652417384ff38166a8e91021e18e5fc31de862d0e139fdf7d2abbfd222dc9cebf49b50ec2f61'
)
b2sums_x86_64=(
  'f05e823106c22563e191c201c110fbe585de4a5270a347fb20486349306daa6068138a31ea25330e925b9f2f6610b73e7ee2934e608c77ec30c1f034f005935c'
)
b3sums_x86_64=(
  'bf49112156f1387017abb9cff763beaa387ad7783150f0cf561700a5b12c5ac7'
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

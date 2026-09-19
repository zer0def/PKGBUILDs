pkgname=libnvidia-nscq
pkgver=535.183.01
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
  'a7afda05b4be68c34c472c5e26106e737535e40653fd39be70dae3367dd7987e'
)
sha512sums_aarch64=(
  '97ac171431a78b0636458fef12498e41e43b764081cfa21bc74615cfd7e5e9c94971a5c2fc0df96880e83ec07d57db7a0639ccc4d3bb3c5f79198e79161d8d76'
)
b2sums_aarch64=(
  'fa7711cb690bdc9ad06de50d2f1385dd659abd25179f5c081a97db1eaeff9afc128419afe1fc8d2c61d43b86af67f1cd568896d18c330f64a5f2aaec2d57f40b'
)
b3sums_aarch64=(
  'eed6f774738a8ed5229cd2ac2a622ecff75acf1fb69f6c1aac2a3123a3e0e539'
)
fi
sha256sums_x86_64=(
  'c45945c1701ac0a9c27eaf7525c8aecfb51a8707f00945f6018740f28b401a43'
)
sha512sums_x86_64=(
  'de1408e69dc601d8ceb3173e08a640b774af251d50e7f95b4d94a2cb5467ea95d85cc713a7a31c1d2c6c013fa6eb8c72c0c637a19eabb8aa07f774c47a5e2004'
)
b2sums_x86_64=(
  '91a19bdfadcf357d69ac15b98fe1fb24d15a75e7d4e7298a51944a4b0bdc46315688fae832f631beebc214e6bb9e8446844340eead53581d64c4d85723c87480'
)
b3sums_x86_64=(
  '5c6070a4693da78534d0a7f1bc51c313b458ab09973215eea2348ccf8d7b808d'
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

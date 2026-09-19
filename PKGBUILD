pkgname=libnvidia-nscq
pkgver=525.60.13
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
  '8a5c56cf99df931b2f7088e3ad0fd962437b0dd5e5b66a8af3ce692c86be44f2'
)
sha512sums_aarch64=(
  '1697ac8804be804071a8d9b441fe4bb0401d5e3a3f7f01ae8545170d1c732421cd0e0ca3c15fb7f6c794330b49acfe2130add301dd64aacf710fece03911ccca'
)
b2sums_aarch64=(
  'e1162b41659b0e46e5f302168cf962fbe1bcf149f3a31affcc7f155151c4021a4e9b00ed04f3e2fb9ae1c3ead2c072a95a49eb011c64fb34729b87a6d76b6ec6'
)
b3sums_aarch64=(
  '69febe066323375f01b1c2e3ab6d6b81c3b73c5d72f6dcedbec46bd89e70c4b7'
)
fi
sha256sums_x86_64=(
  '1335573917e02a0fdb032d2d959d3a82598498680a7aa3a32eb1059db75bbb54'
)
sha512sums_x86_64=(
  'abed2817bfa9198bdf2580d83d0cbe8f714ba5bfaa6ebde43aae59148371bd21e3b17d5cb08978aa4dca2a17c35342011b2b3be277ff7fd7bb4bca5ca5d7bc22'
)
b2sums_x86_64=(
  '9efeeb0ba18babcee40b62222d6c3d88b1ec4f4ff13d07cce6a19c03a64f331c3ddfeaea00a9f2bdf7bb110c95b7d76fbb3ab96253bbfaca6e135d79b62f17a6'
)
b3sums_x86_64=(
  '93593af4792e3b666298435136e4fcdad89bc76f31121a867631d4b174d3533d'
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

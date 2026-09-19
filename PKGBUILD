pkgname=libnvidia-nscq
pkgver=580.159.03
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
  '6a8b2f79666ae1da4b29e46417122bbf58a37191a7d3ee137abbdd7724bf8133'
)
sha512sums_aarch64=(
  '72bd514e353985d399f8677fc5dd16d84ab90d0fde2d08eb37db3307d3f3732eeef0d3309c41dc212f2676050921d28f9f4521b68c377cfa5721abafed51993d'
)
b2sums_aarch64=(
  '42a43baa978133aca11848f9dc15bf88424e39b84fd5a6581cd37b556ceae856c1443b6eac53ba6bd9eea0b7ead39b63958a13bb670087704bf2db06e6baae27'
)
b3sums_aarch64=(
  '181c91fb1414eaab402aaa885fad3150f87cfe4c6bbc96880abafb2af7ce4c29'
)
fi
sha256sums_x86_64=(
  'd4523d00288e199cddafcd9b8e1374633f088f3c08e231791ffc7fb6443847f4'
)
sha512sums_x86_64=(
  'bde20a34c2d1dc97b2d8c7263a94a153e3f11a107ebcfb0a8c1e563c377d1829f331b797eb4841e3509e1eb5184ddb247092cbe046f2201d9f2e289bdcf76dac'
)
b2sums_x86_64=(
  'c42ab6e30578dfbc498fe303aa6fc0d326006350c17f7fb44273e98d60f0c175d06567e31f262c64a76d765add1cc78bc39ee99fcff267a965520fdc0ddd80be'
)
b3sums_x86_64=(
  '60b8689d1d470fae1017a30ed67b26d0bf98361970aecc107ae21fe4c99ea4f2'
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

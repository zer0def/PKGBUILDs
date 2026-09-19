pkgname=libnvidia-nscq
pkgver=535.230.02
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
  '80b6907f4f402776fb72395d0d763a2b82326d2414e92e84bbe40c6f28eee08a'
)
sha512sums_aarch64=(
  '2ccd7c3adc9f2c346f913492e8e60e616d35531eb2c5e6c21e2dbac165358b018dd766bda512feb4de74368df6e143fe0a10feb34e5514907aee006f02ea4377'
)
b2sums_aarch64=(
  '2990d84686bdffa8d3c1021eb9ecda59615b172cb8dffb1dde961b4c9a83d2306cf26ff647b6c02bc61a390f194b1f6d533ddcb789658d8ad54de1dcfa7ad989'
)
b3sums_aarch64=(
  'eafe0ce6bebdbbbc3fa8fbadded6b7867424dcade67164ab66b337886beea714'
)
fi
sha256sums_x86_64=(
  '0f823624a60928c3324eae5324c0fcb0f9b1b1f0be63bcbc8e00145564857a16'
)
sha512sums_x86_64=(
  'b8dc04ec5c89e58c07bed00e276d5676e05126d9b0f620c68556fb33c3a84a1e902ef5d934c4166c4075789e38a4d9aec68e6dae07798747733fb6cb004b2eba'
)
b2sums_x86_64=(
  '4831c90cdf419a81480c8f2c08c74516def6dbc772115f0d502700c6d808fe557e9adfc51743c1d91033ae428d729a32962a5c9d1db16280a8b26753bbf8c870'
)
b3sums_x86_64=(
  'b70b2a1a698df89c3061935fe601e2dcf31860bab85ed65e04788a326cb1bcd0'
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

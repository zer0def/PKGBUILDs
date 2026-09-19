pkgname=libnvidia-nscq
pkgver=555.42.06.1
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
  '09dc157ccb3396ebc40f4dc20a7e46869967ebfb9fcf6893e9a10336aa92a068'
)
sha512sums_aarch64=(
  '913aa491af65547f95024bdb55372edb99174fd8335cd6ff217fd45f4ea782d259aae4d3c2c8cfe133f0c5268388f429a06d7489f33310676719fd55e3a56d1b'
)
b2sums_aarch64=(
  'dfc5dc29902dca6170bc238dd5000f33a13219de54828c98a277ffdec2328f6a00222a113f5d56d354f41887d8b1fb649272d7a70377a849e472a0a6f5af73ea'
)
b3sums_aarch64=(
  '5408c5448256acf8bb0255e568149be40673cbd81b303bb8e0c08b32cf7bed38'
)
fi
sha256sums_x86_64=(
  'aa3925633f970b6f2cef14c683a4d26460763ac9da68db3ab0ef385ea1101c2e'
)
sha512sums_x86_64=(
  'cf6945255c6a22eaa037948889ec99c2cfbe062979ec56d152690209db876ae5f1418014275627cf26bb0fea387d32e85667da594efaf21541b218763c7d6de3'
)
b2sums_x86_64=(
  '9b1fc5052f247492142dafd7df0703b5d99a7b0a5f4116c61336a0274d529105712ee60dee1eb1b86411c59ccd786eac896ba9a9152ef43fc75945ed77a5bf88'
)
b3sums_x86_64=(
  '3d2e3fefc3aff36f1490f6afe7aa32572b34c1bb70b965c0b555ffe2367a619f'
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

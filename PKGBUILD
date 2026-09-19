pkgname=libnvidia-nscq
pkgver=590.44.01.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
_ver_suffix='-'
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
  '1b55874fe5e14f3351f87860fb6bc3de7fe0ab997935b275b5c1b82033a55a7c'
)
sha512sums_aarch64=(
  'bb8b52b55f5483caf9f27c6c57ba42e1ec0b5426b3694e62319f75f8870985d36e3550c83c8163a4a4c7077b5a1299698393cb5c57e0072d07bcdb012fda6d2b'
)
b2sums_aarch64=(
  '454a398d90548b8b65667ebb6dcdf909f6259e8cd94f8739e7ecbd5f60df97106bfa6f741a9e6c1baa511bcc7ded23311651ac2807450308bb1ec50db703cb6e'
)
b3sums_aarch64=(
  'ec9f7f031d4a8e631071416339309a8d5fcba8245486545fab6d9907092325ae'
)
fi
sha256sums_x86_64=(
  'e2b124e6a99cc1689fd1e5f5179dff5dc4c4f0949751aa4e4249a6c06f101a0a'
)
sha512sums_x86_64=(
  '97cf049db7519a0879dca49da7bcea2263ef87efeeec4b3aaeb9df998750a8564d8bfb524b117f6ba21ab356f4a7ae2f5ba82b5859909738d4f9734f01a2cc4d'
)
b2sums_x86_64=(
  '294633c4d91d8d50e5ea1ad56add1605a8ec8ccc46b86e7b315b284e4bfc1fd5d17ac538ed728500bd3761031770316a7558fc8e707ab1c7658940bba2226193'
)
b3sums_x86_64=(
  'cfab867723ca03d144be66e0cc6c73e712bd21a7ca05d9f221c25c28f1a81757'
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

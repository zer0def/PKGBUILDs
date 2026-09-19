pkgname=libnvidia-nscq
pkgver=610.57.04
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
  '90759124359a4f42aa6c32e42f18fed6a11e935ad50d1e57ec3995d09079f056'
)
sha512sums_aarch64=(
  '1c4635dea714caf43114ebe50834b401c32e2a110f741db7432f59585d085585972e4b263b02b46a30417a7876824763169c5cea0181be517a1afa422273b4f2'
)
b2sums_aarch64=(
  'deaeae699e979348b4ef4869615f934d0799a235170b62ecb65ad9a887a21a73f69373709c6d03d3705359d36c1c915c1c783ce3b104e7a2e644bff30457e596'
)
b3sums_aarch64=(
  '971807ff05c95070565fcbfaf7fb733e79baf2c839c86f670ce29458ea29ddc8'
)
fi
sha256sums_x86_64=(
  '6922ac55e9c6167c68649383c4a1b2a5914b373142af2a8e535dbd83be1ef286'
)
sha512sums_x86_64=(
  'b8dd5508c3dfd4ed5d9001499a14d496aeb426d02bb4c073829a643287ff4e1939482300055c426d05e9034240b6e8915d114ff3f1a471f13344c7f9ea0a797c'
)
b2sums_x86_64=(
  '792c61eae3e51641b0515e77864364c6595bae5fb9e8b6af0ef4be40d5bc700eef6f8f8ba5975aaf29ef81002e2d44b0693adf767706a2369c36d975c0e3f05b'
)
b3sums_x86_64=(
  'f681fd82bb25252953b365b1d92d2601492646d2448ce7cbd0f42e4d3c34999f'
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

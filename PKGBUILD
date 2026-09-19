pkgname=libnvidia-nscq
pkgver=535.309.01
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
  '0f8fb3a384cf97cf850bb33d5c1fba2d00760e4f939aaad54b516e3a5c975e82'
)
sha512sums_aarch64=(
  '48b1dabf0c3ed5424bbb96d862d6e23a39e5d78b30a4029bdac91bbbc97e378fc83c924d4ab6d883e744f24bc916206012378e0694252127550d657922bcfd4e'
)
b2sums_aarch64=(
  'a34c560a22b3d02b8f1f5ca0078fe07b4d866f436a38f6d1bbbff68f3be5c424badeac511c520666a8f4024684732d4653b7f16c4609ac84be9d8e2ee7bdf791'
)
b3sums_aarch64=(
  '775ab1d028bdc88fb52b07580b6640f85ce86d7b42b367b8547adb2e810e239e'
)
fi
sha256sums_x86_64=(
  '11b5de238bd7abd68cb3d03f803931085844fe20236f11401a81b5e641584213'
)
sha512sums_x86_64=(
  '3bf2fc1b996c1ff6eaa027b0c308f582101ff758285b4f0ea3fad415021df2db44923f02e8f609bd151ad19352ee057f2bdc262d3d9004e65d43cea448cd643d'
)
b2sums_x86_64=(
  'aaa4953a7f1177d88d5ab9d2374a986c71ea4edb747428ec53198c1d21dc3e1c3669923cf75f3246ba29434b7dab33e4926202adf46b829f5b78bb6b1e3b3eee'
)
b3sums_x86_64=(
  'cff00a9430c2c8a3d05d132d7ef5024dccbadb557cbc09b2feb375a85c4c3881'
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

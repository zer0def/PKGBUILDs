pkgname=libnvidia-nscq
pkgver=535.183.06
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
  '8a7bbb677d897923e023cc94f1303eb984ebdcd30dc73086fbb32e9d0062fb66'
)
sha512sums_aarch64=(
  '39bd8d37bae2936a491f0fc7e028a24985c9feeebe4aa9f593c854c044a99cf6925c15f116779af3c4cf6b6c010101bf905f11df598760e8e30e49996e412f89'
)
b2sums_aarch64=(
  'c062924050c3638173b60c34d05d9b18371aa0eed01300bb5a0c4e948bf10c3ce1e632c5d5d8dd24d853de723fe466458d009a09fb0e8aa629646a01d35c738f'
)
b3sums_aarch64=(
  'e207749c868dd60ba71ac9c67cda97185ed98188338a1f54b0c57c2470d9d3dd'
)
fi
sha256sums_x86_64=(
  '120a3870229c5cca708440400141965436db75aab2026227b5491e46d663a6ee'
)
sha512sums_x86_64=(
  '077395349543d8e2d4ac360af4f53f5d80d979cd894e0acfac8d736e4ac552381c303c6cd973b8ed4220d96d9fc3a87809b0476c43bf7f852b9725960692b30c'
)
b2sums_x86_64=(
  'd879fceed1117199035817fd8ff269e9090407bb6dd9c5d51947a44ee5ec80e43484febf05186256369f007e6bb90db66ec979d0eb466d1255fa82bff3da79d8'
)
b3sums_x86_64=(
  '994bf5233a9bb509f5b1f24865ef24e79cb697de6ccd6a29cd1f0030e7e46430'
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

pkgname=libnvidia-nscq
pkgver=560.28.03.1
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
  '987538483a8b2d35dbddee4b6b5077566b331ad8482c440c4dd23d9e92010aa0'
)
sha512sums_aarch64=(
  'aa462a224b387ead1457f1f86a20b2f92d369d2a30f364ca24cc66c421a1eb6a7d65c50b49aae0764787f018b06c4d3ef9b86b9b114aa15d4aaa5cd205b5aefb'
)
b2sums_aarch64=(
  'b678d30ed5478760eb1e31d58aacc49a9b839c68f4f6fbd07439bae5baf4ab559423362523df9483e3c390243729e80bae1acbd3effadd285b9e8982890a8356'
)
b3sums_aarch64=(
  'affed42f77e41b23f92daef4f0f607174a3817f01b956b38a591b92846281ff4'
)
fi
sha256sums_x86_64=(
  'a137fa161c0ddc2eff45c5b11e29723529262edd65fa16032a9b55a990dabdc2'
)
sha512sums_x86_64=(
  '615646d71ec9f332c9b8f1771a668e7e29ed8b843ddc9f8440507eaec103fb924879b6b5b9ca67dc13abda9c2c622f308a3f64bc030d35a8f2cd614716e06ef9'
)
b2sums_x86_64=(
  '60075bf7ca9fb7d473d196567978e8b8095faddeb4da52be66c7de2b7309987573dbe07a997b5f5b883556308d83dfe253f7e909dca3a702b11dd3150a6d40f8'
)
b3sums_x86_64=(
  '8832780f57825097aefd1061e544432c6d2cbd6462a27c518db56f6bb112cc73'
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

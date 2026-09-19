pkgname=libnvidia-nscq
pkgver=580.126.20
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
  '75e9eb4fa1f8f81ac06640ab27e21009ea9312a67688ed1cff12cd3ff274d4a6'
)
sha512sums_aarch64=(
  'ae6720786777d61917c0887f37b5e22f417132068303058f4e16b2cf3a6048c22106b6d370152cc695b2fe268b25821f044fcbb3faa6254bffc2395c92e8c84a'
)
b2sums_aarch64=(
  '2eb015bede9a295fa82909bad51b697e7baa57574beed27efdfab5770f978707767d64d7a89eee4e80ff7bb731b7dba6080be3b0cfc82d28eb3224cf42348543'
)
b3sums_aarch64=(
  '5aa6a3db2bf9fc40b14993ef59ca9cbb0115949a69acb5990fc1d18e136ccdfa'
)
fi
sha256sums_x86_64=(
  '90d57066756670d1445cac1c7ef68ef0c4a6a2e640da571cd7ae9abf802ff237'
)
sha512sums_x86_64=(
  'fdecca56a374f79cf83c71a05c89a694f576d146b93fbf8beadbc9a3c225aa008bdffd971a6a61ee919e11a3d9ad0f5d29fbe217e2c654741fdbeded17764c90'
)
b2sums_x86_64=(
  '50d3edf3c96cff697be62a1679bb38503509228e87c4ed9fc9148f5e906af6d404430369d51c3abacf983fd2a463d9d5b39812f88a688de65a955e0a7019f1be'
)
b3sums_x86_64=(
  '8cee78b90d076c40ec1285306f5dd64a455fec81b0a16d3769c39c49259b5a47'
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

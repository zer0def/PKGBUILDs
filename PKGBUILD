pkgname=libnvidia-nscq
pkgver=580.173.02
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
  'ad6f997bed11aef20cbcd0f6cb032815c85e4d926220e02383227a4ccd4471d2'
)
sha512sums_aarch64=(
  '279b11efa8e78cb304fea1cd4ddb2bd96b1512639741137de0e12539366862d834dbb954fc027499193d39a4329913dfa5e0feada219df5a9008963bb73d5607'
)
b2sums_aarch64=(
  'ed524ab03f013e88b0add387f07312a583645c0bcaeaa62e4b420fe0a0389b138879aa07fc57f71f39aa5904a4dafec5492ebd272b3b865401b96bb1303b6594'
)
b3sums_aarch64=(
  '5846955655e2f5b2d11b09623b39f6c00b79d7c2b78020a9f01a7dff11b8ecff'
)
fi
sha256sums_x86_64=(
  'f990b6864be968eaf6e414f079889a1911752116863632c908fffdca1ea490c8'
)
sha512sums_x86_64=(
  'c1b6b511723ef976b6969aaf59d8d2ee1ae17581f731057f2e1607d2ae367a4d911b4858556afcd802f913c8bc53ecb6d6c418887520fae370363db15071e0bf'
)
b2sums_x86_64=(
  'ee0f65337a43ae1f5ba7ae8e07248215138847cad14672f3f4b0133c41f0be7a89e05acae2574fca300f5e07f3807f9e3daec9bdf8012075903670608ddef254'
)
b3sums_x86_64=(
  '6b18ca5b2f74f34827c6a4f2d41c39132434bc929f8b9b43e0fd39f9f67e2c00'
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

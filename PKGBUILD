pkgname=libnvidia-nscq
pkgver=570.172.08
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
  '8de71c1540876d001e507c837312975c3ba4881b6b58ad484dd6e7991397d43f'
)
sha512sums_aarch64=(
  '3af168f6a77e80316dffca834bc2e2be3a502e072b11f924489f9671e62be6b47253f840774f69156189e7b58acb69367064e9ab7542fdbe4df1ab5b1cc2e6a3'
)
b2sums_aarch64=(
  '8e4af9c00fdf467e77674a63aceb71e7efe96830aa8cabe06a1581506b0747f09242ab9989f5d7cbb33ad345b94476984649513cb424cad2ffc80159fce0857c'
)
b3sums_aarch64=(
  '55e312e3c07f7ad4579540f3eb96c094bec915efddcee0ea1e6ac0d02353d5c6'
)
fi
sha256sums_x86_64=(
  '66d1c4303700f19bd86bddda071340e070511a7070ce60a8641f16db7c184cfa'
)
sha512sums_x86_64=(
  'f00c380e13d3a8a7213c2051f057e296f529df0ac2b94537a0c0e35802c011e5f2afd6e525ac148552600dc608fcbb2463b0951b35bd97de2dffa9f3bc1ca38e'
)
b2sums_x86_64=(
  '0d128504dfa923adef509198b1a163f5594a8b0de4e42bbde3fdf9550333500d62eca295c6300774e5e6a709d19236b484d8ec670de1585968003996261b6fca'
)
b3sums_x86_64=(
  '8d59cd091f38ed4b9c168b6f06c4e250011a124c49ae2a0a7398f03b16d36671'
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

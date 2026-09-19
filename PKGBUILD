pkgname=libnvidia-nscq
pkgver=525.147.05
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
  '4d142727db516fd52eafc7ef312a7b470888048b4a2b9a9699db4ec545b426f1'
)
sha512sums_aarch64=(
  'a0648b0a25f80ec38d3933f5f01b20bda86653e55fc1f0ed18a4dd930f3bd2ce4c6afb5debc6e0b8a61f7f9f09d5b041983b721eb0014906973a8a44c8422442'
)
b2sums_aarch64=(
  '3a528974bb1374b477e1df1f1dd2cacac4fd54d0cb61700288c66b31a932a0b1cb50375779b84e104bf50b19b5b38c79f25d782d61d380ed71e9b512d64f66a8'
)
b3sums_aarch64=(
  '123bda85392aa301ca5aa40701436493e31b969ea38857fd15107a53133098e6'
)
fi
sha256sums_x86_64=(
  '866db47bbc6e2cf95587ecce93dc306eb2f568acfd29f316d0255026b5ee6dcf'
)
sha512sums_x86_64=(
  '2e35e0c8e09dc57a484ec7913c30beef80d9e4e95ca94ee0a26180f35e1e554b417a485a46fbec74617c867a5c77085c3c70a750382f83d8bbbcb5d3c509c2f7'
)
b2sums_x86_64=(
  'cce8b6367865882bc7c2c5f80777a062f1054cc511a6b6999ea81e36b2a83b79fa77dd17809b5f88c8cdecaabe112737edad85c5f8fe2a4706110595b7ffce14'
)
b3sums_x86_64=(
  '3b98a7ea527f5f356c9f5c3463a22923b388c86c04b96989337c9f2317e9a746'
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

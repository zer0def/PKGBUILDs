pkgname=nvlsm
pkgver=2025.03.10
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('d09a01f9bddad928f8e78f6159b771d0a5498cfedc6f4e0814283cc98c35a7b3')
sha512sums_x86_64=('49e3e14114a6fb2a829318cf19ddae756da9ae9f690b9d5dd972f843d932df148b4e7c1a803f2bc762461f27ca87706bc2157bb0070e18cf05c837e774e5902f')
b2sums_x86_64=('4786091ba733081edf91cb9401c5eb248ee785b13aac6848d9e53084359d96b93f5567e21dd954390aa631c0a152bc19d9ad523a7760c2aafb6932d6a01cd57e')
b3sums_x86_64=('f1c9be75e9522558bc12b68198e802496c3ae5b8ccc4a37aa6a3d52f191daa0f')
sha256sums_aarch64=('286d3e172b1bb504e6acdbe001b66b35854e11efe6a00bf3e47003b45aeed6ca')
sha512sums_aarch64=('7e12b45646e33a865667a794e71ba23ce3e667353468d638d2d93f6a0586c616c1486f038d204f2f5cdf807a333f005391e9c9f2f5ffd321b576cd94ecd18473')
b2sums_aarch64=('bd27a77b765d20ce2b632588fb8f7e07413bb212cc0d11c586f876fdabde0634442d14a9e34549c9198eb023dda0f81a63bf48550c0fd07b7985972c8e3f4355')
b3sums_aarch64=('19a27081851fbbff8a4930f96ed09596d728d701e28ea252e246f672f5ade343')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}

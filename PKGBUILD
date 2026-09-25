pkgname=datacenter-gpu-manager-exporter
pkgver=4.1.3
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('5fc89aac3a6c1ee7a5358b26d9fc9151f213244592435a8d2c7aa3765b9e8ec5')
sha512sums_x86_64=('d4edb9ecd3df51432942801f09ea0bf785dac0e369833fb9da546bed704bf8583b8d98b8d1c40ee8f587210336340c45026e751a3e418332a4e093dae0fb5c7e')
b2sums_x86_64=('659a02241e0a99d75138e0a3eaff3473a9bd185f06a842c720a9bccffee4d3a4a6b7428bd30ed79940a4f91e328eccce714a90b04665f60a45fc3841b6d129b7')
b3sums_x86_64=('f2dcf793d9a8305566d064c4884e58f2a9a7f61bbbfd1260e8ae2b548a349d69')
sha256sums_aarch64=('624dd2a0f24ccb9eb5961445084ad1ebc71f2599f42a640cbecd15309b3eae8d')
sha512sums_aarch64=('af1a6f7ae109814757d523b1d2a64b83f48708f373f3975b4e87ef3296ac59840b4019f2f117a0111667fb49c544c9f49271af4d8f49b8b62ef012b19a2135fe')
b2sums_aarch64=('4a1e54066dc1d01ac955d2888b162d23c593acce57a8ac84ab4bd8b95ccd50473d472f329f4fc0c39b7c47c6f1ab17425c1954cb43c34a0e75e32ddfb09a5a3d')
b3sums_aarch64=('03530d83c43cb7dcd8cb0edda2875d505845cce424a0606a422d65260e7b8518')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

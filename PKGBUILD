pkgname=datacenter-gpu-manager-exporter
pkgver=4.8.0
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('a05831e8ae59fbec51b426aa1459a54b9ece514b3d783828a120d4a1e5d0edf7')
sha512sums_x86_64=('79390dc81d833ca089cccb1837a56933ad20ee16f10ec4a90ee21a1dbe8a2fcd353aeada24090e6484233107ffbb96dd57ccdd048d377a5a0e36318be534d1cc')
b2sums_x86_64=('ba2ad946554e1c5a31fc29248520d5a9e8ee37a18b6b8e6f25819f797da0e2a417b10d7be9a7d4f0aa935a3ac23363991d5c691471c502344ae8d9ad5990a751')
b3sums_x86_64=('824cb5da1010efaedc703585a0895a0079a5647fa13c575fa46cb7380071e31d')
sha256sums_aarch64=('c96db13c85df558a00abf4601d632a714c805d177dfc783066f280905c0e60e8')
sha512sums_aarch64=('d196e641b64ea7690d37468993b8d57f00f187965fcd40061a9583f7b00189cf3a27b9e1a139ab65d0e22b341d23efde21e81b6fd84f5df8a78d47d759d87a3e')
b2sums_aarch64=('e94063e6a36f8adc17cf529b308bc61706a0e98ceabf897d75bc7a88ccb6046eff6e03ef1decd20bc780bcafe6f7f517193a8cbb0423be2df0a6f96761f29e72')
b3sums_aarch64=('02e1f67999c56e92fd6ebbc710d71bffb26b0e95fad84fa9b984390e59ff447e')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

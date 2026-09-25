pkgname=datacenter-gpu-manager-exporter
pkgver=4.1.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('e920b85096f39395f7f1412a5386b2e551415cea105e191255c1ece2c6bfa054')
sha512sums_x86_64=('00ebce563afb20e7215d463fabd26ad5e404e12bc00af5de26b69d865397804004564e388561bed844b48fa5524193a57a5c4552c1331fcfe931a618a1bcee15')
b2sums_x86_64=('158ab4dc9ef6973b1ab0afa1ac2e892224c8b1e65c979ef20bfa43c614ed51dcbebc8a7fb897a0131bbcc9336b552e4fb1ef50bdbca29ed9590ab978ba0aedbd')
b3sums_x86_64=('b19f0f40255fa8ed5c515915eb29517824a636fd031fcb8af29b07bfd3466c1d')
sha256sums_aarch64=('2f2cd2f03738c92b4e45a332a7340a6913b0f9b14767153c663b5316ab921d6f')
sha512sums_aarch64=('49e209e02071ad26e0eca54cde602bdd4802842e29c4cba31dc9d80b118c54265b556506b1007bde668db35b0c4a82fbf424dcb4284b983fdb7846bcb6451f7d')
b2sums_aarch64=('c34276adeb89f2dce429742db1ec455f6d6ed5d4cf60fcb5a3de3f200a9101e7af38e46fc58a43880bcb9255261881fb533cb7ee0d983e3ceab1e5c851e252e0')
b3sums_aarch64=('8228ab060c2700b5f747171a63ca067975e07ba5ca6baddd68886d5b05e8c7c0')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

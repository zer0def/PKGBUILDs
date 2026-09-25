pkgname=datacenter-gpu-manager-exporter
pkgver=4.8.3.002
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('b5afa4a04adcae01aec5ae0cb2adf5d618cd9ec3fd0d2f0450e64546422ec84c')
sha512sums_x86_64=('afdddaa5042657bd9aebaab76a901a35a881f34df8c7b5d2b26b93f15a95a674835bdf8c4abb3f7c895db6cba0ec1fe6f6dc681bea35a2e4b4e00ac6e176bbd5')
b2sums_x86_64=('daa55172fcfb665108bbe7bff2569a3b38b19507200552d907b80bc862df5c0e3faccc019e1e6fedee9265f220b70eb14b11ed45eaa868eea58ee36ab0f3730b')
b3sums_x86_64=('eb06b097873e4201970434ef353c7210d28219753e6c2662c573420336c1d23d')
sha256sums_aarch64=('2bfb252868a9d226ce6cad7f96e7f07f919ac8a707bef8031686586b10f8732b')
sha512sums_aarch64=('957d7d7b2bddfc0dba5ecfa2902da7950850a6afb27ba2e3070b8cc2aba4f2b4c336fdcfcf826253fe08340079ae73ca2425263bb60e0b709a0d0154ede99f21')
b2sums_aarch64=('052942e50b2a2b3bfc4ffc7ef043a75e2cc3cb9e62120a317fbc23773fc49546345c4cc4ef4d16c91c12e2861910f4b7d53ecabc41dd69e2a5cb9e2474aacc3c')
b3sums_aarch64=('9b82904be5910329b9106de5d807621de01a157e76e80fde7502f393fb202a3c')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

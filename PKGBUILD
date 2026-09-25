pkgname=datacenter-gpu-manager-exporter
pkgver=4.8.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('3bc8b47cff1462a2520fc93c5d775e696f1cff9b97f227a26418e065bc900d7a')
sha512sums_x86_64=('372862781777b3df98b0e88cff96bd93055cc51fdc47d3cb6bbf8bcb6e77f28c2435dcb0873dd7c0b88c2649ec3901b5009d025cf5f16cb41230a0c4b66c8324')
b2sums_x86_64=('54890132d1540685c653f67602329bbdd6bd465ce57a660d8a3fe0f8f383818c505db00794c1738a8899344ca990acd41851d2a08a81e6c45129eb5d42d5fcc4')
b3sums_x86_64=('4d820109b3e743d279e660bb33528c4192ebf285a8bd92c8d3854e0b38397673')
sha256sums_aarch64=('7de8ed8654ac3199af80b890449ddd37d084a2a4f5b106d97a0e24023d63c74c')
sha512sums_aarch64=('e1c1a5e445131e020a26e1a5d6496cd5c8cfbbcf976d6a43acb81894b5fbb48bf0bd1cc77b5f9d98a14a4e84f8f9657f71198c5f944b215a63a75f022e0887bb')
b2sums_aarch64=('c76789d37a60106695614688bd8a37cc06dfa2b25032337a5a448687b356d5c31692cd91ef6a9c9136c83584a3b1f6ad04fd642bdec806bf5251838ec4794ba3')
b3sums_aarch64=('e2f46bb0466968fb270bd436596ec95df72969965884abb9f391e86564d96ad1')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

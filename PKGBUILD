pkgname=datacenter-gpu-manager-exporter
pkgver=4.5.0
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('189f5b0a484f6a61191fdfb656306f371d12afd5e654ba004c80587f13c7baed')
sha512sums_x86_64=('4232f54a9071e2f936f1e540b19c258b45d058be6c949ac78506a6bb46bdea1b6537f78472fdc6a8a817436998d9b1d003797ebc118a3cac17fc1d45d88516c5')
b2sums_x86_64=('d98e746466e76f976a54b6b2718b27fc68711e664331e1293988221d6199402a1d557a8869958e02acd7826525613bdb214fac362b68a7073c82a6d840afaeb3')
b3sums_x86_64=('124702a7f19f3e57999151526421bb6acab0559ad9095a82768c8a9e3da30918')
sha256sums_aarch64=('e2970585a7dc128e495f5aa0321fe1f9bc12d49475e5fb7f22c02d67f37b02ce')
sha512sums_aarch64=('20d49d4e51279b465a62f6161bbc778fd148c9c85d9350813afbb473b9ce8094c923b7136dc7acdcab0ac7ccdfa895406674ea0dc605e31dbd5091b899a04e40')
b2sums_aarch64=('e5d3be35b11ba86a885c648f66e711d899cc3d1841842039e5ddfeca2c1dbdd440eaa7ace5848d8d9e7345dd71f7348ba613f5185471c08e61095fc6d575463f')
b3sums_aarch64=('a3b1857b278415d67e6baf5e506ba78b7e1f918f5fb9964e3ce4f260402f4e5c')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

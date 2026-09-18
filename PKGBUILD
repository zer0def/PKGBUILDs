pkgname=datacenter-gpu-manager-exporter
pkgver=4.0.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('c9e5619c11ae9f5c9f92222a926f7595c6401c51ac8adc2b40d51f60b684c598')
sha512sums_x86_64=('9ba1e1f958b0cf4cba666713ff5390d9b83cbf9ef85f7a1924f645cf5c09f7b574de63516a7528b58b8792158ecc8ae3c34fbda298a72f0ddbfc22b5a710bdae')
b2sums_x86_64=('8ddfa138aaacde66ff3e3acdd25b3fd1aba0de1ce0c71a51b9c8b153a6914a8b606137d8df235008366179c6f8a8678550ed06e0faff4d19ce41aaac2741cda1')
b3sums_x86_64=('679505b0b3c27fdead6ff3f02ac88965feb9753a9609117f6c4285b0975f2e82')
sha256sums_aarch64=('1a5953fa57b7c1595a38573f4e9bd0686ee247f00b7547fb395606cda9ca7044')
sha512sums_aarch64=('c27702bdcdca15bb28906e193be85516b1118c9a8ed5e3d67428c39714b9e9bcb10325628a0aeeacaffec900697b534d9423576345c7c3beaf59c70061699ca3')
b2sums_aarch64=('81709bb28142e71c6d0f074c3366e513974d32f3f6f98b8affad019f5c4286486814802f59f81cff7781fef5c03ffcf2aea7b98b1a7ac456d135cc7644de2b38')
b3sums_aarch64=('b979d3786bcdd0d4655c009bd258f73ae7bd64a2c8734e7c72c697906a1e93ac')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

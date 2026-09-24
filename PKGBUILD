pkgname=datacenter-gpu-manager
pkgver=3.2.6
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('54595a9bc9698ab4243f88f9d4471f409013a07b2785e2b765ea96e602ae0cfb')
sha512sums_x86_64=('cbb88cf007b51c6e28b6807c44f4cbb83fb4ea7c8acd9ebe6457e7d804daac152e1f870cb92e5ff269e020fb1b8bf482f28d5d1fad1de0ed50174ceedd391fdf')
b2sums_x86_64=('8c065730e029dde8aa32011fd2b264eade967f09b5b1703683a103768ca1af1ace9266fdf8ec48933066e80d3cd78aa1d299de8084417631ef7c300251e67a80')
b3sums_x86_64=('e0d3340f28ee9c935d17e02327bee345537953acdeddd1753ced83157ff2377a')
sha256sums_aarch64=('5b696850a9868ef42cddc28f06be94dbc24ef572a3e488b5c0743bd10eb5306c')
sha512sums_aarch64=('c08c26acdf77ed98504e37f45623b68cad54bbaaa27e2e0ee776bbfd73b30919447b8a1b56486858e1a5a47364d325e02a74cf5f10bb5bdfa520c7ea26edfc71')
b2sums_aarch64=('c67a4ab9a904d3361d885b4f4de3ede03eed83db2b471dcac638d7a8881b0e64ab4fb4eee98e094883a37ebcddcfc86992e3b851bc85aed52d16de3827ebc364')
b3sums_aarch64=('c1490cc76a5f5dd9c83fb89bd043a1be4b31a385d7c4c16a7d7f08534faa10ed')

package(){
  mkdir -p "${srcdir}/usr/lib/datacenter-gpu-manager" "${srcdir}/usr/sbin" "${srcdir}/usr/share/doc/datacenter-gpu-manager/examples" "${srcdir}/usr/src/datacenter-gpu-manager"
  rm "${srcdir}/"*.rpm

  mv "${srcdir}/usr/share/dcgm" "${srcdir}/usr/share/datacenter-gpu-manager" \
    || mkdir "${srcdir}/usr/share/datacenter-gpu-manager"
  mv "${srcdir}/usr/local/dcgm/bindings" "${srcdir}/usr/share/datacenter-gpu-manager" ||:
  mv "${srcdir}/usr/local/dcgm/scripts/"* "${srcdir}/usr/sbin" ||:
  mv "${srcdir}/usr/local/dcgm/sdk_samples" "${srcdir}/usr/src/datacenter-gpu-manager" ||:
  rm -rf "${srcdir}/usr/local"

  mv "${srcdir}/usr/etc/"*/* "${srcdir}/usr/share/doc/datacenter-gpu-manager/examples/"
  rm -rf "${srcdir}/usr/etc"

  mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"; rmdir "${srcdir}/usr/lib64"
  rm -rf "${srcdir}/etc"
  mv "${srcdir}/"* "${pkgdir}/"
}

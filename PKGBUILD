pkgname=datacenter-gpu-manager
pkgver=3.3.9
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('d4fbfa2c4cd796b37d6334a0ea78c87f9e68fb03d67e213b49f2beae79574738')
sha512sums_x86_64=('83bae725bdbfa6f2ebe2b69b21bc08e2391a0ff388b690284e5c30a24bb6056e58f3be0d45a2458492bc53a62488681aa1545c8decad78c6e2591ac00353822f')
b2sums_x86_64=('531f6cd16fc9dc9a07dd29618d14438bf94a8e35a80b7e63d14d7f28ff2ededaae63b87bcad00c6031419a40a5c83f5b6b2c1e972e3ed9177cb453e025557be8')
b3sums_x86_64=('0ff119c2b2017a4c96a55f03a5eeb542eb192cf9756030f63bab3594a0ee6a28')
sha256sums_aarch64=('d66e027594954ae2a32e11fd0d06ca63de83adc21574f7141ece5df7f4fe748f')
sha512sums_aarch64=('4107bdce693f6373cc1056c9ddd201dc800b6ee8269c2af5d133f17dcfb8a3e3f3d0b76b2ac948067fa02213e87292516941f1d5fb9a8a9e373fbc74d08bbf79')
b2sums_aarch64=('c067bb9138397602313daf2c39bc7695e6e5ba4db5cfc036430fd48aaa324a4e9a64188f0b3f48d60ca69d5d4cde4a9fdc4d24b16909acd3d18d5848d28044ce')
b3sums_aarch64=('3138f95a984d6be82bf44380816180e343e1bcc68f535863b512cff38979eeb9')

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

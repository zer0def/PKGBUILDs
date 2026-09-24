pkgname=datacenter-gpu-manager
pkgver=3.1.8
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('d3a7a50ad5c759c086f5707fd4d740aebcfb9b93750e3f0a06c9137d341b9c8d')
sha512sums_x86_64=('0f86a2957fc14d4d97d121f9b90bcd36c8ad71ac8b0f2b1db123edd055c9c77ceb39a5d87dce21d964e6c4d2298c96585dc711e331dc4d8dea1131762fab9d34')
b2sums_x86_64=('54c2a71b98b205d1445bc5ea288ff1d7f42e8b525bbd75800fdb28ce61cd83f1a646b42e8a4b244bf1b79f1b0d73e5b2509f47f9d60c164d9de1eaff9469e39d')
b3sums_x86_64=('6b367e4f4795f0e129924aeea619c2dbc5816379c8d6004bf6ff6d143f7ab0cd')
sha256sums_aarch64=('d3e2644ca4216e36294c127247613cea04afbae1e68f43bc350b7292fea44f8a')
sha512sums_aarch64=('c96d5f329a0b3d3306710df24d93cf2c957634bf89013825b137d11cab65a63b8d826dfdb447d74bdbe5ea060f202b66b70163047ea3848599a98d1b8414ab81')
b2sums_aarch64=('a0baf06e3b7a5379e2de43ce2b6fec929c9c33afe008ef370d1e402a7034c0dcda62aaa14f7ac26a63ec3de58d6448605bc883c680df177ae4dfa2be5ff78233')
b3sums_aarch64=('450e26f04558195cc01ec0c1121041b85bac8e94f35166a2e8c83de799a09fff')

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

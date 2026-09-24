pkgname=datacenter-gpu-manager
pkgver=2.4.5
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('77a5acd7d4e66a0a170321eae2e1ad0bdbfc750ad1abdc569611d45df46a0def')
sha512sums_x86_64=('11b60eacb9a9eef96b1ebc407c7e2d56baed8c20008125af279a744b9174a427c2a9193eed08ceda34c90c34974b8a7cd6bc5a5125448d5b551589846bbad61f')
b2sums_x86_64=('d1289a82adcee722a6685019a0157a1f384e3287290515a48d87d7bddb479015854fcb3ce3b2239895e52f3282397ac8956755263143e4acb122baa602376f0c')
b3sums_x86_64=('1636a52569634c513c4092645d68afb46aa362abd9c93d3bafca88e1c0896a73')
sha256sums_aarch64=('2ad726a7e7968199b6bf7886a810c7bd780e1ec99e180b8cfda354f8a1429289')
sha512sums_aarch64=('a4ad260f8e016a2c60cffa86191c16e83b068c2fc517c2726f8a0a33053c9334366cc8bf92937916f8218aa766c900c4896a9f67f9b15d1a3671722d33a6a833')
b2sums_aarch64=('4668ac76915064dee28ab47b61de54d8d3af8b2feab809b06236f86a9a50ef18e455573857dc0dd6f09c1df86d28977b6cf7062f2b452aaf46568b150d6bf31d')
b3sums_aarch64=('52e5212b46005ca0d5e76773250523682c2f09e7dd8ce90214189f80a82efaf5')

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

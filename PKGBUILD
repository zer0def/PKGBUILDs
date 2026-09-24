pkgname=datacenter-gpu-manager
pkgver=2.0.15
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('6452d4abae99c73b54071b28a14cde1dd225cc17129dec15cce0baba841fa6c1')
sha512sums_x86_64=('2c35c5f7f1c1abe9dd950df467dcc1131af85a3a8621038aee9046f392181585987f621b0f89c52c443db0b1072acc20a178d03154173e525483bb2fda01c8fa')
b2sums_x86_64=('b2c4fea4d34fe5dcdfd4c6e50285ea143a8f1ac176363bd27723e86621bc996aa1bf11f51d2dfd18ec7d2438a7b62fca5428190ad069351516184a5fe090b804')
b3sums_x86_64=('bbe1f88d901cc81b51ac58fc23b662bd332d9529a9d79f598a86b972d29d69e3')
sha256sums_aarch64=('c439ddd72e4f0b8e68341b931e0e14f4b810d0ecda53c483b34cacf01bac28e3')
sha512sums_aarch64=('3cefb0bf96b5ec25b5a2a916d8c658504a12ec76a6cf784567b6aac12f6bb5fbf57da7d84a1ecbfb789649fbd082153dadc4497f1a8fb77de34f5af40ecd2bb4')
b2sums_aarch64=('4a462f3abc8058ad517ea838625ff1992309d0aa183fc6efab3b411d8560aab4aa788f5b4c8438ed65330ecebb77201dd57b7a0e5386f56fbc9eff6168f2e201')
b3sums_aarch64=('7d37f46c5a5779d9adcc6a4fa9f6cd9bf581b7ab28de258ac0178b3427d8b1c8')

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

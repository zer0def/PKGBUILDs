pkgname=datacenter-gpu-manager
pkgver=2.0.13
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('afa49ac2db02605565cecdf7b88789e5570a02dd82b51ce5d04e150cedb418b8')
sha512sums_x86_64=('c31fd5910950099afaf1c20230e2a70b2027f0ed598e93caf83769508ddc48d8a71770509ce129b507339625de1c5ce971fe746c85ed4d6f96c8d326e8ba21cc')
b2sums_x86_64=('00b80785e99c35368dba55a4111d92c0523f093ad091a7460b0a68a0a350122a5cd8481d7d5c304916bc706b585184e7751048df01a91184dae80c87113bf387')
b3sums_x86_64=('3b952d20069f09fa5237c24cd715933e7d91f4fa1002d6c698ad67c79362f1b2')
sha256sums_aarch64=('140ffa45638ef1fd1c5023fd1715e2e0c16fc26233475c73a5df95f17faf187d')
sha512sums_aarch64=('fcaaf90acd3298cb599f8aa222f5d2c183e1d6845eefdbb7a4b533e241b60a11a8f47892451ea7b07e18fb8f775e12d1a6fb204e2589b51d265ae63034d8ef8f')
b2sums_aarch64=('f7275c1b4f26ba6dacd825945dbad21ed58ac09add5d07d632d57c5ab91ccdaeee6ec7d27b7cdc4d7068ceb54cd15341fe0e468ec95d770445faf5d66e579e2e')
b3sums_aarch64=('804aaf1a2ad9267cdd2dda1f0d87d874c5cbe3a2e9eab324269c00d4a0083bae')

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

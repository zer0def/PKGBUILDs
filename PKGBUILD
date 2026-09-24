pkgname=datacenter-gpu-manager
pkgver=3.1.3
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('d0a611c22409461e82fc114e3fbf82f572839b87b296980a23f2ee0e90f71527')
sha512sums_x86_64=('0ca5c8e0adfad15cf77499d4eb7d92b52ba80c61034c4cba03e527827f6822649c2d78975f9e8393e18cb1c53d2c108a1c5d8967ff1fa339f7a55d1517ab54a2')
b2sums_x86_64=('919aa04bb4db50fb295ef15f3508f59c0c2864283e959753817aa0208e4f272c0fd7cadab6d3fc58027da547456831a347a5723e6a8e29e42d59beb1e6b70bb3')
b3sums_x86_64=('1c6f4bc79ee0b49f76a305548f972a040b414b9d8e18207d40190a874bdea8d9')
sha256sums_aarch64=('1bced547a4fb9c4c03591211e6f8ce59d81109c59ac92dc5495bd4c67c2e45ed')
sha512sums_aarch64=('31df6cc3ef41ee5cda99d59027d233f538fef7693295eedcec669868594e6ff1269b0afb67009ac9641254476ca700b21088e3e77b93e2219fc93a55b7623f58')
b2sums_aarch64=('e05b5799eb6f6f4ed42b258279401721ab963f85498788960e6c7f50d2734da8288c7ac45c3b473892f93066358afa3d212066da3038d10e2b0fc0551c9ecccf')
b3sums_aarch64=('322e10f143b014397791d9c7b60f83d04ba51bf2d890357dcf3048a870e58ce2')

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

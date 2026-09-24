pkgname=datacenter-gpu-manager
pkgver=3.3.6
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('4524d89ab532f3b92033adfa9a27ae8f8d3b0ff3e691809b05b7344cc24a8b66')
sha512sums_x86_64=('34d24e230ed60d7b85ab06e6ce85046bfb3d8ac983611c90e0cb0e69b52dd29275a013d7694ecd0088bc362049c5e58fc9f2a5fa351324f3b12b51c344f6e336')
b2sums_x86_64=('f6c9496b8b7fc70606c2d6413e24fbcf2a36c8a4efa3bc198a6b2d13d362552579e8fce08c9ea04b2fcc6bc6a043e1331c1c5bacbcd8cab956974d8418447ccf')
b3sums_x86_64=('25eba153a41b46ffd011f68c86661c7257f6ef9df237d4b67060ba91b7775e05')
sha256sums_aarch64=('430fae674e5b21e0432b347c90ebd6be2a1948cd871335f59bbc4ef63050779d')
sha512sums_aarch64=('44369d1aec027d61f3488281bff1b112922379dcb0683c102e6fdedd20843480f9aa37f949dce3bc3ab311a52d4706a62a3e1d01568d4b8aa52f26837b4bdf45')
b2sums_aarch64=('9558866c7126e49b96aa166f891a081aca6917769996bf1f4725ffe324a034cada7f56f855c2982a44a4be7c63f8426bee0793db1ac0145cdce4695fe0d337c0')
b3sums_aarch64=('8bed549e0a518e01268875aefffa042e593294221c3c7cfc975d99e5c504f58f')

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

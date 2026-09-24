pkgname=datacenter-gpu-manager
pkgver=2.2.9
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('53668579be02b8dcb848ed41ce3a2ca37beded7f2e61f0c636cd69384e6b2336')
sha512sums_x86_64=('95ca9393e00c7cc5d7dfc61c9c5460d5c04d57d81fdf7dbdff39fcd4da7f9cd6fa8dc802b5bb268629e63ee5f01aaa6603887d3005237cd484ffb704daf49b1a')
b2sums_x86_64=('35f121cde50a3587866e94b90058933392312db1851cc263b23407b62665175ba0086d370b459f02cb242db3a0455e30e10e26b9d617408e7d4a2675054d1b3e')
b3sums_x86_64=('8a0a9ecd8c396c3ad8870c66a0b129acca8aea5c5bf9288ca350b0d087a10ab0')
sha256sums_aarch64=('520a340f10c536f95eb1d43cfd0d5e26b25ef7b3766ffbae5c2bbb52e78eb58c')
sha512sums_aarch64=('935872f9db2f2b3c38a8bbc99f914bda76cba4c38c988602d4bf8da54b11c4b802bebd73feb998479ce9704849592741da6ca5eb12f84fbce40e58aab6373c5a')
b2sums_aarch64=('007cf8957181b88d654ec93db5efed8dad0ed4a1b9f21c813ef9b9bef4eaae7d1ecb786fe1f5baa5a752e3d3dcd21ff326a5d96c82cff2fd2185b33242d9870a')
b3sums_aarch64=('8f2b03581ca954655f95b17bb71a6c27173ac9c4c686451f0985e3d4176115a8')

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

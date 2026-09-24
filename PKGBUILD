pkgname=datacenter-gpu-manager
pkgver=2.3.4
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('f1c4800c33094352d8de9feb8a50be2223f1ea351c3b9901d98f474f8a8c4f0b')
sha512sums_x86_64=('97abe2b7f77fb9c525464b789908bada6adad432f2034d75fda7f5989271ea4b518e2f12ad2adf7f50554a2c15faaa6de0fa040eb0e24428336cbc3b2c1cef63')
b2sums_x86_64=('879d32499c8c226abcfb3a99dc1680f2d1971ad2a8a827a3674c5de6044df79fefeaf8d8ff383dd08b42b29cf8c815ac2a28de7138ae093469dace06ef603122')
b3sums_x86_64=('85c5aaaa3b54ae9ce1dce333970aabf0061194dc3d65dfd555c18f4c0c0052a5')
sha256sums_aarch64=('fbc6a7fa6424bb157e1c32bba6fc418ee0aeec4dad42c4749fc5a5384072dfab')
sha512sums_aarch64=('d55f3a5ad7aff43f52201df035a3d90efe530cc1ca764d9492721d056f75b177ba62ba37c03a1da1135249e8b3e2792c475ebe8a9914d050b6453905d362a18d')
b2sums_aarch64=('8c760c07370061812cce71883ec01529aece1486d3265d9b4b0c2c5dd15a4ed86b8116cef350c2dd735d9f878552f07dcc531ff688a3ecd12563b8527944c136')
b3sums_aarch64=('f46428d2ac19f759fc92e0442d0bc94f6d2e4b7373ea335ee0a1d1d7428c8679')

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

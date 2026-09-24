pkgname=datacenter-gpu-manager
pkgver=3.1.6
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('417209f4950ebc0f7fc329ff73b72052f1701a263cc88ae6e1b24219011347bf')
sha512sums_x86_64=('f4d90c909815b53990ea35c49a36fa6585e900e519a2b6ac5052a97ea95b7be7f1f8434852f543c7e056cf069a53637b034393b9a6c20dadff652fe02e1c27e8')
b2sums_x86_64=('3b7920cbd65482911951d3f6bcb53f2372cd150ac5842fce615c2f459afd14c88ea0c2df4941c4ff919f24bfc2f177af9fa9e29f8576e198ee7718f3aa521bdf')
b3sums_x86_64=('2381528eb7962c1b4b1df562a55409adb3c3a5a2a416981a41166ab9293d8f36')
sha256sums_aarch64=('8b33d7676f3890a860dc0f9250023d9655be8ce176695779d09f95c4b58853a4')
sha512sums_aarch64=('2dde9e7e09a00363a4625048e49cf32c0c7b4e0c3e0d5f3b26a35092a9defc78bd48c9af0aeaff4fb1957b441a942a5919f0168ef225349d122e9dfcbcf1f08f')
b2sums_aarch64=('ff59211495fbdd12d050c4f6fd8e0edc9e9fedf3ac33a4f48576d9111007ce79e9876773d53fa3d15c444651df8a7df533f02b44f25850e08ace736f53aa3f0d')
b3sums_aarch64=('c1ffecd933ce3d9a0159cd699123226ad26c889db715a048768744e2d8847c52')

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

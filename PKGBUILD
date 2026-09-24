pkgname=datacenter-gpu-manager
pkgver=3.3.5
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('4570d4ff7fb19b43319e06bcecd34ca8faac89ab1d7d025f20e5b39d0a545df1')
sha512sums_x86_64=('bd527f49955d3d078c1a1c84583fa34d6bdbcbfe1b0913c19640dbc0030394650ec88aa5eb93d614764bb0dd24a8177b6be66075c7cf14dea6c4e9d54d49a9d3')
b2sums_x86_64=('14ede69fbcba1289638baf6d08e0ce90189b50446ba76e0e2ef166077ca51cc2ced74d75d7a9f31a84fa99d86737f8d636f60b4d2cb610405f9840195b2eddda')
b3sums_x86_64=('34216708cf55bfb47ef1e40419240943bf559acead999154e760ef78433bcd74')
sha256sums_aarch64=('e926e4cb1c3204ae354d8d7e3ca1b04d1df97a691d9624e81258770fde10e6fa')
sha512sums_aarch64=('df0d1b9d4643fc8c3d80bf2d30f1afe85a50ba02b2d341aae13e45ac3a280813220ba15d69bfc1ec09378e2d7287086c2f840b3e498adae2115b53fcb45ea313')
b2sums_aarch64=('32d1a9b9d6a8472c3f937c37d2270ccdcee53a52deb8ef07e97af023c896359828da36458e433b9d6de8a87c572af2221684b0b82c4b8155e20e8d5198ec605a')
b3sums_aarch64=('d12608c12f0bb64939b782ec6829004945ad2bc13c18d9a5ed6bfb8adba4774d')

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

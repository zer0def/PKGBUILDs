pkgname=datacenter-gpu-manager
pkgver=3.3.8
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('09f4e4a16c0a1eeb91f3a3bac1063741b9f38787ec50b58fb1bdf57db5600aa1')
sha512sums_x86_64=('02c502a66ac0e98a69a4610fa9687878be087be71b58221580ebf50a77fe08acd24ee9bd4eb5ae7ac011df2806744952d93412d8aa83150e56dd369dd9e34540')
b2sums_x86_64=('a06cf40d2e4287143494ca6f978a8df8f9951ac80645f0d37fd873e4a169c65d031498313cedb08803800b35fe4a9714ac4783d364a3f6bae7bb0956b8b3520e')
b3sums_x86_64=('afd1cb394167706935cc985f4bbe050dea49258e49c5572ba01eb63bbefca9ef')
sha256sums_aarch64=('c9d062e22be62f7f7cdd18b2cd74c44ad8e5cc79cc10f8bbf4c82217659cdd5e')
sha512sums_aarch64=('10ad5673d99d39f813d63c100c3a2b56ac253824e59ff90fe97c60563fe121a41e294d78daabccfc03db644a37fed94ee3069d663fc6c0f42f7fe9151806a3c6')
b2sums_aarch64=('b85ac0c0d2f238c8dd6d3920836f8da3d221a8319417734c65d0919befd952f122c5ed737185b13ba922ececf60949750db29d1c401ec55727eb6b860f1f1512')
b3sums_aarch64=('a583250618f363a7279f48d8b59da2a174da84d15aa3e827ba2c37d09a0c7c85')

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

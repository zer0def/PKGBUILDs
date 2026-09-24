pkgname=datacenter-gpu-manager
pkgver=3.3.0
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('7b0ab9815966ba2ed487bf242316289e3f93020bddd88836e4cad2526ca4d6bf')
sha512sums_x86_64=('4aede9c25421cb290d9d68890c26c36cb8eabbc1c9397fc9a9f6d5dc66d849102d3048571501c09b4f65f6aa76df7ebbc624312d7e0ba316127299e320cba76a')
b2sums_x86_64=('ae05a2581ef7d5da05643d5fefa4a1a801990b14d3919319ce9f4af33dee9577bf10db4009af56ab170f4a0ed46655cf65eade17d47c0929634d680b2ec52694')
b3sums_x86_64=('0de961c96de44ba0b8f2c7fdf4ac9f1943cee06d908b4a73176c52f999768a54')
sha256sums_aarch64=('a4e749ef2626c2c50e04d8af5e507e4b7df7bf4e393e94b72242d2affc2553c6')
sha512sums_aarch64=('8b1c9918da15102f9e2244072f804298f69a026d2d239df02a2084707a24779dff508e62c3833f3fd96e513f4a2690d2759e4926f9180d5ffc3b6ee3881d2827')
b2sums_aarch64=('71cf24fd0a6c3f334a263e56e5b3b0666226706aba74764d3b2fd4d2a32dadcfc5a7e3464f35a43ba230a1032f75e1ced647f1db6bcf04d9171fbe77b7f9fe60')
b3sums_aarch64=('43932dd2b0a7cd83f68e6956e0e3b3506003f340305bc4e1eea9c3c2509e8179')

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

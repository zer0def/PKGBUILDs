pkgname=datacenter-gpu-manager
pkgver=3.0.4
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('abfb98fabbf137cfd8dc62fad7cc6b3a54ef64a559152b2da927a24e7b2a1bc7')
sha512sums_x86_64=('b354fd428b375cc8cb34547ba79e5564f1ef3a8e11e99c2f5a39167224f96215c116e7d0c578cc8b791db083ab3f8c19992fc6e53b7f8e52ca1bcf32f539fe39')
b2sums_x86_64=('62da833e6485b45d442997b320c8dbf62261782d3a7179c1d80b997f9db27132c719dd2fbc387157068e263788978780554519807067b6746b01b863a14fe335')
b3sums_x86_64=('6356810765c6daafd1edbd9a9cdb462560f967d0dccefe605d98a40ae487cfe5')
sha256sums_aarch64=('23c5adc7e41f68f2a869fb81d8aa4d03f35a40b2aa3cc9b5fcafbf590658c9b6')
sha512sums_aarch64=('a17740d41857d443ff9d74ca47089fb0c3b99491cf48a411cebee09340daa2538bf18963a94e6cc141b6c2ec4ee07382648dee0bf8980051b23054531a0b5efb')
b2sums_aarch64=('632b9884ebadc9832c9136b8e64629bd85e577e491b37d1417d5428f04fdf99d85d86914bcb93a81631ec1964b98934560a90077e57af69a57797b02de5537db')
b3sums_aarch64=('d8a0af7abf1d67da10e26f148182078dfdb8a76508fae60669255b5df87f5a6a')

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

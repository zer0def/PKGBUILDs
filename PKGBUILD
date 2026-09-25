pkgname=datacenter-gpu-manager-exporter
pkgver=4.1.0
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('cf2a09a7d21a2940a74d873a0c8117ec6fcb91d800caa310f697f5fa9df415d9')
sha512sums_x86_64=('a02330632abf6deb678dd9ba8473d53be0c6537f103dc1b7ba44754b4622031d22f71e5dbfdf03b11343626ae99369cedc44d2c3c392eef5dd6c8cdc8e9dad9e')
b2sums_x86_64=('3feb2dd1a52a9fac0e813c00be01cd681570d85df83bf9efef00c3315c43a4f9f0b218b1bde0cc027a017a551e60ca24e3dc4a7d5ac067696dc13e2b08366bcb')
b3sums_x86_64=('eef9d43223e571cc75c6041ca78dc00e8f72e18cd70fce7dd0b23e7f75462899')
sha256sums_aarch64=('248c9c111501a665b49441d38ba2f41b57931efa4a0069059f67bc24f638fcd4')
sha512sums_aarch64=('2a2e83ef3a7fd2f9cecd5ceadcf72524cb9cfab3a6f29b28fc229d4e82b88da46cfbaa48adf92e537994574487976c76637c86bd9717e21d75b75f4c183a88f0')
b2sums_aarch64=('ee9fdb78453d46d405ddddd006eff14fad94f7fc803012aa848fb5675b083116e9dad31fa8d115617e0e5134f9d77d666879b77bf3859f45965e5a25f539b4d0')
b3sums_aarch64=('fcfb7e1c216246b205e3cfcfc1cae19f0bb8efabd36515ea8878bdb6334edb83')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

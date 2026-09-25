pkgname=datacenter-gpu-manager-exporter
pkgver=4.8.4.3955
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('8ee8f7b0f95aedd7ee20b08c825f366701e0e19f82a63915ee117644bc25bdc8')
sha512sums_x86_64=('6e5ae1ba172c3e488aff1496bc432ef6a5d73d52ee9ee4e5da50ef04fe4dfcd7ab1b558e5cd980f6d1a442c3fced9429020d3305eba7e87b628078363299009a')
b2sums_x86_64=('d246d328996bf2c07075acc22a7acec5855ec132be5627b121b234046e0c85af094117264556d9066c20a49bf8281970539399ebefa080800bfedb7913750ffa')
b3sums_x86_64=('af86b14732bff53fd60ab18d17d9963d36513286f7b8c2558eadbabc93cd79f7')
sha256sums_aarch64=('337272af8d1c253094c611defd35a02e1cdea354fe09b446aa8b1538f7aa1149')
sha512sums_aarch64=('815b0caed79fa43eef85e3a8ae6595560dddd20a4ed47b550be89897a7448ef297657a88112181efaf3172925f10c3b4c076faf97c25f7c6aa310fad2313b5dc')
b2sums_aarch64=('27be055b24bb23e98080b38f53f6ad31d555db51a08d6615052b2f555f2122d71603adb1cb02dd8d3c9354f4bc327954430718ad3ad73ef84e40ed0d279018d3')
b3sums_aarch64=('5cd5950d34e2a59e043d4706346bc0fe2738f4263fe088e999de350c07930f16')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

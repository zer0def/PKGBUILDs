pkgname=datacenter-gpu-manager-exporter
pkgver=4.5.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('9621c91904d9eb7eafcfe57a2e6b962a4522c5b1ad5e74875702ea86ad9d4387')
sha512sums_x86_64=('f0ad00c3d3b43a8451de7728a876bef6afe22392af78c0bc06d460c252fe85083bb66842f7ae1c97e07cc2859a74d08ece321f337c58691d1bbfa94edd0ade67')
b2sums_x86_64=('723dbad6159a8649523bc2ab79566fb19455c86d00b7d2cba150859c72662066516c1a797604bc299a62c3c0bd5dd52c3bfc88fd3be9a08cc5c0d3494cc4c9fc')
b3sums_x86_64=('0086956c0118fa8e8f8625c7465e4a74e1c60664a81893169b28720e548935cb')
sha256sums_aarch64=('a2a8ac5b571a511a4025e9d06c77ab43ffe87776ed3be02493ea8177573e27a2')
sha512sums_aarch64=('d3ee26e388c9d6f008e7021c79339206cc7bb8f560866281b19e3b058af55b2bd2e6fb002478002a0342014dc9795ed17a4d364005fea11495599fb8d2ecfea7')
b2sums_aarch64=('fdf09eb1a952809668c387b1dcf9950033d7facbd712ca1fe9131670fda74e8d52671ce1d11d77b3d5d2a3d94f6f77fd40dbd9e9b49a1d487b66d01735a0432a')
b3sums_aarch64=('9f93b47fc3e983377830f200bb392065fd995bbb87d87984cb06a94b6b8c8beb')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

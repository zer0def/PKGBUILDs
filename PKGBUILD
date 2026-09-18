pkgname=nvlsm
pkgver=2025.10.14
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('343510ca3bdac23c35bff9637dc608898bfd6f97b85a416bcd00116fdc4efea8')
sha512sums_x86_64=('b29debd61268d9b1e08064b023781e34adecb061b5e40cfa89678b4d820b0d7279ecea6b6cdb6a803d4484790d511ab6a0310fae589dee77a3ba685bc70f1c5f')
b2sums_x86_64=('11057b8f06b06992cb07a78920c96b29c17817f63739df8fc3ba2b0c2dca0b8a020f269fa14f8bad2972d85090ed3eec740e584c2e1e27015a7294e52370fb8c')
b3sums_x86_64=('d2ca442da33ca84b0b9593d7ce6f8155293e0fabaa515c5d93043ee4d5933d53')
sha256sums_aarch64=('c4278964288aa266f6496e07ec99238f6e8f420c1eff5222fc98a0b7cca1a182')
sha512sums_aarch64=('af40a3ff1546c06a109528841f3bdd4dde7ad1979d3a45db0265e27fcf41f6cc0fce54a40fddd4fb3f3290aecdb439a62ae8e1912fbc55b4824c1349509a9955')
b2sums_aarch64=('7ed40e098d5062b7ba5689d7db3704e1b5f7fa0cc040b7b4aac8a99e96cc38bd0fef03134ce62be9f96d0e44250c86d0d76a8ee265b1bc5557e5ac1a3dffd3e7')
b3sums_aarch64=('d2bc518030d068c7da18d2f262d780a18101ba558424d1c3a057cd9f2ece159a')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}

pkgname=nvlsm
pkgver=2025.06.5
pkgrel=1
arch=('x86_64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('4130187cb503805eb3c4d349513495bdb3c53e503a5b737b5d6053f623989c70')
sha512sums_x86_64=('fe690537f9de77bf26d8c2982b91c16121ade9b1877b2dda9e7b5b3fed0841e5fa7c22bb30767b5bd45f27176346610b4eda7984b920e80474eaa81961625198')
b2sums_x86_64=('dce8279b8911f4b57839077f9738416e0c2a8c8371d740e0e8973e665aa8334def4a88240ed51b8b4dabba4d42d0657bcae08abb44425f3aa5c468efc5ae119a')
b3sums_x86_64=('5ba5c4a477892aa0875bd680476d79ab6d62370ec0d004ba9c3f513cb368eb09')
sha256sums_aarch64=('4f25e213c87acb9c0ac75ec0d84d7146af310170e0cd187ffc744c9d1d3a657d')
sha512sums_aarch64=('d83322ea43748b5f19d1ea011ad8dde19218d80ff507255a1884bc2b600d875dd3cfe737b29f4edfc96065c2761e4a2eda110c25a62d7cd2528b9b1a5e24d457')
b2sums_aarch64=('cc29b8ed8465759958683b90c4101029e89aa83d7e8fe763a81e07f5e24b5e79f33d2cbcf491a5767fbde5731c9dbf95b6276073a6f324d85c092228a5bda5a5')
b3sums_aarch64=('9d23685d8140f6c09da61dfdc0ee69fed8a483a899f60b06ead3b2489b765f74')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}

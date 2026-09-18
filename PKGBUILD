pkgname=nvlsm
pkgver=2025.06.10
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('f18cf1fad8a70566c2b7364890e7cc081eb058db505bc7e0dbdc5958cfd10060')
sha512sums_x86_64=('55e354cc494444b0bd49a83bb9c11d3fe00e13d2779337c94574158594ad4899f27372a9a62fb58fe45f05f2be18bf9d277c1682f4b0ba5186e203933be28dde')
b2sums_x86_64=('f8f9dd46704bf59516009108d2d13eadcb0a38f40864701e148f16ce1acd586f2b496524dc3c8bfb70619799a1783a01fa6bb0ea85708fc52cd46173f9da57a5')
b3sums_x86_64=('b306c3de875d42dd94b8f17082a028790d3cdf42f605f05d3f36e55db70146ae')
sha256sums_aarch64=('36b4c0260100671d8965d70c82a92fbbd0b27faff8fb63b37b137797f8fa4bd7')
sha512sums_aarch64=('801dacf58e48b370c09e2ef84fb9c584a9354380575c44c9d85df132435e3a26d9f74b645e2a286e903c2776cb25103aa5cecb90ea70531e33cf318e559bbc37')
b2sums_aarch64=('8b3b67dba9f55739f7cb0e7ea2c9fccb92089bacd797e1030b29051267161c68b4d333d5b905602c1216ea780ec6afd2bdd3c9701c6362654dc3be1110aec2cc')
b3sums_aarch64=('7c865272fce28aa1386243b9ae80f70f3d32aaae3a0c5b3af633f428dca27da2')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}

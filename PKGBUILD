pkgname=nvlsm
pkgver=2025.06.6
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('bd77ad2504966450aab15041223eea34538a57e870b7d447c097ec721efba792')
sha512sums_x86_64=('461f0a738d609d196134c037be655c0fdc1d7456e042babb97a18795e2fc3dee5b27db2022d351149ef9e9436722491148cfbe3d6b89048c3b6d390c74edcad5')
b2sums_x86_64=('d571cbe8eff983e654716e1d695a72eb64f016589a195b807db7742acfb6325ec32067fbe31d4628bc6d213638ce2f865d9121e7683bfd8f3990a580e25dabd7')
b3sums_x86_64=('eecc9f531f87cb302824bbdd2a2ab3648f9eefaccc0cbd7d016326263f6b209c')
sha256sums_aarch64=('1f24d590129e4951d57b1ba75f321bc7ec66b487249ac53b771f0d3a5c5ff371')
sha512sums_aarch64=('64df61215cf40f3122d507eedc96ff15b89c115c45070761b1b423de8087c6587d71221ceba07344a38c3b62a25e8377c56f8ea6f97ff1056b47fbbbbb7941c8')
b2sums_aarch64=('e97ab9df095a8805b5c84c50287da36606d894360d7f731cfa5fdf486693fe32bfe23693c9549700bd033538d8277d5600cdf3609f7ef1b179cfdf8f0df19a90')
b3sums_aarch64=('29411813ee2b32de0e196fa2765134a0ae2cb706395e3d6eee7b650e3a0618b2')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}

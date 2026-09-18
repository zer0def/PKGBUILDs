pkgname=nvidia-fabricmanager
pkgver=450.51.06.1
pkgrel=1
arch=('x86_64')  # 'aarch64'
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" != "x86_64" ]  || _archdir="${CARCH}" _debarch=amd64
[ "${CARCH}" != "aarch64" ] || _archdir="sbsa"     _debarch=arm64
source_x86_64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/nvidia-fabricmanager-${pkgver%%.*}-${pkgver%.*}-${pkgver##*.}.x86_64.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/nvidia-fabricmanager-devel-${pkgver%%.*}-${pkgver%.*}-${pkgver##*.}.x86_64.rpm"
)
source_aarch64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/nvidia-fabricmanager-${pkgver%%.*}-${pkgver%.*}-${pkgver##*.}.aarch64.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/nvidia-fabricmanager-devel-${pkgver%%.*}-${pkgver%.*}-${pkgver##*.}.aarch64.rpm"
)
sha256sums_x86_64=(
  '0c4f526443e81287c42336bab0897f2b1eb88d636e3edd86caf27a2e1077a595'
  '29e4b5a415f1f989e630f6c706f522f808ab758ae494b234bd722738f831f573'
)
sha512sums_x86_64=(
  '743f9c9d1236514ad8369441e41478fc2a6c2f5e11b869c1ba51cf90abda80c75919a0ab3bb28a7964499cc28309336717bafadfe46a0baab65e7ca5e521a291'
  '999ba52c70de60fbb0e63b0c9ffdaa410c5f9485bbc7420d798b657fa9af91ea45bb9b8662e77a1984608668e322f3bd45cd597b6a5f7cb82ed43de7d8d84a7f'
)
b2sums_x86_64=(
  '51a61218b37f85020769d58df67ee5c89fe7fed065162cd117a57b057122689cc908822692271fe4d8ff961e612107e9e964ba1ae52069e338bd47ad1ad16bef'
  'cec8f2f296b8ee3828d05130df878298e899e66877ff0b013ad5b6f1fe18e365432658821ba26fa4944cd2fa0cded26e8f6f9d5d232b3534a23c36b6a00b9923'
)
b3sums_x86_64=(
  'd39fffa887d77fa9172825834360671429ca65c662c9f17704052e7f8971f0e1'
  '76ae25c50ef905bdd5f4bdef31928dd84c23e21ef197f731bcb794ed33eef90b'
)
#sha256sums_aarch64=(
#  '29ca34f306502c1ba4b23ed6ff2f028e92724f03c127fb940876f95a0af53fcf'
#  '29ca34f306502c1ba4b23ed6ff2f028e92724f03c127fb940876f95a0af53fcf'
#)
#sha512sums_aarch64=(
#  '2547b773c4c43c31104d866b61fa1f6fd5c8dd064e41b18b7e8ef85e9fe8af8c88608708075b5dc8454863709b20a03bef6aa71b25f2723a518d1189b62ff173'
#  '2547b773c4c43c31104d866b61fa1f6fd5c8dd064e41b18b7e8ef85e9fe8af8c88608708075b5dc8454863709b20a03bef6aa71b25f2723a518d1189b62ff173'
#)
#b2sums_aarch64=(
#  'f6849958447f37189d692f6174405a3de9e1739518156f924d8a242ad535055d6c53a5f7f0626e7a1c50a4b6851dfc61f9526dbdd9cca45b3e41b82bbf7d6d69'
#  'f6849958447f37189d692f6174405a3de9e1739518156f924d8a242ad535055d6c53a5f7f0626e7a1c50a4b6851dfc61f9526dbdd9cca45b3e41b82bbf7d6d69'
#)
#b3sums_aarch64=(
#  '767a89845fd18728e68d8757356a92b41f0193a3525310cfcb2b91fa4523012a'
#  '767a89845fd18728e68d8757356a92b41f0193a3525310cfcb2b91fa4523012a'
#)

package(){
  bsdtar -C "${srcdir}" -xf "${srcdir}/nvidia-fabricmanager-${pkgver%%.*}-${pkgver%.*}-${pkgver##*.}.${CARCH}.rpm"
  bsdtar -C "${srcdir}" -xf "${srcdir}/nvidia-fabricmanager-devel-${pkgver%%.*}-${pkgver%.*}-${pkgver##*.}.${CARCH}.rpm"
  mkdir -p "${srcdir}/usr/lib" "${srcdir}/usr/share/licenses/${pkgname}"
  mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"
  mv "${srcdir}/usr/share/doc/${pkgname}/"* "${srcdir}/usr/share/licenses/${pkgname}"
  #mv "${srcdir}/usr/share/nvidia" "${srcdir}/usr/share/${pkgname}"
  rm -rf "${srcdir}/usr/lib64" "${srcdir}/usr/share/doc"
  mv "${srcdir}/usr" "${pkgdir}"
}

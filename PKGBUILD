pkgname=nvidia-fabricmanager
pkgver=450.80.02.1
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
  '3a61c9936e4f649b8bf7288c24055404f33c8b3eb854214ca48ed0c99fe4de58'
  '9786173810a0f662c055c04286dd884e28c8822322629a4b81e5af07f32cfa88'
)
sha512sums_x86_64=(
  '8b634c45373cef8b6057a9df7841d0aa55a216e23f4bad86767e31a9983528706a9ba67548b89bd969b08db00ba8e8d0545da3b122483a5e465eab369d37f8bb'
  '974cc999abca443d8481b116e68898219035c550e4a6f7b54b221daf9932dcc5cd8476042beee92eb81b5007fab5e60cf14ca19ede5b4e6c04d4781842bd73fa'
)
b2sums_x86_64=(
  'ff4c6b0199125d583ba6b46b7a3f6791701cfcd7ea05991c1baebbf8c397165d1b53811fb108d8ececcbcced2ebebbc67fcac8d5745b8ca9e8d4248698514f00'
  'fc35aae66a5007b9c5719d9a5f05faaff2bbcc583f6bcd8240f513a53a9bd7e4600d28080f6fb536f45738d127d32fd2739447290551907014adb75f373f1a77'
)
b3sums_x86_64=(
  '20be01690715f2b1e8841f2255c7e9da60bc94cd3c922fc2714b7ad6f74df096'
  'ca8f6d6d09a364b78a0115b1f3da187a586f94435ccc023022602d1664ddf057'
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

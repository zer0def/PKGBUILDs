pkgname=nvidia-fabricmanager
pkgver=450.102.04.1
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
  'ba5f9a07b2540a3f163aa1405e94af6eba3e42e398fe6d2c0dc9894dd9ba294a'
  '61f303d749ce664670d648be8b1a3a29758a268d8fb4c1c6a7fc278af241271e'
)
sha512sums_x86_64=(
  '0b7aabd96adb4d8e0df449aa127bc3aef27328052b22391d0417fcb28d9361f6eb2615e8c04629b1bf4ce22c90294e2ea3eb731a1abb2cf6c8c1bcb5742bda3e'
  'ca5e9b647e7de8e2cd5cc0f53c27b8a678f9ab075f5d7036bc3166e387bed53548c0e74a4a3fbdc185f1b547ce23ed39faa3ce38b8c79284e35b0a4a1aafc3e5'
)
b2sums_x86_64=(
  '56201d969111cda610bc0cdc875fd7f1ad6e58c516dcd9ecf3830607bf205dc335f6a82f83c9df5f3b6fbb305f3604f108f87a8895686e437a8d5df8043785a8'
  'f615e689090d0d3e276cc5600afca09c0b671b3ad1a3606474905d961bfdc51d575d2b4453851f5880cfb85b95cef0e564adfd563624553d8e713c32747d9396'
)
b3sums_x86_64=(
  'dcb9784620151a506efe49c3314d40eaca9f0582e2982986294e3a485abadb18'
  '1b6bc75a98bc183a095cc29110c367df916b1daee30f79744f07f393ad8ac22a'
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

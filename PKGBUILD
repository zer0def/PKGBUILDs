pkgname=nvidia-fabricmanager
pkgver=450.119.04.1
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
  'c1f617312ea2944edf33f5b1a3e2d4841fc67826fc8ca8196436549b2e84e282'
  '18f811d995a5f6b08b12735a87a9349f1e918315e2f1342d8f5c06a6da296fbf'
)
sha512sums_x86_64=(
  '0779cd4c5ea6f1a88a528859f85aa515dba9b4a0f191300bc99360785290debda7c533d1c6d1115a09d6cb03c186109483597bf8a4942cfd9f9652d68388b0b4'
  'a88d5a9c90b1b890e8df6b5332f1ea4e53017a57cff5b836b293c6840ffd0dabde5adb3a88b1f226c38eba33f830ba59a51ae5cb927d2f122798d6f648881583'
)
b2sums_x86_64=(
  'ddfd72b4591927e580cd4d1d82c96efc48132404955a9b00427bd4b2d463a1de4dda91287da2faba4d032c283960b2909ec4ddbd59eb7c8e34cae33e2692f726'
  '979ec95e3d6726a74179e655e6202b4ffb73adddd7bb3296d32b64be045d3bb4dc7f47215780b56b6ade386051cc3b47ef3f1f25a222767abd879fbc52d9fe05'
)
b3sums_x86_64=(
  'a4922417b4a06afeb6af8d8f7df3df83fb38c986ddd2472485ef2d3de80a9ebf'
  '99ff48a74c9e69abf451439906b94e8c7f09c070ad6a56dfd186abf0f08726f9'
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

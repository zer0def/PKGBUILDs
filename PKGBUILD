pkgname=nvidia-fabricmanager
pkgver=450.142.00.1
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
  '8d00099fc124aa48c97f88aab9970b0880f6314d146bebd91dd3ab8999d5838d'
  '14a7adafc9fa2f12c71b406939bdc89f63d4c3e47097d0a9968e17444c4c59c0'
)
sha512sums_x86_64=(
  'd27dcefea4200e66f07ab50ed4f95108e302de51b7429000c273e5dcb2f0169612ead2fd717dc329d53f9506d97a2c812e077759685700cfb6a0a518218c6f8e'
  '71fb4a07818b144c00d8165c1185b113a9db0519e3889561cb5a3c7a7bd71d8e9a53d59c83fde9548b11aadbe8fdebac1047bdef7305b14c1c522f8b941d7a96'
)
b2sums_x86_64=(
  '2145247c30c7e3b08b5f5d14f7e3d9f50b08255a547c013acd3a0a10c28d97a4f2c74082c4f0a127d0ace22b0426d5ccbd0c1d9fb673bb26a0835f902800890e'
  '5529b255212d419596646662916a38d8ff84858e54e6331e6c08c2ea825fc1d3395ae80b15f672e8c9433db654829076209f5ecd1f1bb631fdee1d2a0472ba91'
)
b3sums_x86_64=(
  'd52061c11c7bf1d8b5dc5f2fd1b22ba1819bfdd436c18840bfff96243dd01f83'
  '8a5d404ae70d8628a7f74f892ec6c65a1ab00b45f646dd8264ffdb88872e4a0e'
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

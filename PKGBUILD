pkgname=nvlsm
pkgver=2025.01.5.1
pkgrel=1
arch=('x86_64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" != "x86_64" ] || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/nvlsm-${pkgver%.*}-${pkgver##*.}.x86_64.rpm")
sha256sums_x86_64=('680c1275e00398184dde594467b9ce75bc0cb2c1f1d4d11f1cfa832ff15e6a72')
sha512sums_x86_64=('8267a65037fc375e80aefad589692f8da70a2b37067b3e09813269b01a6c45d0ed3dc144d106793a58c51533cbc02f68b42a5af1e579d42f9a82d5ffd749f237')
b2sums_x86_64=('d9d7430139bbfa58ff2f2c9bdcb5709616b53d17eac45828f8b9e7df544839336e85814a2392c20fbc755315813b1cb163eefa0114302c3c70731dd6530f2289')
b3sums_x86_64=('51e73227fa1533b887741d151e43c1bf45a70ecab30fc6d3c7e979c018a7a472')

package(){
	mv "${srcdir}/opt" "${srcdir}/usr" "${pkgdir}"
}

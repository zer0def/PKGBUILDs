pkgname=nvlsm
pkgver=2025.01.4.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" != "x86_64" ]  || _archdir="${CARCH}" _debarch=amd64
[ "${CARCH}" != "aarch64" ] || _archdir="sbsa"     _debarch=arm64
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/nvlsm-${pkgver%.*}-${pkgver##*.}.x86_64.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/nvlsm-${pkgver%.*}-${pkgver##*.}.aarch64.rpm")
sha256sums_x86_64=('77fe92949690603135232fdbc875de2eae7a58beb4796142ad1ce09296e87d8d')
sha512sums_x86_64=('bfb6afebc81758bc46d29e9bd41986ab683249cf357a766f811ebdb25b6a60e6f7b6b01a0275a7b74c2310d12ebf311b1141a8312e9ba90d80c817e3b362d9b9')
b2sums_x86_64=('3f9e51a246754f5eea72d175f761e3fcb9933622adcc677cdf599571da8052c38f2aba9e29f363c8ff95c9f37de1f8a6fa4a2a28c19193bf42e5450373c75981')
b3sums_x86_64=('a942376e5b0b8272e7ed28ce0c0971896b41ab1d13c9a1baff24a153c123c2ae')
sha256sums_aarch64=('29ca34f306502c1ba4b23ed6ff2f028e92724f03c127fb940876f95a0af53fcf')
sha512sums_aarch64=('2547b773c4c43c31104d866b61fa1f6fd5c8dd064e41b18b7e8ef85e9fe8af8c88608708075b5dc8454863709b20a03bef6aa71b25f2723a518d1189b62ff173')
b2sums_aarch64=('f6849958447f37189d692f6174405a3de9e1739518156f924d8a242ad535055d6c53a5f7f0626e7a1c50a4b6851dfc61f9526dbdd9cca45b3e41b82bbf7d6d69')
b3sums_aarch64=('767a89845fd18728e68d8757356a92b41f0193a3525310cfcb2b91fa4523012a')

package(){
	mv "${srcdir}/opt" "${srcdir}/usr" "${pkgdir}"
}

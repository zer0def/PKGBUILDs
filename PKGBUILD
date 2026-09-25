pkgname=datacenter-gpu-manager-exporter
pkgver=4.6.0
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('1011ba15bc23e7407fcc947c1a0369f4cd556fc0493d4a6191d90cdb1beb62e7')
sha512sums_x86_64=('ed029284c27da0732a4f9830f0e546a2e0c24e78dc6e461ac3250fe4d2cd84d0b90bf859557108bddf53353f7ade21e5f6dd11a39cdb1bc8efad85bc671c7a21')
b2sums_x86_64=('85dedfa5f3c0417b1d793581f0387d68c7393d53e3752825844867b23f25fe997bc4ea9688778ddf8adbe336e59fd9d5206718251e2503199ae3f5f9b687fe89')
b3sums_x86_64=('62c2b3b20c81229693eb65cb0054a79a94aaecd77a704d8a4780da6c09a581d6')
sha256sums_aarch64=('ad1d06da1aaaed67a21a1072efa5fc1b3ff711f5ca847e0fcbf9ccc27cc94339')
sha512sums_aarch64=('7ebf5c808dbb100a7d71a11aa67abd0eeec58aa932467ab8b0ccd556b31cd404f720b2ca3670d22a6a3d9d857fef74b630d477a43a0c49039fba9da7570ce946')
b2sums_aarch64=('8899d2d027fe7c1e1dd76942e03a4aecc6143a60fca84ab06cf699d9e1be6c41fccfe3092b9340008bdfbc2dded980dd373a558fe411146463e5a964dbe6aef5')
b3sums_aarch64=('502ccf04d61beb9b17e504730ee655dd00fc5330bd880b5bbd76572b0eea2411')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}

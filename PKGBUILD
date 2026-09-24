pkgname=datacenter-gpu-manager
pkgver=2.4.6
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('dfc83fc8a40a89da2092e33698683bcdf0c16952be933f5e48cc0dcb1cc24305')
sha512sums_x86_64=('739db8a6a2bb0d83cbc1b9c9cc41e5a0f83aeacb62ead54d418eb48d0dc0fdd639603b92a5e85c51109f5b87cde0b7d86deb7879a0d8e0ead53d4ab7cf15bcb5')
b2sums_x86_64=('36f6ff05c31be8fde0ef307024c30ff1ed041b8438b83718d17a148d24ce3df3afcbac999a0121fe14667b606c26bd8551c6354f00205a90dc4eea33c6128778')
b3sums_x86_64=('e89bdc7c6df729d909c5ae9fccf8418967dfff313fa9c10f5795ab44a803b4b7')
sha256sums_aarch64=('5962b6049ccf9498ef0a379b4a7ac8e9e23338c7f262e7c38fba8429d397ee9e')
sha512sums_aarch64=('79bc0d0e2b5b6d998cd0dc7e707ea20852a1cfbc4a10c679e9281a42f23ab693be07fe9a62173192665466abd3fc16e391814435cfb915c204df15b4e99993cc')
b2sums_aarch64=('54f68b2858ea65aaa286eeb4cb60a515e545929ae63b0fb282efcfc42ee536112e12e68af84340c3e68edd52043c2b48974befebd14c5b4e5c608fce994208d6')
b3sums_aarch64=('d87c322e195c754fec75b1ab2d5f28f07b6ddd811a73e5b2ac9440a0c0de1f61')

package(){
  mkdir -p "${srcdir}/usr/lib/datacenter-gpu-manager" "${srcdir}/usr/sbin" "${srcdir}/usr/share/doc/datacenter-gpu-manager/examples" "${srcdir}/usr/src/datacenter-gpu-manager"
  rm "${srcdir}/"*.rpm

  mv "${srcdir}/usr/share/dcgm" "${srcdir}/usr/share/datacenter-gpu-manager" \
    || mkdir "${srcdir}/usr/share/datacenter-gpu-manager"
  mv "${srcdir}/usr/local/dcgm/bindings" "${srcdir}/usr/share/datacenter-gpu-manager" ||:
  mv "${srcdir}/usr/local/dcgm/scripts/"* "${srcdir}/usr/sbin" ||:
  mv "${srcdir}/usr/local/dcgm/sdk_samples" "${srcdir}/usr/src/datacenter-gpu-manager" ||:
  rm -rf "${srcdir}/usr/local"

  mv "${srcdir}/usr/etc/"*/* "${srcdir}/usr/share/doc/datacenter-gpu-manager/examples/"
  rm -rf "${srcdir}/usr/etc"

  mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"; rmdir "${srcdir}/usr/lib64"
  rm -rf "${srcdir}/etc"
  mv "${srcdir}/"* "${pkgdir}/"
}

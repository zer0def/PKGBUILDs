pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.1.0
[ "$(echo "${pkgver}"|sed 's/\./\n/g'|wc -l)" -le 3 ] || _rel="$((${i##*.}+1))"
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-core-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
)
source_aarch64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-core-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
)
noextract=(
  "datacenter-gpu-manager-4-core-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-devel-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
)
sha256sums_x86_64=(
  '0d1909596de98a7588e08c58b00b6004641a5aff3d2f8884d79dbaa0527bc315'
  '0a014cf7c09341a9f860fed78166b6411f484957562ac0b3f3c0432c10b8bafe'
  'a6a6b9edd125c0afdb0bce6c391c236cef48bd66f5bc10146bcddc6c51087bbc'
  'ce76f360b2b800c4383d08f78c6921754259e617043cda16e3082842d1ae27da'
  '1866f8d4efe9e944891ec51e0381fe588dbbff1c542e1fd137d7cccf557dfcb1'
  'c296bee4f5045a4895749e6c3f5772226b26ba1e07270a2e88eb417e2a95e5cc'
  'bcbf4f279bc19540fd1c1a9c93ada4a8f91c9a4e6668e2ca305f293561bda296'
)
sha512sums_x86_64=(
  '9858e6ee30d82e16e952d873616a7579af326142453733b446859f140934719fb5c72ff5c469024eedfe620935500b001965c41dfa6325b173bd4d70c9082a49'
  '4e8490a024c7fd34f162128c22babfbf65914d1210ea5647dfee9d6db18e42650d85613480898649298c253f883b80eb0bb38fdbb9d672cd0856d5211ec5ef57'
  '9c2ef2343b5d36f0f2c27a22d80cb9e38f4c88320ece91e71a9b898b44cbe054afd0d2aeede2420fa00bffa8e61c31a789107dd5a314df65850e0cd5278011e4'
  '2cfab80e4144f3b6315978dd13065203137ed7ad4b550f0d35f533d682d15c9bae51eb836e8f85cdc09eeba3eff0950b10c7406967c721576dadb52912329a2b'
  '118239a75588c0cb7e97a517697a2268a66642af29bc3d6c4338733e53a78b4bc61f561b15fa3913775b9bdfb3f25c5e073d7116ca76b2a2bb6ec2ea6ce1e486'
  '5585f7b1eb46da2759ebbba37bc09b26fc0e0358a7254acb6a9b03b60b863c9f154480d2ae5e62416dfecc35b4a6503c7f59d776438d4e622cef8f0b8ffe21c3'
  '5b27b7f9981e5d5ab267949ae1a03629ac23d7028d88563a287590d0234bd5a30045ef36b09c93b2bc1305e851740d8e45e53444e0edc054f72e5398fb30e356'
)
b2sums_x86_64=(
  'f124ba0e1b98a8ba8b524ddee42f09f583d0a14b999f6e2538d36995b14425eac446d0b79a975a805f33db53b59eaf815c4d76ef43ee46b4ac2bedff4334b924'
  '5903b5511ee7ebffd2165e01af0f6fe5074257c11f2e440366b6e11afd178c97ab675c6aa7a739aa59f8b2526a9d60dbf4e871d9a06a3bda765ab5bd89483f80'
  '241e1e46a5e3dc740f733f975f59c0ff86e930ee33b3cd48255b97e6b162c43f97a0575931c29a588e0a42b926e933c982dc5ea91dd75e7cc2a281e333b204af'
  '62c2a754e7bbbf260f0f6a82b33f14bc6bb729fcaeff8e2dab88f56e52ccce7b89d2bbac9d10c87d8973269a1aa6f4279a04bb9254fee179afa73ee334aa006b'
  '5c900731c2e47e2a762a9543f3ea6bc6dae2d7bdd9f5db6a76cb4e86c06a2f46ce30c021803c1e8f10567a0eb5edf8bfae9706c870dcb3921610d1ad14418a04'
  '3157f13bd6cebd4e78a2d8755af68e25785f3508f09371589661d424f01674eeddd30db5451a9535e6652bbe49ecfcf7fe557a2fe4d22d2b4acb43bdd37719b1'
  'fb573259ddd73425d8080acd313151d8412ed263b159d64a92e2e92fb699596c8d9630486a6ad4b795de8c7bd3fb2b823146e212fe0727eccc452d04d9bcacfc'
)
b3sums_x86_64=(
  '3be0a37570c4fb53f342fbf444c0c411f0c7373f34d977e1860cd998f20a0302'
  '0a1ae85cc6c43542372e02a6cd5a8523e3c0fc4db317fc8cdbaece57dfac15a8'
  '8471216f863b9b2a3ad786912543af95625754138eb0970c631ebbd817e9a967'
  '6fbc5f0b2f57054f6657a1e4c9b30c0ffe970b36973b5dc9f77e95d403491a3a'
  '5007ba8d84ea22811fd1f0dfa1f948459d7cd7935c3a3b16a1bad07a1d8232b3'
  '486635a9cd1a0432d98b54c1edea82c2e58e896f0306f2b4e61d57ec4357e645'
  'd955e49809545451be8c3c010ee0fa63b0cfb50b17cadfeb54c277cd58d18d9b'
)
sha256sums_aarch64=(
  '2481b0c541422d66d7548b2a575e5288a63f932d714947b663677f9004e61b71'
  '9996c9cf83e01db3be11102465ffc8cbf3b3d850cfa401801cc800cd433f5fe6'
  'e0a97ed6d94b64bcb489d79c42fedd55ae6e80d43a72a0bc61be26581776e66f'
  '2f2b378842beecda174f24f457720bdd7d25d8d258a5539cdca5f8c99f91afe8'
  'ecb36c135c1a7602a6973221fc8ee0634983bb314b5af8f9633761aad6fdae44'
  '06a4706185a8d818ccb682a7005c84a34a9413d45fa37df57cbd4c4ad486ea64'
  'a30a0d294ca63d2121dcc7ad04b548bba750174204525e5f65211ff40a750390'
)
sha512sums_aarch64=(
  'bc5c14bfe4cdc40338d75c0ee9317878402b627c7318250246df861eb30620e65931089f801c9c4d4c56aa33add69e7be1750e3208eee405c5c40badf791e5f3'
  'bde3bb012d1c3302a4d790519c1113a0aed519aa9f1666ec096376a4b1792c3f9d4a793526e2db52112eb02290cfe72e8227c31f6ca7f5e0add1e780820d423a'
  'cf69635016e304c23136f81793049c4af112eba2130dc9d0976ffe554bcc7448b09c6ab3e535f5ccbd4b8444034fbf9c1d8b7881b1bfa8c439af0ba2254d8c64'
  'd2cb7a1c9ac9c1cac5d8af06bfe9e42eefdc8c9bba14bece435860248b7460dc9b57a25c4754fccf71bbaf71453c9eeb5dcc80e70e2be15c08c42b2ab96a0985'
  '16af36bd3d44dfef225daa51a0f7fd9331b4eebc59169330e77b92efb339f51b2edb0a5c0cdfff33f3c17015a6c012429ac28616cdc1b743fa5a57f013d4ac2a'
  'e0873e9f51278a429682f34bcebb520f40339fc929648f8db28e5b9d1689a8453090bcedb1eed472f52b85adb6fb5b1cc01df0871439bbc180f3c40776a1dab6'
  'd56fe3d55d7aa0f09b92322e2f053568a2a0301d7832c3f843cfad0a9fd1de1601e7d4d8b41641f30f20bd5f41f1e574d1e35ff811a05fc3075062350bcaf4f4'
)
b2sums_aarch64=(
  'c60fe9bc123e14b9c99fb065c58ba5352b29d3caea6f3950a99ca3d3ea4f3685aa8fbf6c7a37e82d6241f102dbabe5945adb42dbdec19e3b3dac28a45f2f850d'
  '28b9316d8ea208cb314138c51b485e08d4d2fdc3eee8af52bd6beb2a5a0b04d0596bc8c61c4cd498ac5dd47995b0d18f48a0e696225c8d654b0d5194d28a2c66'
  'fc7bb44a8df9e8c9ba38b7e6a7da7ce289027ff2750d2ec3a99096c81e0c8a66592ce9ab0e1e39ad583bb9da40ff0d2fe48cd1ee9dca2d20b52e40c2fb0c0b7c'
  '47a9cc726185618a4c6bd8b691638d41c509bd93b4bdd8d5040adb18254e235c023ce9db2610d197e9ecd39f27d3d9f768522027a6830cef45d0d662e82a9621'
  'c8f6c5b8984dc643b8f7bfa5ac1a35483dd6370686ec886869fb1f6f392e57458bdff6355e5b5d78416a2c4940d942d48de753abe3a437e188b1d7ba969da021'
  '5c10c2a91ae8181c4336d30a9c957548e66262f32eb2be63c47ae7a938d8d75b43cc265f68e89bb5d1b214a102762a972e12ebf1c6499717d9e099cbece24c69'
  'ab0a61a4d9e7b31f0545158484a09720bff273f3c107342a6a53c4f5fdd4df3c9bbaf66753c2b066fd23f01cfba88265a92af868892c8073e0c800cd22ebfd87'
)
b3sums_aarch64=(
  '60efacba227ca332b2ce377584203458b1247077b2b7570857478f2eddc65782'
  '3fd1c24f26d01f66ecac299f2c8d1e58c9c7f4c0da537343033148e48505c4c7'
  'c3dc0a8b5fe2ef403d9a8a5818861d32dfbc22fdee5c1d9a597b3a7d02a4e42b'
  'fddc5687fd6f3a3db66de67a9071e984b6f802ff2b845a5ffe894e31a272c82a'
  'be7e485cbb17da59128c4630f66b73b2872e1ffdd61bc6e7d411e604101e6157'
  'eb2f6571008b1e5ebeb9b52f02f5785d1d0183875ef8d86d817a726c328faacb'
  '53297a5f48f87f800de208a8357f6ce8ed0fa1433fe8aba8cc4c9b49f9f48de2'
)

package_datacenter-gpu-manager-core(){
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-core-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-devel-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
  mv "${pkgdir}/usr/share/cmake" "${pkgdir}/usr/lib"
}

package_datacenter-gpu-manager-cuda11(){
  depends=("datacenter-gpu-manager-core=${pkgver}")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda11-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_datacenter-gpu-manager-cuda12(){
  depends=("datacenter-gpu-manager-core=${pkgver}")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda12-${pkgver}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

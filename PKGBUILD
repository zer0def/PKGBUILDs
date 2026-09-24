pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.3.0
[ "$(echo "${pkgver}"|sed 's/\./\n/g'|wc -l)" -le 3 ] || _rel="$((${i##*.}+1))" _pkgver="${pkgve%.*}"
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-core-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
source_aarch64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-core-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
noextract=(
  "datacenter-gpu-manager-4-core-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
sha256sums_x86_64=(
  '3e1a20f1d4e464fb91e7736bde781606477e2adfb3852c5ed46f146b899d6e16'
  'ef6f3305a7be61388dbbb4f0fbc633da43bd63b2d708a8a165e9f4f4eeafe129'
  '64223fa9e197045d7182cd9552e23da1364f7cb8c2def68a3aef5d7f95829f79'
  'b6d9fd2eaac920534435b35b8949171e06ba35b3261f5000db847b885a9d9c64'
  '498ec7bdd0af05948223dfd2b19a4052cf26f244c97837d24b09d86bd10051fc'
  'c3f70338353581a9b59ebdf91c40a97c18d5b6fbe9db3e133aff6e30f72beff2'
  '70e9350f53123b3c1da724cb2a75874db695da0f06daea1693fc727c99089b7f'
  '89ff685822b0af37773787bb0f672401f339771ec797db07ddd1f44f8779b02e'
  'f2fc43cce028051352268ca6585cae9362cf9fa089050f967e008f65a9de96f5'
)
sha512sums_x86_64=(
  '266db7044de924378ed0bff0d77d4e9a9a2d3e6a1042435c97b3b14dad33eda3e9248af58a71b71167d63e7332b3371b8d2be174bd9a28bf6fc39b85c13909e2'
  '66110806504c435002fbc47d778208d8ac0957ead840ce86802d305f4679d20d2d71b9eba546b2f51fb70bce45fc8169a5565d867eeb6cf41b1879afe7d25197'
  'c216a9e5e222948160fc52ead206099595ea01abc410138f92eab0b5097b9a7d2e09a7e5e0cfd555c113ba86e4896517637925d4f3418b27cf1b99a376e40ab3'
  'acaa4f7fcb5d372b0c96a14082362a1970250c9b42ac352cecb7702a0999d1fb8031830d16841933be648a157c11a6465b2adde8af35abbe2927b8e381b37635'
  '5387de7c127be1675b871b764e30c500782ff8c3c1975bf4c71358895868b836f6027bb9f1a11c27cb172e7cad68be49b7ed5f68be98be7546d23b2a6cc47322'
  '18481b89328abbb119aad689efec014db0c17760c6a433c6c178c38fe4a71c7b3589e4b8cdab84db9fd302ea2209ba525c2d3283bf0a569a97eece3acb2311c1'
  'bd21f58069b505a12f8f28da8fe32b43943198041cf4f047887b3bb96326e17a7ae4f9eed926f698d1f01446dbdb6137c283c8db49ffe9fffa09db2b83dabc58'
  'a81ad1e7c73fe9a255eb1b253e3f75f3794306acc16d10e4d948c374331f07ee1f9d64cf8c14b9d3ff3bd5cefe672056d962e317ff4ee5ef7da9c3bf2b456e7a'
  'deb0e6c273aa031a31c42f211d7e7415d5351f70f63fc990feddfb4c1af39a7ff0db436f6d6ce810b927bfbb2633890ae9c7aa62f2018f9078d2697f8786582d'
)
b2sums_x86_64=(
  'd59b1bb745644c440766797cefa37eab5fc5080355c2aac173141910925c8dc375e361fa2dbc4c65339f9f54fcb2d076337f41e5890778dd8c04c6cc189d370b'
  '41435ba91c351bcc6d31f09decd5f857eea73729db5dc2f9db996e065af54427b8a4cfab014e091a1f694f3dcfa510605f1ac390c43e6f73b2d4af950ebea121'
  '94defbaeb43f61e0f1a3395803238d018fdaca7efbf4ecffb0595c7ebaa3a425cbcdfc3615e07f73ab7d41f82267afd6cfbc809cb80a4e707304dd13c168ddcc'
  'fb56164689a64302b027521c81c71bfa0f52d60bb98223bf10a80ddd1aeaf9635fcebda82a3a1abac75b847a7e48a0a06673abda5dc309cc5b41637ec0188523'
  'a9b482048d5e16b8fe3975ab1b17a4f248c9681c58da791329145126f79a83d56329c4b0aa52c439aafc996fb80c0b02d373e476b5fa9a2cb4e3f864c7ea4f2d'
  'f5893daa266e5058b175cf99295e9fc955eb3d400d210b6e721d8e4dc9709f05393a039c042f4c8db1905466312deba1af0a92a86373805310fd8d165b57a4ec'
  '7c0d138daacb73fcb43924820aaa72f6cedeb294ea1130ebf044cf4e3a6e27e59cb17b7b52d94ab910f9b3119620f48d843f5532f7c0a038276ff71a54ed09a2'
  '2722b831d9858c7e2bdb5e7ecb8b06b69a5cddcffc526e9924ab054d569699ae94890832b28cdd737d5297c15697121f027386366dd61b0b739fd900bcc9c1b3'
  '595af656aed7654e1dabe47f856700070cfb653cff2453c09073eb96bfde56521a71e6f78a826739c72ba2ff5c01e7c189ec6fcd24c25bcf5e0d32b51077570c'
)
b3sums_x86_64=(
  '80d483f3d69821614ada28882fbba4abe56f10de0388011bf5d7e7f201ba06d8'
  '9bd7f2d20234e58ebc22e146e6c09dce74b04c4b137f6a890c43aa34d86fc57f'
  '2751d6a45344cec9d76b43a302aadda060ecc636a47ed25f5ca680b78aa1bae9'
  '37b95847279734985aeb53179667f6ae224c100fd0fc0b51c7565568bfbd951d'
  '1f1363eb75ea09444fa19b1baa5a177ef0b2bcffec61b4763b77530d23b8b1d2'
  '5e9f3c52d11d2e5f78e877f2c2def2c62cd5bbc7ed91d2d6ba6ab3abeb81dd4a'
  '48f25d325314cefe1bb06600d270ed5b5056899d171c8f4bf5e856c7bb22293a'
  'b161f2a96fdd388a988089863c3b2b621b7b7f2f7fa5d2cdc13a8bd130d16a8d'
  'a8cf66499c6ceedb13e3462e62047cbc3f4005aceac69362e558c854b4f7579f'
)
sha256sums_aarch64=(
  '0bf1e2581de43b99f30eed63614bb350d969b648333788c3782065f1badcfbd1'
  '9481c361cdddf7b70de24dbc7771e7adb05b31e94b65dc30c44625c82f9ae72a'
  'a7cff21447d171872ae0fa26c6a53e9c04150b64eb27b4e311f4c8e971c30ef8'
  'b25b9585a72dd1bb571fed4d49fe7552d34d40cfebd7689b4e62139da24709d9'
  '98b57ef391481f8bcbec29e2d9c5502b36ed445088e194e3fa802c26506458d6'
  'ee9be71eef8785598352bbc4f5c741fe02665404a7bf4d57fe54721a4e39f6a0'
  '59e789c79d4386b3b4658c51c2b7735d140784773e125f1f4fe3d3b263c2cb8f'
  'b4dcce0e6c3ab00786ece0c3284c927c72bfa992df3dd11d8528a2e9315a5777'
  '0284b13faaf4201a30143e360323b8e8ff47784eb44629c200ddd11c8c8dedc2'
)
sha512sums_aarch64=(
  '91f0766cbd077c261cf02901df43c0f38c5772cca0bcd4b1bfe621fdd90ab0e1756a4df72916b421d29c65b715f2a4248c48fa0f877dfc102579c6511e8584b3'
  '734610bfcaec392edc0c775d5729187b875c7f42aeb2e38e88ad9ce9597506fa2555cd0aab9e703f107a0bd04cc457f135c44140cd708f3eb919102d4cd62106'
  'e5013bedc0b996fc942713322bdcd72484bf5fb142cc2a3ca173144f17fa6a4e3681cc1b0a03764fe1c11ba14a1f89630cfd6c829f58f648a5a420a98a414944'
  '7b424c645480249eaff8f6c3a2af046d9973c3874fa522589d1f42b79d728a743d4e6fc4695134fb56efc7790b496658a81e369fd854b57a965ccde6ab3d5ebc'
  '37e242676d8a1c9303f12f12b5ad9642e8cda0dff2059a8ed19dd792a06a89e46e0ca8f3791ceb157cb7eb952ff4e0bc00129837b88006b1b66669d85a5fc3bf'
  'c31d8f727786cd65f19adb43a30a037fdcf5b58bc3734446b7f7956126996695dd05b11f1304a35919640741770a81a6e70cbdf80c65157994a78011a1fc7bad'
  '908b5c1c7eb24f13d890ca2ec6eaeebec70c5700000c1f26754a9ddc8fced614dfbb1b53891f1a9bbcf3e9ec733daa1d773db1e84d688645ef5107f4167c91f9'
  'b513ee5ce200ec6562918e12e2aa4d0e544a4e4b9926166e6cd242f01fd60cca1bfb5d0600027c9849b44fa726458dac1c65c03899631a5b0622ed1e89e6c9f4'
  '87917bb6d88af89fb678e517b0cc60edae4ae184bba7fb1ece036d39694da72aefbd9c6452d4cb6c186b8bff734a483e988f718cb986b692b5f31d1489c967c4'
)
b2sums_aarch64=(
  '861ca5eb8b5a0f488f4a63941549f3492f53bde958268b4fd7505d2427b3ad70cdb63d4d8fa51016f62167559adcc002813a5e9b8e168b8462883316d29af02c'
  '2fdcdea5342fbbdea0045a9fa66c51efdf476af09d0251159f0e8b4b25e7350fe43b9d1d549e6da241c61a36ab8a0ed57281cb995b47f375d15a23891d8d78c8'
  '4b0413f52102f9816f14e6a6100f6ba19abd2b72aa0789f1b94f4ab63629c67a537c2fd304561e1616ce61cfa657b1014ac7c3be1f3070c1e3dc7558fe267b5e'
  '3e1dff1d8b3e4c7e2767f1d6092002f7af88c30c327327c5282988003bea19cb3fe56231cee097326027ec7cb697084d3249c040ff193177145639a8c618e4d1'
  'd056b1c9bf152106d5acce8648a44931b1d75ddb02449b4495a1226090c7213db67186def5f17db2b196134a2d543f8c5a3d8454567fe17399f02b8633338139'
  '4e19c9b1a97514106f36ed1a729687b47947b1a8d38fd7b8feb049cf5f1ea923b675a897e79347554e39c2a4c6480899fb438b4ffd19031b127b3efd921b0116'
  'b36943b5f48f1e863cb2a69753a6c32d6ae7c006ea135dd1c236d97f8cdfd8ae54e85df5a8e12207865fceb7d48ad03ef06af5d985f67ffb1c73b7c12971738f'
  'd9ceb01704548f93691d7fbdbaef56dc6cfd3fee76defe34a5ea32b95eab0715c0489cfec4131463db6b12cae70cce83dad4e2557ceb1ff9242831f9ac7539a7'
  '6507004a07a6ca0b225091ca791fb7f5749c378c8f3babb39cb32a36b762732b22abdf783f925ef99f2e0116511b968e04a6dc6790ebf6e32e02104492488951'
)
b3sums_aarch64=(
  'b9df6bcd3e535b522ed3ccc9b5c31a621613566a87d1b190d0b6f1d5f30ad5e7'
  'ebb4deb97c2d38841511ddf522fb06db9797e7684f55dc73158c2452a8358857'
  '9748e5df41be849075c3dde76e7716016e6af48155c8476fc9282b626751a561'
  'b9d229dd1069e27ee2c2b0ea81577d89b2b31f79598c353064d688ce4c541eaf'
  '41de72d00e7f989308975ea14180f35ce6553b5759be2dea2532cea08b935df4'
  'c515b4b77ab3927efe8c48234298ffaee2d74443736850357c168381b87a6a0e'
  '423e536e24cd0e3d2ceb76ae8c2e79ff1d5987d09aeebc22c03f6e7cff7bdc8a'
  '9526785af276c42afce94eecd376b73b412d3a4c8ccd4cfaf5e97101f0b045bc'
  'e061b221c2879b78bc9ddc0595552fd8ae847f2a86fae48ab3e561c190410b1c'
)

package_datacenter-gpu-manager-core(){
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-core-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
  mv "${pkgdir}/usr/share/cmake" "${pkgdir}/usr/lib"
}

package_datacenter-gpu-manager-cuda11(){
  depends=("datacenter-gpu-manager-core=${pkgver}")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_datacenter-gpu-manager-cuda12(){
  depends=("datacenter-gpu-manager-core=${pkgver}")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

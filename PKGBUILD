pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.5.3
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
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
source_aarch64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-core-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
noextract=(
  "datacenter-gpu-manager-4-core-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
sha256sums_x86_64=(
  '60f4bc34cdfd72249263cc1273f137e447d40c0eb3d937cb441599b9d01e640b'
  '06d40302c24e04add31dd218608ab30a233190b72984dc34ee797c6772fc18c7'
  '459a7065eb2129b4e031736599d77b515a7763aded5b55413dc5deea5c3912df'
  '3adbcac82690f4717e9338a5a6ea1889231480ae383d46591a21f195e55454bb'
  '9d1d69d10a389e8c97b332e64c6d416194d3182d25bc22d19fbb645ba7071bd4'
  '77486f35bb00f0508927be52a1f52b486dc593676227756a7e924d75321abaf0'
  'cc269e8ffa11ec7359f72ad605d3b168d43d76101ec63233c9a868172a6061df'
  'a66618a05e9e0f853a81f16e51b30d1225e9da7a493d07d7f40011a33ed5988b'
  'f4a127eeb6c62f4eddcb645072e54410dec741a45466964cd50cb9932543b3a3'
  'd413eaf7717765b068885170367edefe743bca8e4df42a78b0d05d95ec99b08d'
  '540e85c1990a25abc8e451200d9b4ea634c05421d5670b48773339fbbf9f4a19'
  'c58b5f25218bad5185f4557dd65f62aba65819fff927c2504a7a5055ca306e81'
)
sha512sums_x86_64=(
  '023f2ee830bbc848ee9e8c021ab411ffacb4d07c38e1b424393ea1f92e0b6441361fbc418d1cb73fff9d5c26c6842351cc40e26b241565d8f0bd7d7cb6b83c76'
  'f8093b83e8a5c9bfba042152c93f5acabb5cd0a116d69c9fe4cdd9c3d2dd5ae43d84ca13b186af3188a3c31dc7fe679a6530a86cfd194bf98f7a873a182b5fa4'
  '08186e845d368dd0ccf7677227b57668338f1ad352be665446a73d5b0063f231a00b3eef163d9d4d7dacf4673a06a9eb5f33b572c5fb87b71e2e82fd69bca291'
  'a86a003b2035cc0010fb43e8d1c454c537e2f5e389cecf80220e65d5a8decbe5d98e87c591308ead3381014aa436aec5b4b27d789a370c8cf79dd9995336f2b6'
  'e92e0e1e04d95dd0269b1e38cbbda572e90d77a0cad4c89b61907042b87e4656f847cc2ca4014e70c0fefa2be9f59120ea2a245deae8870e3c2dc86bc3bd3113'
  '003702acb8fd1700f908a3003d6e3235489ac90da5ab4de6286e502f97e47d7d49804c20cafcfcd0fc91f74983983abbc81dc40e891d4f90c1e8aec306d02843'
  '2407f6ef13f32838d96b1d2883a39e7604042e2be3796a20872523d91bb80070085b7e86373b8993b0e34c85379ff4e69abbf77f7607ffdb8fe5bd4101b7817c'
  '0a535b76eee0ae42b0ce55950dabac98430f2931ae2afa874dbefb34a66265cf56bdafb116053f36f0e07efbfa28c43b4d2dee58686572db738c3d4f011fb86a'
  '8cefb225c9e75157b31e2dc5d43389bfffabda3dc90ddeeb40e4c72631b554465b2f1a0491b9990db444938d0b1a2502272e64275f5d150e47d57aed19b68766'
  '1cff2a10c6037748d20c16bd82345508a9d9a4e4bd0979a7053df35fa785eb521904aaa36f4c632754cfc9a30f70daf49657c8e1f172584d33109cfd1cc52a54'
  '51bf5ef23b093c5494311d73c79ed78d7c89850758fb8f5dcf78a2120bf4bda74a3f37e6cb40f2edcf27ee50a64ab3e3e015cac418d361301d2b522e4609259b'
  'fa13ee24a5f0fd71f66fb17139eb9be997ddbc910be9059045b830be8708b794d619b61d13a74d4e975bcdaa49fcb4cdd9ff7fbd3eb8e8d405692db0424a79bd'
)
b2sums_x86_64=(
  '3f7f504971f30efabaaf49a8f9b821a1dcc7c4f02e1b52fc74977210bec83f8153221b4e3b313685356ca1698d9e0e1d1d3ae6cad7fbb1c17bba0355272b48f9'
  'fcc7d09cf4033dd966403e1ef56642f716f4b9948619fa5b7df63d7c33640e5e364b6743b1ccf8eafc24ab0ba523365add66b089a53528c20b9822780f4964ea'
  '8d0dd5e47d15e2c2404fce0339642902a1a0b8401a6eb8041fdd29c371e8d60386ba92ae1b16cc9f6ff409167e0df205451f80a0b73c837c26342ecdd59bbcd8'
  'b8b114ad57129d1c35cd57a05fb5203f49971c80c5d6d6536b26f374cf69966156a57e62ecb3ca30f211eece30cc0e9f4f24ca10b32d3b0053ea1fd23d022038'
  'a7fa4bbd59615054bf2380ad7ca3e83ce2da3c534fac2c46ec5f6f8ad7c85e20d7fa12748044a25357e7dbdf4731e8c79b2b8c8f7c87af6ad1ed9c08ef14b8bf'
  '55aaf7389aac16aea40bd3c3d4d0d88d23a2dc634fbb6aa21423e159446cf24f4aeefa803a55e1544d98548fd066087dddd4fff689cd2e75280edd1f5309e7bd'
  '145f494ffb20d4de2e6a2e266dbc37bf9613f02ee10506543c1031deb5cb3e35b0509e16489da5fc43215d25fd0caddb8a4aa81f4af5d2efb19c97795c542f32'
  'c55f4b489473c7f4ca48fcb67453574b29153fab9381da9b7273a668302b7382f5e07b01a9286657a1b14b7f834f25b5584c0532c738793df353b89dde1103a1'
  '0e2bd82eeac59058b977e38390d7f0bbe9006ba9fed7ce2d1b3f67495dd7640cf13ad2268873d17ced2122da7adfc55b0d3d63f833ef34c21a88345dfe8f431d'
  'e299672e0d80bab241c3022bdc048674d48e65ff2af129d290a2326da5ac44c62057e17092b82dc3c0a0a140501c348acb3ee71cf69c407938ff9295d56cb68f'
  '8f5045257a2b83309c8f6784714d0a6a3754ec1b87da1cf314f4d8262d83c180785d2f3fbe8fcdf4b4286e9ca05fe0c0e9ce79793dbec67577f4c0049a623582'
  'b577061634a3591dc14ce9ecd73f795bef2c5c67ca5f445ea4db163ac9741912715a3cfa52e7f1254d96f6e46451733c38141a1e5faea320089c08efdfa5cd2d'
)
b3sums_x86_64=(
  '2becc74fa9b4a3a1e96e1ee7db8d8babdabcc6ffa7796bc6935f32454d327f3b'
  'f6c79b72fcd892a0e156602a249ca79a826dc31a00b51de91181ec169c465dcd'
  'eaf42a04517501fe73d4f3f91078afd2ccbcf2ec4ba9657cea174d54585fce32'
  'c7b7e8f66a1327ffb26a32bd6f47582cc09ef28f275c0838c259fc537e7049db'
  'e3403a59cabd1a98c975414b730d925be9545096b6aade1252635059c95fb5f9'
  'd4cd902df6ea496ddbc0311a6f5a133ccb0fc55e8e16f3b4952b3694fb8d42d6'
  '61ac9f7d2b4d03fa3d026d545f77370b547b8c28e9f70d072dc8dde41a1b6739'
  '1b8cac593de17b4f7f9a753ad7789da5ee8a1d36af3925519b0c43539b9ace0a'
  '2743d621c10d6649741badc525b0c3a2c46639b4bbaab94643066e8a6fe39f18'
  'd606a1c2fd0e2e7bdb38db80935d33b828169abde9fcb550b362199c09e15d53'
  '6137ea13a2a9a9be8bb3519c9d4f2d1ace81022539a5e0f1f5423a711668c7c4'
  '32c2d7aa588f316e3098f45a188f61b84e0b3183ab99c09dcd1889865fb79d3b'
)
sha256sums_aarch64=(
  'ae4d5fc4835dd7fcf55cb1f5e9936c8a1e304240a1e5f1048a2e85bff8951d16'
  'ea56f204f119941b937ce5431d82086b0689b5620b7af79bfba9d06bd207a38e'
  'f19b529e5f4428e0b0f1b316ea202675946eb231de21586ec97b20af3974a9aa'
  '72a72e2b312d8406d297ddaf05b738972600d4ccd10563637634e457afc3c555'
  '9a0cadfff8a5c87700ac127ad37ee75b04ff202c28db8c6b65eed7dc2b1abdf3'
  '8d2d10ca8e294d6314f8360925d2de9fb2de3aa06a118d6a0742bcd4616110a8'
  '704eb870eb6d4f48e5ea6599c84cb62f3c187aae9d090c552b4f7ea9b479014b'
  '36be980df11a96e93c932e561f038a2739d05898283612272c7bb141aed20fde'
  '03674a471a98f1b42f981e56d270c2230e67390f2e0692b46e34ee7151c065b4'
  '6bad10e11bda0e38c848706c9dd060b7e9092255f0b13a92af9d804ee7f6e2ae'
  '68e7ed4ff53fbf8343518e0dc3c72bf5a067b6f91d87206baed00fc2c3e1f426'
  '0e5f6633fd4b203f8baa09892eade0c18b67f48473d1338d65d3ba75a788c72b'
)
sha512sums_aarch64=(
  '4858479a24063df3059a995f2aeeb3d6a296163b390fdd194e941f55fe2503865168bec1fef199127a136cb2379a64384a73a75f3db6cbfe3c240d4428b0c021'
  '62995641b9e6224cfbb2ac543c75bcf48ae20e4d6ed0bdd4e003840ebbc56ca82d02a756f94751f6fa2e0bb2c8bcb3d6fd06b03ff2ea18ccc7ccc22466c97343'
  '41aca37b1e879f46a9b73f27c27c07dd01f54649493e92be12e820ec2aa64fa5b37c2290151db14586ff6bdede0c6f0856b5488c0ecca539df54c6226953fd8d'
  'abd0046a066acb15e8f02013cc871ee46e489ad9d268f6d95aac11c0241a214cbbecea0b4adfa0ac78e506f38e4f23260bd13d422c5793492356a0ec20211341'
  'd82624b63d434c8da599b20fc35ba82d5956d8a2b47e879d0cb68a4d3f8a66def80341d0957e3fb2b1cf1b56228c258551cc4b98c359cc57853a973100332bc1'
  '7c69d38c37d10df30347857fb38c105ce97d78dd07c6da942f1010d5ca6f117314a13f6ce15e8ce191ce86d1db3ff4a424edcce31076caf9f858f74524f0c780'
  '54a86f4b302eb2e7e7ac4edee6d5f0e4cfcede652c4c5386df90516d5ca546f7422f6f0a40da581baa63a221fbf34a12f7d5961c272716480da1a4d26e876f5f'
  '5f099d0fe131b51564401543e27effb4948fb80bacd58725041bd4b724f1a8f8f711b6bc3783f13707f4601de67a6ba729bda26e251b26ee25ad170aa593fc9f'
  'eb504a3665ae206a019878a11d06958453d86c936449926efe941cd9f8e534aa3eecc996629b1dafd61c149bc4f51638c036876969e996db434a72c73ef66322'
  '0ea6a4a0dd8939a91df02a581442118891ffae4e94db723d8e76b2de4db6bcafbc35f7b708898c48eece39a427941fc505a4a97bbd4d665681c2e4451687aa7c'
  '24969fcb0ee4d421efcb111f1352bfad473e7b1edea73148dff418542b5544ad558847810be85bf477b864e0ed69442c9a44aaa706891f50cde6f8ef6247fdaf'
  '4b56319b1b799c7aa6330b4215b5f7dfff83bc28e855429ec5d2e23bf9877e8357bc8dcb5ba99444d35b486b0758ea0f5cc13dd1f85a88275558e77ff0fa4f53'
)
b2sums_aarch64=(
  '3f6a08849353c6edf128c77ad4c3be33550b7edc0b6ba456fc968844530c9b4f145dadcf433f02491d1084397dc0cebe4f7de4c90088e9391d7b192640943f86'
  '669ae0d9be444d31078254eb4ca279f30b0ab3c833a1bcb9fd06b796c4d2d42bb61702ad39ad92c3e9c8895165ebd354c241a4e79d210729f8764b2e90f02a9f'
  '8fdaf4838e0735ffbe61b5fa187ae2cc76b8e5272266ed6b049d2022d56f29834094ff59fb37f9d7d1a256a160f8f9189fe5a57565745cfa7a1d3cbdb86f36ec'
  'f1ab8d2d1eb802c94660a2bf7014d42f846bb2a8635b4fc67151b4903077fe51f369a7bb1dd9c04308fdd59e07386d7d85b1776b0a8b696493e68d1304c27599'
  'f9d1ba47550bb020ff219ef097a3b63a2cc11819c0a4b5b0153b2a3c858c2c194a5d47fd4c0cdc22343da4e9d61d0dd5221a8b9d811bc4c3d80954fcac4f4d8b'
  '25417a3885acc2e93196a2d97be48efd051823ae12399f41c2f7145fa4a5d78501dca0da324c4fab19b637a2126839f97dddb7f510b50985c7305b7081bac8ed'
  'e922a8a2a73e1d67c512dc6698c80a0e0f7231d5975d17b10a1d8a22489f688e661cbb452356b53ad674a0c9d7c22bf55a002d1e9414abe1c079f68365cb3a44'
  '8e142226cd20111ce72d12ed647e6c01e504cb365b9a23f525d694c9e07cdece3bfe57db0c672ce0ea9fcfff111070718814abc2a569a1f2e6b86e95acbc5b10'
  'd39b74f07d4164b08efc9cdff6478432f06b9c843c6fbd249f6dc90916e50d60bd364778993455ac0d142f3c7a44f5bf0adca8e090187dcca0fdf838efade8fa'
  '9c29480ba0bc8ecc1ad3a325134c26afff38f3f8ee39c05a9e7665c05799d2050f962e0456346a8b66ea9594b6b8ee8cad83a36fb68642b7d1794e1f8202e5f4'
  'e1d5d225f8da6faf8e3ec0d3bf5ceb8d13d3e5ea38eb7bff8386e1f605f6bd9a259f87bd3745a339e739282555b0d65fc252b35c4fef022000ab11bc7af081bd'
  '156c5f07da4ce8a132a63bb2b33f3557dcce805c7baf886b9fce57f17f74048f5f5b20a74f43e26e7988f2f0bd5494cd116e707df18ff19d0e0b78c5554fd721'
)
b3sums_aarch64=(
  '0494ce1b3923f100c79910927b91ffcbcfc758c46fee817ca9f7fe010e5e1dfa'
  'd0c7705f04b451c0980f2381fceeababa5db5026d06ef633aa55eaac99eaae82'
  'd5b7051bf29ffe8dde849b8e96d4c103f14121ae386e468a945ba2a05c99fc64'
  'a3387202579c6cca0cea4f853faf1f4f768daa2d7114583f688f05f5ece901d1'
  'c22a632805863b6fb99364f0b12490affbd35d6684ea2f19e4120c9a571b8809'
  'c40796b60682611c89942fb2361cbf5804be1af28fadd1a884b864a299518135'
  '043fb589ce4e7d07fd4a9c0aac52623c3ef5802c0e8d7a4986a865f1a7fe5559'
  '5e27888cceb455c1dea786a0a64f0f11c181942e826c503caaf9327ec8b59234'
  '99ae2b606775de1bfc0618e45a5afcad3be91f412fb8d086d2c00defcbe1d72a'
  '8a3c3864da9141c6a6d46e335ea227648b5d5577a705985c5769b0261f7f51c5'
  '738c54ab7e7142a54eb2661a0d1c5ac7575da6c4bd8359d0e35033b69d245802'
  'e8dba89580e3793b044f5934a090672dc27ccc92259c223b9aa2a6139abaa3d6'
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

package_datacenter-gpu-manager-cuda13(){
  depends=("datacenter-gpu-manager-core=${pkgver}")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.4.1
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
  '933d05e7d904fddeab2761fa57df94e749fa245b97f3cfa9fbec9425f551d5ed'
  '9abe12516e06333118978a87ba3ab25e9df8775544805141ba0e3edf7fb4b52f'
  '0d3a0a23fbcd2a70e925c5f133614d0f106b8d66b6dbef7c5369799765627eea'
  '396ab1fc7c73260e9c91e358363f2e1d5a35d9d5748c375635cf60e9b2822a7e'
  '03a552812805111a948f3c575d46fa32d9d0d4a15162b3e877f6bffcc29b2589'
  '9ef4fc6ec6440fce7837b388bd47f17ffd79d25d48773fdfe751dd0a028cd926'
  '4d3951e52578a587dd46169ae976c85298dc007c318b982b86f91cb01d61181c'
  '1a53dfd90bc6c750409586097b3d09814f51fa9c9ace4f784b62d9f634fb773f'
  '539d05157ab4e514ff4457dcd40d65f60d447706d35cf754b5f548a3e8bd8fca'
  'be45abc59f93bd396758bf230cd42c2b5688396dd20f39a455a027c574e23db3'
  '7935659970a3a34ad996b036522d846642e3703489f95e1214896909143db907'
  '7b20adc089a3bb73e605ac3f630250ef9643edb0d35325743f2cc9f99f97ebd0'
)
sha512sums_x86_64=(
  'c03232502afb6050782d63c150eeabad120d8cd9a9eee4de0a9feec2498094bc4cb0d946cd0e6b26347b55da0ca56e5e4c09047e19cd9412203dbe080ceb440a'
  '222c9081ad64eb341f6b396a8bbe7a51afd77d4bcd12b997a52aaec08f89ab06b92e96fb6b753f4f70f41c781b32bbfd1a521671941ab3e5d08a45a096c8e183'
  'a0fc9019f4805599a8ec79016251a64ace7398bf8246c246d3ba5f1579764465a018f0349266add40b24243ed3fa1b7e340536a44929c86e1ecedc8fe4ede642'
  'a4b0921f1cb4582581c3acdd43c3e0aad51199005d952da59f7c5083a6f7bb456f4217337c34e4db8fe4c0d511fead08e72908bdcdc627296ae8880520dd2094'
  'b9758573fbdb899f88f5dcddc8d6c3e25c9227af177f42e0e770e51221b65b1ab285a5c27e870b73ac5fbd85a0b322813ca1d9b54b83c3b428ba73d4c66985fa'
  '734582c97b304a5595e9ca4a20e5c6e55f5e8fcd1460199aa8c1939b025d02d2936e2b3cc1b6ac90ab663ba31e2dce1adbd37c4f87b068fb4ae1e4d69c2994bb'
  'c906a089454d7db7d3c756000dcff805abda043501f2b60b5f0bea20b15d2505fd05f5390a95c2cb3019f9f2e442d92dc1470b87aad1f7d54b8f10a1fd4d4b49'
  '8cfd42ee97944244b6bec81694c0017b89dba311c690eb74ea88c23a616e6e50cb170c7bafb90e87e98ba0e029a6eb117af6b12d98a9e60cd6ac9385f1216c6b'
  '492424dc1afc8f556d9c302d41390e8eb79461f02c41e9eb149b4b083a89b8cc99fcd3e452e2fcb1da97c1b08940bc7dcce393700464d12a3b218dc9151307c7'
  '674b3ba0aa98d5e3460c3a50aff91832c6e3c478c1644dd87654ea32879d4419451705f48a416812a4d82844c5efd0cd1dff6b2c178447211cd2a0511e46b75f'
  'bc33730824b8812e84b1a8a3b79fe4e71cd11d4ea530c9a50ef9fd953761814d437dffe5ff9ddc45c7bed4fe5e4c6eb342f4543b3977e0c7144d2bbd11d68f09'
  '47ca70d4a6c51ba4f05bf03208d037a0d901ba87ef947878e92bff1c2035ae04986093af8edc76a958c9646901b7f535b98b51f75cd69f02fe9095e4ecaac504'
)
b2sums_x86_64=(
  'a44bdd1292452d1d7475e7b5f1570c786577e5cfa5fd507679b7d03626a5d92ef38bb3cff862d386e45128c285c5f756a3af72a8295e85474dd227d58bbc3579'
  '9aee9d27b1134a969d6813d9f5b45bb5c9078c54437dfad1a7aeac2b1b218982421f50880c30c2e935dcb63484925a686143af974b5820693403d8e87c0e10a6'
  'd4b1dc82ae460f0d7373fb1ef859772801962f34e8c4fb855103a436b04838f342116dec51c960fc57c21d2fe3c4e81697b6dddfa60f515d804c55be4bee9fce'
  '4b82cb1aeaba8a74db3230fe41a281714efa7f2475544b8741b60bf0e40a84e5aca00e15a17af4c5c9b53ee0e5e9083e46212665b2b90ce5bc17c448d8cd31f4'
  'e96c7c7229a834f18d7318770e2b22d70534889bbde60b19e6daae9cd7d933b4ef386bcd69652e8c21759aea6e86f8c2fe9cfacc8761594f4be7b9c1100d7b71'
  '996fc9f6528076e5c544853991e46dbfb01076c02f936c8830162b21bfd90863473c5908e9e4f8eaad91fb9f96b4593e645da7d4b528887ed47357b4d933d59a'
  '32443f71eb181d7247651a1cdc469ddaeecf0900de76a2695da9a27587fc7b1bd076fcbf184dda685bdf5bda44478266240fc557eddbbe123d29acc5766154dc'
  '4322227143b77e9a037500bebf3ef5c827bcb32ca8bdb53235d28425c01a5e25685c935ce93b3ea0a8eb3004905b1bfdfaf88ed0b9199ce04c162ef53d67d9e0'
  'e7a98a5487df2634e4c5cf441e1ed466213dceb51d2b617bea8bc59c5638df67bbfdf3ab20790be7b9b912fe938c26cb3b6a8764d5282a2967816403a9932afc'
  '3690b1b009cef3f79b963071223ecdfd212491961da196695ba6578406db66c6b9329983c23d8ef2eded8ff3571dc2d984efae18675911b62d0ab0a29641ab8e'
  'c639a0613a32e9d54838202a56d9a84e86751a79374507c244ad693f32654c12ad7e0ef1392686b77dc1c98a66c213f710891f1a8051ce66e07bce818c1257d2'
  '411f866f7f5f92d578f4f10800a0901d44aec497a5d7ef514c33cd90f2ad3d8858c03eb8cef735814bc33a87dc31ce7dc9a4115e907cc591b91aebc50dff0e2d'
)
b3sums_x86_64=(
  'a533da8570ab362d0d28bd422e3a7ed7483e19d3e1c006eb2d3d165c41f48599'
  'a36f68ad18d6f4384d84b37e9e6eb2047dca58b094dd7b59930bc5c34fdffb92'
  '063d55661ff437a970c37c31c3bbfc538c287494080f28078975a4bf49e8cbf0'
  '0cc910808f679ff9109e7895ef29a554da1a98b32d09750899d3096f13d1c3ba'
  '2fd9c3c44480a30a1614e116e8230172b0316ea55c499ef00a5776ab22e6668e'
  '2405b9b2481f631f0c44048ebe7b802325835418e0324f82ee8968d01265d4af'
  '92b4ae58bd6f508b6d6361b50a567cbf330bcd7766bc6252e6da1382cad7a122'
  'c3aae1c2d59d6b01a2979691a1d935eea0022ea52df71dc649c2d776b72f7455'
  'c3536175b6e7fca66e9d60b7df6df0bd9d707c3a42dc77cfa7522246eaeef4ee'
  'da6af62da319e71e1b67554a375e951881b140107ca3d1c7b65daaa96e686905'
  '7e41689291d9caaa41842b817e0f4603f6d322ba714abf7e1d0b068f91f4fdce'
  'c21073d6cf6c9c2f0240114167c2939080b2f6e121fb33a33eb91cac479d97e1'
)
sha256sums_aarch64=(
  '6fa28d0e8a210915d206f8afe323cf6eb8b9b9c11d092f7c566646d3936a01c1'
  '9a9dbae1b4ff92d6d0729b47ae7c44e742aaadd9acf4bc3f945f544d2efd6e19'
  '1c5ddc72de62146160986960df082ac2d6d4cdd52b792a6fdbdc318b749d7972'
  'c60d2727a3f3ec9553c6c9d7697b70c5e8863a244253c162ada606afcb0f072f'
  '0d82ea67e3dd16a5a072289a15710811a50489b0323ade19aa2f0c4cb338c25d'
  'cfc8f74fcb38072076f80ff48cc9f4d5a1d73b6876dc69fac4028536ef660b0f'
  '68e9d9415ee06fce7c667daefe7cd97d873f797258bf1ed55915a85d7ad89483'
  '54fa0f75d0bab497f5e3be58757d1878ed14513ef573bdd53b83e0238fd8615d'
  '11db113d972f231acc74fd7528d96276e44cafa46651c7741982929502cbeac2'
  '20ddf831e68e5059594e1fff841ac049db5dc16c62f6b506f90936ab86e82575'
  '0d950b427b1cbb2ec92b8bd5c363253b4b6740f1bbdf5a78e2908133734fe0b9'
  'a66521551d75a0fc726bf8653d2af3f95ae27b9bde9cbe06b9fc8d7970b6387f'
)
sha512sums_aarch64=(
  '910e6158d7efd22197916032192e2f77b8cd54a838bef96192840a68f89af13bc47e259335d25c9a22713353607e1aded601da5eab426e3662eb2c54d9346f20'
  '5d16021fc6d22bb3c80cf36ccdf6fbe2548be1113eb57b4d4a7b1d18491ef77b312d4770bc128b07cc7793f29c6ab10ed35c86a6bba5ecabba2c7b2c3a7c112e'
  '3f0f67c2b7e67bc36c33be5dce0d2f17e60501630f1171a0f8aa045cde8b8bc09030e4e783ac2582d8ec14f2556c216f1008911cfae3ea325c9853471c6cf007'
  'a28bfbc1be3e935bca93a4fe45dd2c5fd8e32aa0d6fe66c0167fc230d0db258a8b227745fb2a3ba790ec2705bea57c9197d66661b63b44063339baa0e3fe1992'
  '1069e700c9d534143be9875ede861ceeb7203d4299694f244e9a8c88c913b30ca15271ce8709f527a9afa6203b7d3358ea4f4671075a3d8963346485e087b8c7'
  '92c3e76c71fd208c37d3a1b117fa1d8f4dccf29269a9130bec9d789b2ae99730c34af335e3069c68702099281c4214231ea2ffd18bfdb06dadb86b4e3d17781c'
  '346b30af6cf94481734ad2ad2973961999c0f1c4bef5d2ff363b34f85fdf26eafee36ce3373f42905ec30dd4001c970ea8e530aa244c0e3e2945c5d58eb020a1'
  '43f25b5fd16a034fe739f61efbe99b8f3e077d6808feb842ead88661fcacaf7bd582d78202938a07c827bb9060b3c37ad6d6cd4f7ed1551fa975276a0e7790a7'
  'f7c7c9df158e6917b4fa2755a6d4ba0968432b7087dbae6aa43c4908aeb950c515d6e9830e9399ec2afbb9fe2c43399ac8edd37882e84165de8165cede9787ba'
  'da6a4f12eb675a7b4f73d1e716b63a97b5b534fa7da8473ffebe235ad879cc4c27b0eda1766b86874244ffa3aede797ead350b664deed0b0d96aa60184aa4abc'
  '34fe1bce2da7fbd7bb43a742138b08993b497cf42570d4bcdf1450f3751e7942b87f967bf7a0581cfd7e17d91b962856bf19f71ced9d3a6e0c6a455385502e1f'
  '582e3c2cb3930e28d7dc9f7e84c292a8bcdcca6f89c0a9ba4b204a7976a9e1c4650b41560cb253290c85477d9156d442cd44490b611c4d206035984b9d36c4bf'
)
b2sums_aarch64=(
  '9beac3d5be5e00ff88ef43eb8f30d8c95043203b4ab7272654019b90296bdb2ac682378c1eb86ab39c3d4fa5b8a0b2f0748a137c81089c3c6c5b87f461d0794c'
  '4790dd3ca249f149fdb1e6d526b8459fb354993de845e94285f5e18cb0b6d360ba24404da3b7d372c5b7f8a7a77b5f2f6a67f9303ed926dc70ed4dab06bcda44'
  '1c92e6f59acdc2e81d5db90467a4ee1078055bc39d190ab80b3e6f46fb8849557d6f9eca17d767d6904767e912f2e29cf5fd316802bb5141d7ffdc6da9bd95fb'
  'e33fa07fc5ec9d86075f4ff62d31434a19ab790584cbeda2b69443b0c9191a0302ffc0fdb3720bf424da573d56ef19f72ff7208227384ee0dd69c682885c55a4'
  '8d66764d8532ed028ac9308e364811301073241e559f8f3eafc6002c12f10747fff34998134f1478162880d77dd80d9130cdbc6ec07130c684c885e0ac3197a8'
  '5457cb1d9511fef4917e31d387c13bce3286bada87093f8a063f8d93df4e00630bdecb2be74659a33960007ea74ec2935a450aadfaf722aa91b8a462ce58bf25'
  '503cd69e2d8aecf9ab8b89a68c40df0edb8d92da4d3f345c57f6df62c799853c90fe7a793d9901c6b1af44a0de173143a92d03e3ae82ed118f744a849c1dd19a'
  'bdf88977e5cfbb5aa3ac12fcd3d91962e13106f9005a20ecc653c1700fec4616de90ef865849f3e048490b91ad07608ce81259a3093ddb67862a42701cd6b508'
  'e091ca3c44fd17a7400d3ac33b52c100afea4845f9e8e3b9bb4bdc17a4249a29ef34a4cf183cfe5f4dfc595f73bd3f62b3aa17d6454035227b919ed9b4c476ed'
  'df8c13f2f77ca54fed5da2a3c962a89e855d9f76e3611ccaf979af39aaeabb61c4d4823daac1475b31004ce3ea51a19d5c47c89f05338b49ad42529b2a743586'
  '9fdfc78364ade539db8755fd0cf83acb8284e3c3a6e1935849f82b60b6713bb22ba353d3ce236aafd227251acf9b9979433e745c2891b6d572be9cad9da1d719'
  '9da25d4fb0d99cee9c1f3172c475ea0620ad32881e62b4261d4d4a72138e0aa4d1b450a6fe108396f58bdf2026e23a4b8ccdfe700af9b918deea3d8882e461b9'
)
b3sums_aarch64=(
  'd1ac5b8ea221492a748d93440cdcfc89a34d7f3c8c3e8b013e6994b28b5f0aec'
  '0f6b56ae5dcb8f7751dc9f268265802e7459c4d0e3ca036935041b5dd67228dd'
  'b5f03851da5c031ad74679d108b655ddb36b0480142fd512c5620084c008c440'
  '77f2c049a9fc9ac9d63fd7fdf1f89c7fb1f491644aaeebb93011b175dabf65e8'
  '16e2046fd0fbc68543efd3d6712e53e68da7ffe36b0c41e9d5484d0fe617fdc6'
  '6aa998ca18b63fc43e14f06ed51b5ecd32b9a6342c5e5206a5f9480321454586'
  '4e101a866cde48dd8ad461af47688fafeaf313b5964fb6d1adf98e70c5857ed2'
  '57766ae474b6595131642d765a280accf8791e1c5085105e4dc31e28647116ae'
  '9114ffac5aa52b13cedeafb3a3a37c0c875d0203ba7c9156b0dfcf07b212c842'
  '33f6b5a2fe31f458a84e5133c124384c91106c3f8b185e402dab8c831c6f88b1'
  '96f2d4742f6b67ee47ab4f5ccb80c4e9ecc2a80bdbe552e2ab98178629bd264b'
  '10310b668a5ed7a7a49f2599abc13828e4afa50e850583eea085ac87fce38093'
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

pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.5.2
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
  '3bf856421fa18847495a0530e49fdd0bf7be682bff831a50344fe03cbcf1225d'
  'd0d6eaf1e496be3b96a19175324fec743996310ac2971617c6bd973e666032a4'
  '6de9363b4267b46bc76a779e27d9b7a8a1d0c6f6079be4d60d41076d430d557c'
  '56a507a4e7fa0696265b8ec4c427f12666d05e649cfdcc0134349b59f5bc9d02'
  '607650a339b96870efd7af402d40f8c75dd43075a2042fe1c711d1f6b4da645f'
  'a832c70c2eda6bd98c64091b33d4fce8be87c5beeff9c59b110251e10611f9be'
  'e0b156ddfade204599d02b78ce0aab70ae0d03db1a640efa725966c3149110c9'
  'e42a671ce5bce33399688a3a20555aae6e762e0137502a90a7c1f89c7b26c67d'
  '2d8d3f9374dae7e6f164125cb05b939b4aba81511901b37adb628079fe9abb04'
  '5ebdd4a3ad6f4b84c886b5b9cf2df4b3234d41c0fd89e8aa366e56e20a0539c8'
  'c8215aa40dccab576e7be99f955adf8f743a63d24f996c5e53d4633de81c8905'
  '5a9b5cedf9205500621c94e4dbf0e53b0cef71c20769eccac104c7861bae32e4'
)
sha512sums_x86_64=(
  'adb945f6bb334415a9a1d502414c459b56a2f45a57b2cc1dbb87579315e4a386a94714a1da88c44b65ac3148d671a97df794c941e290757e60bd6a48ab5aa834'
  'b8fab94c87a2b8472ffe2851d512780f3705fafdb41d4f2114b34d7a251f981c9d53933a46ff8cdd2c488ac47257dc10076306322c30814fc2f5ee66f3643d8c'
  '611ca6a3781dc25632b4e675aa8e6b900e32d52599aada90db1b3d6f142acb4919848891546c98b6cc778938288be4917b12e5c1714dcb144860384ea6923d91'
  'c72485db438265cd4961bd07a22759bbe1b5a0f8df1ada11459b12ba84a0625ebc066ab4bdf7dca1600be48e78b20661905d64cdd6862076e0c6534d040ca543'
  '44129c6aa9bf0b1f8b8c903f991e1aaef99f453d1c3c2caf31407b16c3ad1fdf6e6fb0fa1a130b7a4abddc2e319e5b75dcd52d1c294d32486d80f3349341f984'
  '8b3d260d3cc95c7fdf8c12e2de6bd0aa716bf6365450515edb63735b6717745afaf8d947246df295d248c5e8fd04fe4bc8dd82462b3964239f0ed676caee9f38'
  '2395a4266e74c56955655e1cb2d0ca5e12ee9b9071cc80e09a5210753ec80fade8ee88324e17703d559c377c30b5e9ae502731afaac8dcd170ef4037935e96ca'
  'a03b7a676e2b64ae9a8a2442c242f9c13260f7cd2a61693b203bb75c366f9f1bc68485056fc8f2d1c3169e25840c886d0f84fd033b9aef859edead27712cc5c6'
  '97f0078923fa2b67c3d4f98d3c8b4dad0ad7252b5130ef6dbe26fc08805a47792302364586cf53165fc4c16d0da23dc6c41b7b11b4b2134fdbfd328cc1ed5068'
  'fa39c00900da217ed647c2e0177a618dca0ddb67af22540cd39d169f3d73f4834a0b40ef281d6b22a9b37ea903d094cd7afb54931c8ba06d77376bdd6e69fae2'
  '9b2c96f88c52dd1c203bbf0d0693508d11fc7882715f9f7d70db49e1b03469bafad9c4b8f3016029fb77ea55c06180ca1182a152b6f565f8b5e2a4c09cd62a6a'
  'e331cd197ed8c551e47b01d7326ef4a485e42105f36d050f8821dd410cdecf2c4acc98a0f0d05931aa2ad0e5eb2f911cfdfd2758d85aed3aca97c0ae523264c0'
)
b2sums_x86_64=(
  '6f6a1b332fde0c5a047c40f817edfbe4661877dcaa0349afe4c748f7157956ce6b603fb9c2ee459ec533a48accaa2691749c5c6912d17d3adf1465ab9fb16676'
  'df4388b9b571cf43c1120615712bf13b598aaab840dedb34cc84c16e0ede62e08f8fb54940823bf71a6a2eb237cb4411c7422950f71f9957adb2e55cfab95f42'
  '156b953b75270dc9ee92d8199db6e5b9809cab174b122c0f948a09f8fb767f6aae00a3a9aac05cdf94c1c1c0adbfc82dddfcfbc889caaff5118cbfa24b26c6d0'
  'f883f6a86d76023745c5d82cc5fa2e6a37ac7d80ce1f3f6b106701e0d021eaef68affd631e15bf0ff88e48bd9158b2ef54485d6c6ecced7e9a077861574101b9'
  '22479bb3414f5f4d51b5a96e0d3c8343ec1fc2d36aab1b4936739dc82c0c595088dd78a41955665d54e7688118e7d90b4564a35d09e3031b3748a81c3a765001'
  '9fb88044267e8920ad8c526367bedb1004844665141c598e2aea65a6235c36424f861744e442226c9ae7454b45a3861df2deeb5cb2a71b25e5e2d2059bb3f670'
  'e9db1a85dae9ecbd5a4f005a1218b0b884efeb9492405807719f582111ba23773becd1faeea4b3e2590515188af09b40d927091fb17a1c2fe9b7e48d015f519c'
  '01e3e914f55c344ed67ac1567f3d37a4fd0057e883f7972d4df036d70bcb4c4c35a4333d6581f491a8c40fbf15033207ebbb6027413abc94e671c1d2ba26bbd6'
  'a48b27c10802838ab09daaf13455afd29a019af728f739640d75778ee09abffee60107d301d2a79014834e2a57177805ce1544a38e0eb9d8f2a9f8727f7a5061'
  'a1ef13772df4a95406f2b6a4d199e3812a6db26d0ff9be6515412d299d4cff3e48dd417b533c36dea92c74d55e726dbe32c15d9473cd4993e10a0b279cc2a705'
  '7ffd6c23ed19a77510f73f45a3bdf48be4b4b58a98f2ac4495b23a2669a5763922a15833b57aa31529cc4d33bf3a44885bac8b2cc4f5f1d92b0b767da6b3252e'
  'f6dc21c48348477f52479040508aeb2887a3d8301803892d502df38e086b183b70c830f9aa882d8051ad5e03d257e998ac0cfd6b412cccf8adcab5b484768916'
)
b3sums_x86_64=(
  '4faf757ed1abe0ed63fda31e91c4f39dfde7ded42f2c38cb81f7a1c6c63bbd77'
  '33a82aba8fcce344cfa5bfdab5cdcda3016160fcabb1f7a40de28d09d97d4852'
  '09612d348898cac2835d914aad9232503c061cca543034c6a0efcdd03984e311'
  'b379ecd15fbdefb525b9785a2b5d8d03b9429c36d107e3767e923f40fd6befdc'
  '9bd446f7bb57978363c3ffa56c4c94e342cc6553ee530d29e6e1e5a4d334684a'
  '369a3199d5192e148edc55ee854fe5e48a553d5714e7d7c877ae03f624aa988b'
  '8eb804836e9121b933871fde5a99b5c31eb6c68335b8941fce40b60c2857f901'
  '3f5415d95942ce562a2b8b42096a94acbb7924d0225c4e16c9ba08f0a7c5cdde'
  '6542d4e4d9994738bc19ee29064cae76ee7f7ab68ba3077fd79b62559dc6725a'
  'dac4953e86ff891f80371199512516b84e8e7b8a66d5849989d4ae5376ea340c'
  'e292d8705a5e4b2e4afa8983b692d0f58efce59e99dea634cebf289f38990ce0'
  '47753bcdfa519f854e3c865e40c5a79065936d74eee4c637b340520ee0e780f2'
)
sha256sums_aarch64=(
  '2a9b81431bb4a9915927b29d4f3d00c017764daf5d3d3c1046492b3800d75c7a'
  '36df57266563b137a341be1c68c3db261368287183ce7a17b429517f0ff9b9e7'
  '14a8daa493f40b6db7e279822c9002c6a808a6802daf6b440d96fc1a46d3e1f6'
  'e09677d96d7720e58067bd91e4926a00c327a97300f349bd25a9e2a1e51367ef'
  '5017a1eef020f1889b7f7e06a619d598b2b9a51b74b0f61dbf07d55e29758c5e'
  '7356aec781b890bbc21e8b9c2e377abbb43604905f332c557cad76c7bdf74075'
  '554016fc9aaa585aa11788fcd823b55885a0d7a8ac3d1a51faa1add2b56a6651'
  '8e0db2c12236b741d1c8f060d5d13db133f0805c91eabb6ffac235ead5ed35f4'
  '7484eb06b9cd747a735f7373b4e45e0701fccecea9c9dae92b3a266657edf462'
  '61a4eaef02c4f659b26b7dd317b26e75e095894d58241df403cbe6375ffab168'
  '330c67306ce255bd0b5f5b451c453b39c681cc1797b8d42b6cc1061ab2854238'
  'b46b3c3a5f27b3e9be9532e424891e7bfd26ac356886e3ae221b1ea39aa8892e'
)
sha512sums_aarch64=(
  '29b230f9e4e4d9d2f6566f564176bc9108de7cc6f5fb6d794956bd2d6a3bc19e05f5b57baf32644ff440f719037b84368e291a4ea8be43ce6f622fcc2b56f612'
  '03a7797e5bf94d8062d78c52b58168e8226849073c12439d104baabae49f30f872d52e1ae56e6c7527485f8baed6fa8e6cd46d6dc79879dfcc660376ee36487e'
  'e6d137e6f223922518e41832c66aa584ec445327a6f675bf82ce2754d91024d8b61e2f567c332a9d3f51fda56a2c0ef09c416689ffa16b6ac38c5550d3b53dec'
  '26b12a95fb2503a20b2cc4ee436007bc1a9616ea02ac740c6cba8758347bbfae72e4291570777a7f577cbd9d0aceb6cc7bc20626ad2897051fe6c4a1520c450d'
  '68b6c67f949edf3480c07476a8c708dd7a1aabe408141e447435e7b8e2fe0946d94e4300ad2363f78fbd829f8529eae8c0ccc84e1958809a2fc2fcdcccdd7d95'
  'c87facb5bf44c608dc7fa41db58c6700f0fbfbd9a0892905463a18874bc3d051e8de87b3a5e648bb9c050dacafb374485c2137c470ceed6359e4dd4dd589f466'
  '951e1fc6c59488859baf3c2171662bd3476a4676860e1cab7ce6a2911dda3687cdf0946fba7e5c59d032f18fa250df879c2adedabf72cbff8b82754659f25c75'
  'df28ceaa7f28b5ba8cb89b0a1331a57cdf89cffcde9f2084706948cdead3bf094b7f2bfe7536f5f0782ff3f48f4254cfe7cfc1f4ab724225214dc683d114907a'
  '745d417f96109fa33e561f3c3648bb604bafe86b934959e83aed39253f9a766a025a9ce6a2fb067ac5c4533f66977b16a10dff1b4482fe26758cedd30c2dc335'
  'f9265703449173daa3498638d9a781152b73ba3ea1b69535b344286a4a5f5975e4ef1ddfc1ec295bcbf601ac5d2ba0949c61a294132457d056f9bc2e475e3dba'
  'd418f501adc37c76861224476663c15a6412c987920fc94b61f675cc411318a492bf3996d53c4572a5094038f68afc7af5e1a86128cb12f55ed9793a930c6b29'
  '87c1ce986d0d2d627c89a63a830f5a775afa6b960e75cd4fab3600a7819e29d27e1157b42da194fe20f9a724d6fbf81fd1d997c4ecb2d8fb77ca5a9de92013f3'
)
b2sums_aarch64=(
  '560df3dea35b1170d64e4ca2048e62f24558c5b578f39c19858e1023201a6d7ea47eda8f2807f933345da7cc52c7dff107da6ba1a1b1a00d838ae7e95b3d4f9b'
  'f7cdc2c0a307520535bd6ddd8ec48d84104fdcd9a82dcc2ac2ea48c41060c4aefe8b6112461cbb3d6462b388bd539f1b4ef7425ed1ef3baeef5be4a2f884dd04'
  '0de97c46236079779ad3e9b48ac183ccde67cd3998f3c73816daf869487d57392426f3d3cc33ca9b1d5512b063c0cbeb3faad64b4504a0319f8a64e1085b06c2'
  '1eb9d75b2825174b4f0d12445619ac6b62574fa1f8c35bb45f94e94e75febcf131de00a38a7ca36e3c9c74ef47c4d58b29371ccf0702ace4674b249d32585f84'
  'a48f18cfffadf1cda336bba05f0fdce21a6d4e1f5428f17017a4fcce9a6ea0bbfccf163e2963a344b3cae5a73b1c480d22ae67903202f45ed685cfee69855205'
  'c912a3517e3e05698b12f1489590a1e01a30d1408790e16738821f7caa79f524e669bc9d6a1a7b1c81d6b3cd01771fab8d89e6cb2dc40b78da6486c709a2032f'
  '740090189d3d3b6313964fab2111445eb9e6b35d337008a294ac99dee34a579a06e19cbd7fe543d22d6c9b6b8733e4894ef048b2bdd68c2f69b28c490fba46bf'
  'bb379e802968ef965faf9c8cc2fe44abe772c48afa13b5c58c2bbda88b05ce0a58988c5bc4bd68df3b73bb7786c79ac6872b3c71619cfe68c6fafc1a66abf71d'
  'a6dc93d5a0d72f7e02b368e48923d16300d37d1fda0a939a64d2fd650690ca9658a9eb06364eadc52f6d270e113af6ddcb3f0950619abf8246368c7cf8619871'
  '2b2522a844f4b5ce32bcfed13098299b6d33d1edc3802295ff2e220d39a4e7be3656ccd70cf7237932d1ec39448ed7a580c9330cfd55556c7632526a7d92a341'
  '75d12f8c142d95a30aa6f737b97c844dbb62df539d6d5ad7803192eb115ba465712c35f0e9ecf1e3415c4d0aeb51b88d8043ca8349cf7c8b54f1a6d91b7aa2b8'
  '74fc868aab9b71bc70cd60323a4ebf31d77141a4ba43f06909cc5de3baa2cf386a8f85e5b0b5d98c986f34cdb3bc1080c800b4fdd4976df9909bedab32bf091a'
)
b3sums_aarch64=(
  'd72df5dfdf71fdd4db762e74b8004f1d3acf75d170725b450baedc4f6d28a76b'
  'aeb9748f21983f78a5fddf7316b3cb57be3c1c811549cd0ef2d9643e548882d6'
  '03d88f1027ededdf4b76e7fb360672d98ded93f9dd25c3fcb09eb7ed2d140fa0'
  'afe51d9154125edd406a891dd201559fa021aacce4ae8582ef99d45d03bab771'
  '3a21daaad1fb261615cc7c62ab1d8d29f38f4f7ee7796e8d275e0d6cea9b00ce'
  '82185b3c246c0e42d7312a524a664a2dae1147a7953dbbf1e4fb86ac05f6224c'
  'cb884de5524d4f89753e9cb13e0a37f257dfc787b6913adddef923e64b008e3f'
  'dc3feaf9f94e33117bc1a371099a8fc1aacdfe2fee2e4944161612cf894fad6f'
  'ae34114f56387eefad1726e96c0c4cdeea8860b3f4b3ccdbad12c316b8bf0003'
  '97a12b262de744639643b38c4a0c3e7ab5e056b74c16593acb48c903d883a308'
  '3e9cde624ece3fb8a6a97c591fdafbbb08b817359bbe72287aab6b660aa9f53c'
  '1f19938838cb6092686afa462569bfba0440432ae5006d14b437de2b3ab0b750'
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

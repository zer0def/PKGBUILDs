pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.6.1
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
  '5b2f94ba6d806b2c54f22b9b01d80bd7c67cd0385570010fc235e4db13e0de2d'
  'f8e432bd4e6a858c41ec944660c289e30c8236aa61fe9b18a6990e7c562b9b54'
  '7631fe5456293544f038fffc2fa652a6a053ef68a3443cba939d73409b0d1737'
  'f0ebdfbeb888aa93d75c14a3812eccacc87f34383f311489a886b36a4c9c9384'
  'c9e4e01782832fe857c6ca2f1ea2b0c87fbbf34550a57422ef3f60bb9ec20625'
  '0be29ff8dc14d7dce0c0606a7fde3bbe51f31f30906d947961cdef6169ac2ff6'
  '2031db9b2f5d8885fe93e3f21663d2b3b25b584b4ec83c7b903bd7f3cdbf9696'
  'dfe2c01d0a3023a65ba26209dcf3df065fa0382d96b4e30009650c81b14b74e8'
  '7a48888a1a913a4b1fe13cdda47856e495f18f903ab6fa58ba5f00f9694f5097'
  '3a8854d44731b2cb602e91277b4a84a83348a6668d86b683d7bcbf5760b18667'
  '2a9ec73a65a3bfb75317f8a9d63424ae521cc49b7e1f8c9b1755ee71a2ec858b'
  '4c2c6f275b8f5f217be461b3e4fa6cf2ee654021c89cef5780988a62a68049dd'
)
sha512sums_x86_64=(
  '57f14c82f3a2b6431a79027faf629c1601418020034d46ddffaa7904a25af94154e6a082392ed1ab809b5ef9a5a82d91de159476817d6bae30f53358d8983e98'
  '01c4a6f51409ea07b46291379e96a9640565aeafa48c36dc5a43531ceb424797b229373eacb379c210ebeb5f3d0d1839904485e28e973d2400cd0ed7a01cfedc'
  '515b1ed624df6df2b5d39c5edaa17c1d8bfe35addd1363847f9ec172f6a5829e0abe2320c80fa8e8049cd194cd1224975e2ce761b59838b7ae7045eec38f3854'
  'ed1f829b4d5591310cee68f93d022221bc687b62bb296e5a0f0b020710751ed11b787ac5c99e63b8475b04feeb7ff53be937c3d98e9df2c7fe94a6d5dc8ccb9e'
  '91336ad53345e29ccd4e82ed75810ec9adff7af0b151da9c22c9b29d8da02ee8a15f5bbfbdc709d68bb2b5d3df65886100afc4b418e81276fabf6533d5a2ede2'
  '23c9a2b16dc35579bb55973810b4e4a6d6c9436cf81296d1aba737aacb6119885785261db234afcc2df5946c045a650760bc9c3892a67a050826f17bfdf88f7b'
  '18b2782c973c2bf2275748b5361a8b9fcf86e922216f0111d8af68c654dd3f4b3c18336adffd9471c3c8b2bd6fa933eceaaed84c5e207c6926ecc47592bb87e7'
  'b91c40ebe9a565e8e1183032bd0ed74f26fb7588cbf93c97c91064d1700dcec527c449f45c209411fa49a8cd113ca2384c99f9ec9b85015317a57813382aa085'
  '6c1cd388415a8006ea840018c845c5b6fc1f3f36f19ac4789adfc80ec9b34c559b8e144819dac66ac4ab05d74d683b18dd18b66201a4cef6acb6bc692a1e8f7d'
  'a6e571848d20c62b02d7708eb7a4e49e1080a179404021834fd6b347b285fdfcb0a24f589a9c48d1f46fd4139245cca42d23def3cd89cb23b9d70227aa20111c'
  'f7fc72f1496277692c9bd4337909688dd57e582cc7930079003632204dc55e5755b4238740315bbf1b6b40ded9a27f66bb4119af81b77797e290f373c996a44e'
  '3459d9eb265cd5d2b23cf4854255c4c9986a37dfdcc8c3bcefaa06a5b6c82618990765de52eea4d8bed72e31b6daa4c45c9296d414867755225a5df6a45f443a'
)
b2sums_x86_64=(
  '436dfe49533a4eb175549a9c05a3e47b7e25b62485656c49dc476518d5699fa80bdf2fe303cb9f1388774c40afcb594f7229db79314db8874f35c826e5b0a968'
  '8188578dcd3d19c3f7d6e019270fa1fbd1e44721bace97719062c0feed13953b1b14bf84dd6672c1d3b5eb64c1a01cd26c7f8fa66c0b9b13b2054b9cfc660e14'
  'f1cd8bc53040f9a7e6802fd4679049027fc1cb23425970633b53e14c8032b7c666de2c21cc7bb891f9c72aa89e93cd0de877fa851d8ec175b497dc20b4e1f4b9'
  'dceee78178d028140af0861199d7f0d1ba8f69184839623423dd0b26de436b6c587f3a9d2f68caac6420bd91a210320bec98b37f430fb0f12972add159094ade'
  'cae251206dba5018fb0e8821e810b804157292cab428d3406dea3038db768f482d164b5d6ffe006016c0634d81cdb372f14e6b204a6d9dba49215b7d910520dd'
  '08423c0459ea5d7d9e73dd63d67d613986ddc6a13ae832929485f953ed9a5c61f939cf7ed0443b591a81bf20af23171069a8812c0aeac2baf8bedb50302b41ed'
  '59d31387f4c77c84392f97d01d7558aa4a7a40871396d01a71cf375143fe36bbaf30dcf0fb85952a5fb2a62805cb3d7b156981e7098131f0e6f80d48eb18a790'
  '675ce2231b49b9a8f2b4dc17110cf87720cbc1943eb0005aed4036609bd3048780a2f1cb41ff077aeafebf1d4b5c4b03a43e9701944e99ce6d6c12d41e345fcb'
  '99ece7af59ab3ef5ab4fe43debb1b1dbc42f8eb2c9bc9ea266ad1e2a555369587164f21c15faac21157793ecc4f7171e81fdfd7a93c3037232cdf53238a5b208'
  '13917380a5b567c51e748e4005a1b0cf68169396d1485d05cc1cb4364bd7f1235da72c89889ffc6d4d1e4e81a9a29c6fc6fd44cc4f0ecf4a99376d3a241904b8'
  'bf9f8486221a3bd94907f1f80019807cf3309f23080a17c4dd46fafc029539adf93b550c12dbbcb0c9ad3d5cd1211fa5381f2adb4a59fc8731e2649071ac151b'
  'c2c6bfc4df4b664ffbf80296bfd001bb67413f806a9a182994901572f479b4fb667a52ada1e2d31d0069c58723b91dcdaac8ab630c22c7d4f99c05eb001b4f34'
)
b3sums_x86_64=(
  '82f333b104a6fcce63bf84ac26513aac96ae5e00e348f43e7d3c0f5c37d7817c'
  '43b9795977faed7d956f12f24f4a9bf5fd7c3972ea38bde172c3530ba1cd83dc'
  'f8130320ec6f353dd978f329b3fb0bbc5252ebcc8fd4fb6adf62aa9d1ab5496b'
  '851d1858b3e708d5894869b990b57b452b74a20f6970524e8125e28800189193'
  'd7521914d09493ea9b5b8b2dd58ec867f0f20527952ef0ecd41840197b91fa10'
  '9a3aaed39d4fa59dff994d7b44368748f42924a17c5104e5305ed1e2d607110f'
  'f53128b27069552caec002a23eb326616c1efad1d1f8a87a578859564d17bd38'
  '45acb8aa440d650a9eee44861d376350cd6f181173f4c9cfab12854274ad1703'
  '6589adfc96765a78df4ef4bd24ce5a5a8750fe51b81c6a267392d931292738fd'
  'aa3c03670b716d8eb12c11152b0de835f3879026dc88fc81d129a1ae0481141b'
  'ac4e6f1e9122e51adde6345d5782e1a37dcf742ddf869558181a71f9c5ef9b1f'
  '3a68e930be87249b9d4dedc16c6a4bb256983e31024e99886cc9b5eb41431bb5'
)
sha256sums_aarch64=(
  '30af0cd9018b9077f723b6f309ffa2a83eb6e0d2c884bc4a85151e591097e76f'
  '5e4078f807aa12f968776c6d6cefda0bcebb6bdbe271ebc954c67e6ab1e6c9b5'
  'c67424f10d124d488242648883be77c999bc4ad6e09237abc2aa8294de13818f'
  'f0d0576fc1abc8748b0da76138bf09bc83297ddcb5c2a50a907e7a51ec959fd6'
  '6663eaf15efb29294bc1f08e93f48ba3597a7437081d03e2e6fa0b5d4e945f2f'
  '7a489edc8b06cdbd6109e30147927abb0caf229513e34eaf0ea22e66f312ca3b'
  '86d190a55c4ff7fd51092ad5050bf1afd9486fcda0e821b4c86b5d86cb092f93'
  'ab25daa50413e349cdff3dc09445b39c836d488442060c13f7bb7d96db886a44'
  '00d52e791402bff4be4301ec2d729ea4c4ba26223f4831000cd6983c7cf4b17c'
  '887ad3e2e70f645b5e2febe83dd1fe61ed2a0d283c793e7fff019b475501ebbb'
  '695af173008b1483d73bbd67026f75cc198fee945da140029d940d433f5c5bcb'
  'b7216e8e8be2f1467c33d47a11babbd2e37e2478ef301d28cb429922afb9ea0c'
)
sha512sums_aarch64=(
  'fef7273e72d5a3383d816de243008771d30399df36a14e5289c2967e7070265a75ed26ddc22bbed098e371ebefad244cf696896758ed70bff8352f9c23a1e23c'
  'b25179488e8b27049eb86f6b5d0ffef0aae8920c32027a222a09337479a0af5868eed3a2bbf94d2e726379875123440aec50af47ab89e9ea41abc313b2f57711'
  'bd6b6855a741adee025b8347c5f46e75d7f2f20bd7535ef9f708d96da1b524f557c6e77a814b281d978f6b3358e0e4c5fa45b27d0a41ef7f04606fd43787d2c0'
  'dea9b54531702e6177d1ef89424b5653e58253e178838b968978738789ba522e9807d471320ccd05cd3a6cd8df118b83c342e1edf7f7aac09341363c54e25496'
  'b627f4052e0db51623bdf5ef4579080f6203506ddf5a5d7939f219c89363f1b7b23e6755432fd9550102ca96e6ee27a293a3c27f318e34dfe9e55ad847d2a112'
  'ec53da2e1a806f1a04018f5218a80506691eea68cde37a6dc63b4ffd22209496ca7f7e6b26d727f9c757e32211ac9ced8caf5017ecf337d82b69ffbd2d776f4c'
  '02d0c7958618f18862a2fb1b8339b5c329d75a15b9b42b8d8f2815e5ee0f0849c697dbcaeb148d136efc3590d96fbfdda45a137dff02ada6d989220c8b51b9a6'
  '9a5239975b772c7cefd98364f1a24a31d966080d2aada475deb2ed253a1b727b530107692cb70a0cf7815928a423384fa60ec6839a48af64dc08886886075569'
  'e2470cfe75a39b64fe4c45436f413e91ba5442d5e79f94a3bea9c8347b2372c63aab5d08bb5b2e03b90f0d219fc9db299abca1da1b2573b4c980681e745d8367'
  '216a487bea021e8a6ef4f10995866fa55d0e34e52d7bb8be9f4be1c570785518ddf49f7160be720274a56e46fe39a7e4b40f2c59261a059f39faf99b43c99d8f'
  '807cebb36d7077cb0ac534fdc27b01e529ef4ecd725d7bac44088af198df253248dea6710f7d796d440b3ed62a91e4ff842ab91bb01b44ed084698f656f70b86'
  '75c80a62550c9fb71c11636455c184287ee54610c2cbee8fd6475209b9ee3d83297a8a671a5d5869c80853be207bfdde7197be9b477b495c44b461547eaa6a72'
)
b2sums_aarch64=(
  'f504b62a8f79d7ed198cce8fcf0e8138d64824e4bf4bed39d7717c7f8bb42303de49bdb32810e19f0d01f1b6741b56313aebb58a747d06afd626b73b89429df0'
  'ae3de1962c1e23c7872ec5a5a6ac119e7b8921e8fa884254aa172d3b30b4d0ec5235a08c0e944177c57e39829b67126e9317e8c115eb6533ab5391ad24fb1cda'
  'a9473d192de3ce5f18cf11bfb2a7f0482918c0e11573d1c44546b016eb4a285b1572700ca296963730fbf62143ab080e4f5389abc2b0dae5d39edd0a7bc2f12b'
  '355515d74267594f2738d3dcd031b703beca82e3507d6427de7ff546ee02d41673b94a9708b749ea31a13d883b3b1d8557324e3bdd46697cfcf5235dd553406b'
  '1fb4b7369e6778765958c815ca0a88154b48aa76291fdd7c4981e8818478fe9e27288cbcbf7b98dbc05eec3dcabfea8d6935ae6220f4d532e463e0dc10d00403'
  '954bb5dab54ed29d680d2f48bdbaffe0769dd747493e80f0d3139a5f4b919dd86d7f5591649dccad3c2516afaa5df0ce5c758f8b92324b174c56e6b852385b0b'
  '11d95e91d3f8d73aef7ba5d2fd50c565eece2bef1598ce72b92ae201b94972e539a42deb9d19c8c41de5a4f10c7db581b2611f15c01967d47563af02a5b609ab'
  '0b2c020511012898fe6c92c5763ccdf9cbe75d797efbf0badaa7705963cf6ccfee103d15dd04becf7b5002aa31d2e8ec360d1680d86595b87d7c23e38e3f5690'
  '1709f272b26118d1d3e64092f981c9d7c79df22718c7cdb5ab09d232efac5b34e1906996b58d46d835d9a5527e37b020bb5d44e090e809ed2496337d639c6259'
  'f348d51be111331bccab09962632ae07d017398cdda8cc36f5d7eabd9a832407b40d55b02d49bed2d1fc27f00999acf8b791f796b4b9762fb48f66dd98ba59f9'
  '61887cc4abcd0bfab770db884445824e15cf5b79dd7d0efdf377dc735e2a110c5e1318bcdc7799eae17130efccf31af5b1aa77ea23383be91cfbbfab15f96613'
  'fc56d9ff0346f75b678930646b21b97c20d7b7d9cfc722ab6934fdbe781fdf21c9020174cd4b382419d4cee5c008c0b542d08ce1186551cf2adfbb76e4fb104c'
)
b3sums_aarch64=(
  'a2d76420febb65a90e8fa6249e9e2b4a934a6fbb45e4f10047ca00e328f59f31'
  '0f846066bca6e8fb2514f2a63bff7acd929b594a15c6db5d19ef14df27a93f69'
  'f4e8b70eb4563b4ab91254c67fe7831adff703e72bd3d2207a03f2fbe3144b6f'
  'fbdcfaa2839e9efc2243a455a95c06d18bb5038df77ba21605e9c407e69fcf70'
  '981ba670faa464ed61c8dd1b1ec922bab880c79aa7b11604adc510c3fbba5807'
  '00e555d5e5338d1a988f192f5c40d73925fe47c6ad0e6f6d6d1852f30fb0d623'
  '77fb3ef81ac147c6aee7b9aa02a6b5384c9b459842839ad7ea3953bbd9242ab7'
  '9f559f491aa0adfc47780e86d82b1610ae0a394349c2f512d2cfb28f5fff6f30'
  'ef8a2529390bd2b5a2cc24271f9631f09b1d3c3b1db5732e605e14fb820d8537'
  'eb10c66bbf7dbae55da217b7241d99737db09a5ef08a39f39459155b5b00857e'
  'ac49924819f9fe141a9e333a88799ce5a6499e5953a8d3683c199416ce9a728a'
  'a416b7fa41dad10b6d87b67f8697006ce1582aae148d7f894f4d4532bb122515'
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

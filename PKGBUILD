pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.5.0
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
  'e4c12d4db933355f494258d45032da7f4e17a204b5c1e4b13f1d990f5e561ebd'
  'f4593906a1f383e4169e30ba82e0bdc43676241ed24bcaec7ecf314566488791'
  'ab7f8c0f2675d775d19b6b2ca4afdc2239e8d0fee8628867b74960f4ecd16c7f'
  '93b8131331600a78cfef4774d676b294ea859b681d594a40a69cb11aebd93567'
  'b5af14e0d274823a6e8ea07007b3d87731fb9c2c1fec3d81e0b0713eff8370e4'
  'd8b1d837c30fc285b5e4a1ab7104d161f1e43eed14b5788f9a2d86e195b3b78a'
  'bd02327ac26ede7d6899f7eda4336de1998de9f5f5d892c16e58121d7deb9417'
  'd43644f734987a473da50b1d28b896b91d81af15a941ecad67a52b3beb871b79'
  'ac7737274bddb29234ac523fb359a14a4869fecfbd685def3d1d57fc17f98f29'
  '61a4cc1579c01daa79ac6796b3c3e985689db9794faf093d8b4c4163ae613231'
  '1f32cf6771575da472c6c490a9ab9cc342e0264be25ddb97c3676af2c408158c'
  '6b2f11f7e1bae4249d43ff74435fb7afbcaabf97e1f20399f17032cbce242c35'
)
sha512sums_x86_64=(
  'f0e582f4725915f23ef3d58e1e2e38d37bcc2f094f10451b459bbda3f0368d62e230653f2fa6283264ddc57e9928ace569939742247be3b90ec0c85f750c74bc'
  '74845bc1afd1f8dc59abfb345c5eb0d2af6dd0d9944d1e9f70e56271d1acadb876fbd5d0b8e9e3279fd944292ab46846d9d220943ed1d3b9ee4c8b3376960cdd'
  '23d462784d83e65e26e8f8ba1d8f09762131f9708bcedaef19ad7263716fb1b1d1367ff9f22066afb67ec504b7f8fb434aba14b1cf2fd1841888ba41935de424'
  '3a96dcc4252c31884f2590655b32efe255c4e01c71628b657ad3ac65e9b96f85b1585d7fd9ed08c32708f35eed9247d79a44b7360a6d8f9334617818a0c23ff5'
  'eff1b170c7f0a4373b400f47438e84db9df321bb9b48a3daa87e18a8f512a64f628b99232c562034e94fb9fbc01a5ff165fece680d95ae6d4ae43f1c4969116f'
  '12126e6d84f02406ba71d3e8fe9d2b46a1c8895753c24ba88f46f7640ea3f3a53d7b6ae3814ea3474a4f2887e206b97dd4c783698c87d4969254432298934d82'
  'a148e351379375aba4143a1e97159519a8a9f30a3d1649204c6317760dd007f0509343842026edcf5d06e62918b0c2c5993e14c2d894b94c2745d762a726cf5b'
  'e090bce5be074ea6ce35327274787ec610e8850d417038b75f487e739101e43237a497426278802fa7eadcf674b64b074f814c8838e59fd1ccd2939d2a36b868'
  '534d10ecc8582fcb22ced4528f5b7c8f712578621e4ae7146c42f1167105f05ff14956793520926cc2ad34cd18eec21bcf7c7aa4593c3b62e21bdb7bbb4d647f'
  '2acb1848982d1266c5d590e75215b3ccd2b5b0e23f43928d354e2b83fcff517cfdd28851b4a48b0c37ded8251db8c9a144927afd26e032e609645ca130388241'
  '0258047f846775cecd987584a898638d78e935fcb583a4ee7a0361cc5b2a4b1b33c6dd2044fd9f903e6f2f990260532bf7acc097b0f099f77d473d369c829581'
  '4daf282fe7cee59060f77947bd629da3e0ea9a6dd05f9392d9fa11441e1f5a9faabfc960e0bee2b24956bf1e3f61e528e9fd34554d1ffd55246607b000c3b547'
)
b2sums_x86_64=(
  '5f7ece83336a25d94b65031a69ca9b988c56b9665d00e639f470ea4380e76b07a816d23e1ece3b066125c7553ee278ae33f98483f4374298ca5ec83588097275'
  '82a0158e5c61154a38610b869033db211ace33f043101cbfc50a12436992947f7514749d294e0928fa551f6d5157f84d0d01a68ee52fc43f579f7fe1887bb2e7'
  '497a97ecbdd0eda35377fe28b1a164905b1ab336dba5115456369699653dd004bde4f702c4078a67168a2a6d1ad3e3c96653af1b0e8eaa2f1570af0d79808ac2'
  '717a75ca98c4dbcdc2cac32f388c61113488f71a992ec5b054fe765c11f2097665ea1ad3c33765fa6898ff7e46c56748f33a28146a845bd03d6e1ead48b8c3e1'
  'd5adfa7880a5947a9dbf2daa3bd9fbdf3e9e998eef8668d558d751896a02e0467aefe7caa0edfbb09bbd0dc938f5b7c55d782a0b1a20db861eab1ecfbdfde9df'
  '7841909aaae977729771a3e7e75981a26b2d5f646726cd5f049eeaf53d3145bcccf1a241f816a1c5df4732d0dc28cc43fa099d359510c02d859e5ccc5bd325a4'
  'bd6ca9b45645ea3932f4a450dec596d1d06b3509ed81d209e941f2596c9bfbf3cea77856c17ec2ecf4563b4e961f400b4684955d95f0f31ee74f3227e203abc5'
  'd93efd47344b813f6d5c9e9474989c99a3c13f83ccf8402e65583e9ae933a9b5e7c5d5da5fe1097d837650c7db0a8d1080f52bce7b47978bbe98c47145eaaab0'
  '5174cf7dca8f731d61ec7b5cf6e9f560f8e88700502a49f00faa85acf8f284b59f4d178039bb606de88eebe736f2911bbfed5b3f9d6a27dc76dff7853acd52d4'
  '548a3a00c982e3a6471009a22fdc3dccb8bf493f80b739cc694ffb9e5572a1433bf80189befb853a8c6c50b33c678708ae0709ec239cf61b01c0f1ba94e077e2'
  'a9edc0244244e52a5a57cca04b897287b9aea7f10418f624b36dc6938abca1702e9be0f6b320d328d9a555038751495b8b901618ca8f5db528770fefb00b907c'
  '4bcea41ac403d0d4208490003a9109b6d1ef0775064b3a9ce0c0edda16e5796fa4f8fb0db41dd1dfc097aaba8cd16ddd8b29b53335031253a35efc50fc024a72'
)
b3sums_x86_64=(
  'd508cd31a97b96a814d1a598437aef6bc1044911a389e15fc62e63d3c19546f8'
  '67ac278f7f57fa53987ed4f0cf0214ecf10218d056e4df92d695d3e1b96bc265'
  '1e51514b7182e9cd151c5175788cddad2e3dcef74f5b0a959c6d6e5bbca03621'
  'c1d711f1921ba4c1d230a341ea65f96044395d9d8ad5b45ee1d60ab0f2655d48'
  '104848adaf5bf8bb03a1714c9605e1173d6255342a6e7858142065c866d15b27'
  '3ed16b75b07af5de5a5175fffb81d47ed0e8fa4b95862ef0d8d9550dbcb0b4bb'
  '8fb4ccb606ef654a5b838a976d270d366c9e05de34442e1115d444145d2be74d'
  '3d6e37b8604b7341ec4001b3bf52b950f2486e820eeb1eab89973de1cb45ff0d'
  'a5011572873d02be16c785f4bb507df6e5bdcb75cb783253c6742a11546692bc'
  'a84fe504e51c5fbe8853c2b3927545c46f2cc3e0542b0f1922a2c892a54f3264'
  '914a92f19eae9986d8391ed425503f8d34cf62b0bc96841e3f3a2900a02359e4'
  'c72e29b79408006af424d84b0a656ec49389cf4a2bf800c4dd3e2e3ad22ceb46'
)
sha256sums_aarch64=(
  '01637da1b46b9cdaa6b1b84f0e867f28986d91f2d4dc9cafbb36a50e3660cba9'
  '26e82367348954bb999a7f335f72dee4cb92c3a1328628274757d9865b6b4925'
  'fe93cf83670a155f096aa64c8cfc945863d0b7c65f56d941af63b4cdf8335f74'
  '49db51321da2d4c0651ab383e0a9493b08615b2ddc5886702168bced6e3f1fbb'
  'ab1a7a1674c0e9dda75f4f93fcd71fa33e4503e2887e1a282a05d59ba7c35b81'
  '5af3e9d6135e793444daf7d976943e3f86c44e1456462a2cb2b3f4e1a98bed0d'
  'd9e0e2848eede2eaff011e0c07ab789b247f4a3eedb4559970156e8588314bbe'
  '204b80261ea25aea45776532ee8100c20ae98658c7efd4012b2290257b254599'
  '68fcec27b38fe6984dd299d3c64a385747e138607dcc3b3f8c11040a3af32e3f'
  '896efeeb680667975ca7be31224ea5b575eec4a443365ea13ffa1172b5088316'
  'a0c9b5e7b6ef77eebd306ac22831f608d15367c8328b0364cbada74585c3590c'
  '02e1f0eb0b596ad1061e1aa9bffc9f59625cd0dfd80052cf440a716aee216217'
)
sha512sums_aarch64=(
  'a8b735d6aaa82926dc92b199baa5b30a1d506126900a14d4aad8f4e95f7cde6df483323b2ba0f122e56d5598314f93086e6d6f046b8eb053748f25e604b710ff'
  '595ded5fec80464caaf0b8bb4661bdc030628d29172f7b8fc54e70f48ba26e5181612b879c51deb522397566dcc9252f4bba43e11cbc63d1b002b7ff3439aa50'
  '258625bc62f4b489f7c402bf40c69ca901b7de00691d8ad62ce72dc0d1253e09b1b9da3d9cae330a1e89236ff957a1967014a4f2c70b81afcec0cb0e785a0b07'
  'bae3f2edb5160ea2063a7be6b48cd73b236d47fc68a895f877eda4e6effff06374345a2d53b6277b12390862e5a4042390bf51dda787555249ca21e87d975e55'
  '0653c0c225334ae1e99c7981e0793fa869b9ebb432f81b3140bf6b025bf636c04fdf18bd181b8a57a74d47f6797ab1a2f178e2f2689362870bc2bf9372bf7d31'
  '5de757f008b64dec4b72261d6a3cee07ed9444335f035cb2ac21683de6e7ab9d41f478fb6fc90ed3cdec42440f88a8697bd350f6a85999ea0d69b699a1adffa0'
  'cbaede373758da6111adaed5e32d4b0baed949d0f5de30cc8d988031ecb31f5256d0f68b0f21db76cc0b33023aa1c44d365c07ef1165fa603833f59ff74decb7'
  '6b646e01337579306efd6bb5ff96b2dfa36c1904f378b884f449bea28312766dab94cef0c58a4250afe093deb58097a50ce9b1440938be929faed98862ad213a'
  'd2d6c2ee50b154d70d7a9bd601f006c9128a9f1cd3af8518ee9ece972345629b63ded7bab49b9df772a7e7f282273a2662e6e6b72d5011b63e112115e836928e'
  'e652efe4d0b25c0329e99d46d6fb18decad94e9e94a4577118be5b2bb9799a08ffb828fdb3b14968c25afa560baf270ed851a985dd8789447d8abe690c6683c4'
  '97937fd4564ed23d6159efbdf821c0eed69f55668f7bc14500706cc579d8cb9eb991fdea511245cbd314276b335431eaf8aa424a2aba1d5682aa19abccf401da'
  'cd27365898e0fc25c6f02455d0d826087d12976d0430ec28b260788b03edcb31f5fe9fd2d8437012263719bccb926f8f7eb54cf713393f5c65d290d93c70f26a'
)
b2sums_aarch64=(
  'b33f8f87c7c8bab0cd73fb14728339284c808706f48b7e8a5c67464d1002b435b49e17d0212261a2610de10cc0fe544adb5684744dd81827f274dd1e38529efc'
  'dc9180e322094e784b6ad7a761f642a805cc11de5683f3894c4518f8fe8c724e5e0c72d9b86e5187ee20e3af24ef2335c8019a0e2b496233065d5b7d305a7290'
  'f097f20c2cccc01b16f21035762ef49f630681f06404a024b3e490fc2cf023ab744ba5923168a2e7263eed833bfc30ad66c3910e619ac6c44cbd56fe372eb641'
  '3900717a67b5f5edbd31f96c31d32525406fef7f8804ef4f29fa0ce0bd8a834d291d78f9a972bf799452d10efb39fb3d675696dee4be9985021f49b024782da3'
  '73d31e329382b50111790fcd4a051ab1b736f0eb211658ed4a845b9d2b388ce6ec8f27a5e1f01b0633adfb807cbbe2ac4880dc33db22df6a58f6bf170d886305'
  '872b898281e3ada2bda0d14401ebd800e57d6918bf86cf0c699eddc37ba88d50afca6504a347a3c7530252c485420b6638e01caa5cc460618639b77ed249b2ba'
  'c7b44ccd975c25b9f8a6c8311a9faed67b64dae92d7182e6dedc240d53ed9e77848dc73dfa93b6848475ff7cae84e7fdc68744a414747ef5e8cb5ca8579bdaf6'
  '085547cb99b941b5548b92350f9710aa13947756ab31888ccdd2c7f6d056ef597aa8a54b4194e4c6cd67ba9d572ab03b1f60fd6700191c9b8dabdbfa36bf7810'
  '877acc11dab1ac4edd07cc99fc258a2d5da256344bc11dc9758c24e1027a6a31f619a4723eb900102497bb4fd61197bd24500729ebe585183a4bfe34748c7705'
  'dfa87ada10fe045bcd4bc0b3befceb1473a6d7e828d0fef1b0268f390cb901d8d336d3dbd370ba42e67275ca6ce8ad0e715465955d02733e6e0c85ae8f0607a4'
  'eae9e97fb077e5244504bb32eec9ab8e3a9be96e3094d23f0a26b192cf5493e0b4ae4ec042b93ce70f92a34fd2ba9abaeacb29f06091b2d05bd28f54dc3ae50d'
  'bde1492fcad9a6420ea1d9ab1c159299c950f6c6dd8fd068c0af09681a747e5baed826a7f8249d21299ed1ab44591a53037e9d915e4387c2f83b59a74e6c05ef'
)
b3sums_aarch64=(
  'e15d466ab793d0190bb4cb5fcafb231e959910cfb2390aa66dd40cbc7a644ae1'
  'b969011822e781383adda8d948a45d6e656dc3cd23851e7357f5d00b246d0fd9'
  '57791fc0fbae59e1203fea2a1ac80cc5b0d81901addd306505242e47c7eeff38'
  'bf2f32ce0bb394d1971c1fa3c3209da4c59439844ffe5ac0b74a5227eedfb563'
  '396c8bba4a4d5cd68b82e40d9da606362ae893f4c67948d7f8b9b19239201c6c'
  'e58e745e0301ec4ee611a0dd374979c513b9cd618306ba662ee0fec89b28e45c'
  'eb89cf4d62888f631b3d88aadd96dc25d04d05937b3d2a92dfb000a55da581f9'
  '045a5ea4f9d4ee9149eda1a5e150739da6497a7f78db67c0d232b6a87e49af1f'
  '7db5aaa9e6f8eebea6cb8afdcabdc2919667452d365f3140d06559566c317901'
  '23b1ab0bf29e8de3027b7e25a4eea28a6b39d0b8d9168bdf5246d8c4aa15b0d8'
  'ec7bc08d6cf03b722be8cc2372febab16bdb6972cfbae7c1292cfd381a12e804'
  '94c531e67e107fcf2cd17987ed20870bb1ecc2318d3fe439a88a6e692f03654a'
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

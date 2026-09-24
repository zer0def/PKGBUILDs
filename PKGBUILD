pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.6.0
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
  'c79cde01fbbc15bb9965f7bc135d0276b6abca36151c0f56edd49d86285c0101'
  '4b18dac23b4db91ba86e31876cd55a394f2ed2732df5f591df01837ce1a1cee8'
  '01cccc960bb98e71eddce376ed5a3609312c97d99c4fccbe5c773ddd33bd286e'
  '5af7de1508379b1673713eb2779cf61deacd45fe163aab21e91df94b8a435b5d'
  '6cbf7f4f0c46fcc6f4b376a7d868b503276596e73a1bfec531e5d2f6b98b2bd4'
  '42b47c22efc1883dca99138e95d28dad500d1f854fa8cc7030710c3840e68cc6'
  '4fb9b9e07122ed97387b82ddb236df73a41b8cbe2b9f01f18a10078ee2aeb43c'
  'e597148d8e48ef4c9af2c3a75ec6d0ce1e71220a15df053a86a830c00d8fbfd0'
  'cf42c7207144e3aeb5ab32dbd274274e438327a4d6c3f2662336963f69a46648'
  '091b564938cca38def4db8367c0d7fa8ac938cd55604b0544846eee13352d25d'
  '46602aed8021b4452f76e0c543672464e267327162b0f2e003cadc0bf58b9296'
  'de3d97a138c8fb53802917fe740b1641a9e4ed2e649260b1791fef873c9d818c'
)
sha512sums_x86_64=(
  '07ab4238e015d5eebca3bcbd9f10774124729b2a579be987164b6cc0844f878706082eae1ca60865293fc6be5ab837aba97eefc59968e7eb5f56fdff780ec789'
  '3dd6e096c6aa60f2eef49e99dd2a5fc1bc351ce696dff293f2324465bed21df0b2c2a52ddc9d13a1f9adce8a89cc86b5445707688b19ec724d1d5a76a2ccb1fb'
  '8a8986c5d8ec1f9e4a220d9fe7baf5b723b215f17f63817fcc4be538ee6590cc8768f716e1627ae7c4d8d716a3a293273ed2fb147c07485692fae1b1a356a2af'
  'd71046d7f132bbed60b730e00b14c31fdac6122630b94d9409ae39bfa1d1579e1fca51558ded554fd738c9416a92a9438488f1a80539c6e3f453f266ed56784e'
  'ab2c6a2abc91a30d67a1368b5d0aebb5fcdd7553e6fe49f2da67b13bc43f96a7b98f162b39f44f66475656d95b218761e39116910b7de6b30733c1ae8619a463'
  '55c6ed9f97ebe03fa342db49849747a67c85765e6d5faa56f00492edbd7072a70df6d508370a23a3672f95cf083b53c3188cd3f06bad772ea0105e4f5b0d3433'
  '117f724a34a04d07f23a8867c37ea492de3873f3d360f0dd5f1aa1233a66644cea45f9c0aa12b70e9d3bb91572a145440d52fda551e24c0c164b53b3ccf2f52f'
  '6248a0a1aff784931734c5be9443db67122f0ad18dc5ae8e2f703891c13a630fed2cab9c221083fd2c25004f83f3e81b9d626c0c3e8cf98eefb1d77d23205979'
  '56f77582bd1f092c3d4f73f072f30a51aaa75bd754c4d23f314a99d49a92c5d4ae6ebfba88f6bd9b3922091acca15cc203a9fdbafcc3b613867c04189fe851d6'
  'd0c870d16df09d6cf78faf97c902c61205d8e2392de369297d7c0a50b36dbf317a644e0cfb594aae60d346f85d858aec045be26e625cdad0f53db758f874d074'
  'd6bb06be1ff875b3ff5161cd0595255e3e5114983c8efeebbb599d0f93045ea6e39636b2e289af8b10daf3d938598734908493d9fe085600373a96ca12d788b2'
  'cc13fc3af34ac8d4ea61a4786fd8cdec510d3627b6a48622cc61929dd01c22d556be3b9cd80ef799aa3e190d2082013108a8261194384087ebb6490bef31debb'
)
b2sums_x86_64=(
  '18443b55c4e4587fd6d39019e4d41bef104634e71d60c73f83701fba55abdd28e582a3cdde7841bf3191883845ab2078047621994effb615d0cd21e8c2f74b90'
  'e59535c84b3cdc1d58f7ebd55bbafe2c76f15eb28b46f5fec7894ec3c911922ae815093c2190a2697089a8912fff81666fae4889fa90d65c75b620a11d097b92'
  '49e380fd9aa5453464a3bc8b02b4e04f73402fdcacc85fc7652dad2a4e693e694dc9e67ddb0c2a94e5585c7919ed1047b669ff475e2922ca8fe2b226d0d6176e'
  '72150e80d4ec3068a14b74c59467625f8f7d2e4dd1f69d6e6c0a93e63513374279f3f30b6bce319f69142776142006307abd30d7fe0fbef92fc7299334ea761f'
  '0c48799f1e931c055b5eabb6070c8d48019debd2da7ce02d7017e11e53e91415069cf980fe2ee6c54720051370ae49e975d541e071b54074ac82c6dda98eea60'
  'fbcf2855bb4f9806355b03286055c4ffca5e24b1e22e56d8563c04a5981fac1e28a6bf96ba75886edf04a030684f1e87bf6df8a45917bf72af7e84eb0a7eaad9'
  '181678276e35c469a314944820fc1085157c34073d0782f48e2b2b0a2c3edd69bd74a6dbfdc29fd95a703dbbc0c010ba2babd980a69ea8d73c0c617cb2bb15fb'
  'b21517cbcf8c99b9060d8c8042f70a31f7d7b88ff28741635f00378f229cfe9edbd8e694489cd6d9325057c3cb29b8c0b9c0c84dd768dbb8b272adcfb633a43e'
  '8b8dc5ffd9036a76e31960e72f4487d7bda23c5280850bc14038212b9959bc6961339d1f57e80b9faf4b9d388a23040824d70f7a677b5feda1dc3433cc476ec2'
  'ea967bb026f05d947db0c48ffa7a0931e53dc919a60880eff1b5def6ba305efec3d301961bf4e300f5575e5730b363fa87a82caf363f9096e1221b9e75c0a69b'
  'f825aa29133c68a7310cf359943edcbc0c7a183123be4c2dc427c73933ed455daae0062419a235101d276fd863c83b15a4e268945a3e7f0fd7727ddc940573e1'
  '764b23fe9b47a16f1cfd84d785962f766c20c26e8b74e69c1e1b8622cb3846239b37f32659a7b02d244fbca49ad0ebff7fb0d556abf3d5dacf7d00aa70f432cb'
)
b3sums_x86_64=(
  'fcf047b291b70b1fdb0227ecda6461f10d3e937f99156d1596c96757aaa635c1'
  'a4d9bd8eb95fdc36017b95a4a6d05f9ed3c090b51d5d1df89485cb125413d756'
  '130c6e9df9955264202ede8b88baec98eac8fbb7a82278854b1abd125414ab84'
  '04eeef4f2c6fbfb8bd1dc36e117d907bd48586d016d96d2a04dbff46604909e4'
  'b8eb4ebf21af19185e3f62587e75dd4bb05135fcae7f8d778ca9c4d1b9b6f3f2'
  'ad5963ba5f3f280102fcc095a6520a99aaa4012abe8482b3333de1066a84777c'
  'c3da243c6f4b7a54bfc8baf1a3fc91f7d994ec257bc9f3c47f0812cfc9b38fd7'
  '5a87e1c3f79c821e9b26925f69fd6bba81e786f14ba7f9ec2dfa2233b6e34e2a'
  '453e3439066a6c8b8aebe19c8fadf3f9c5eaa86bfe04aa3849ba72e57c04b0f3'
  'bd8f0059384f7c3292f4cf14a2091ee0aaff009907ece9d1887cea73a72db1d7'
  'df2f2d136922e06108e9f6e5cf9b3779917b2111778e10808927e245ef4fe577'
  '3e0b63bd58d17a9f44566ea48354c18bd36f615017f2ddfda820dcfab1087154'
)
sha256sums_aarch64=(
  'e834dff90ed5f0f09ecc229d5d8b93f9682a4600c00c5a4bc7df078fc26199e3'
  'b92d68b80392ba0f9646ed50e9482f3a4cb4e86115f978793b3ea6ea8c273478'
  '4c3eb4a6291be673244124d3789c88c1cb48826d2c0a737f36ef411ac3822db5'
  'd3a5574cf70970942cdf353dcd2bfcc5d99dff0e214282c00c37a2c62e97de9f'
  '0c836637e09f8795f142253d8054ffd82120d0fcc06139c92ab84496a570c35e'
  '7bb4ce035c00e530aaca2999b59387d8be5a938b368a80e11a4714aabc07b4ae'
  '6fa9c9b10f0b92f254af347eec1d02586234f8254cd6da6b4053da4a29c14b6f'
  '6585a98c81484eb49c60386da78c991dfe8b24bbc8c84c75efd8590edc41e8f7'
  '5e2b8fcb8a79d30e3fc94bd62ffba5eeff13a6705fec64d49a313998032a7301'
  '33fa76a0022099530febb7b8d790f5152a84a42cb2d8af19096a64abf447f7a7'
  '1642864cad5bddd8ad5ef77eb7d50089b621a2d8b2fd8ee2473369e474316f8a'
  'c9e01ee09472d638f3e0ffda740822b964a9a01e369c79bded9f52130eb891f4'
)
sha512sums_aarch64=(
  '85ce4eb0ed91be2efea4e536b0092bfcedf7f2a20cb7e78a2a2fb5cec07e8aa44a7901b67c848861b477a7b4b434e65564cf242c28d61b94a04156085b26040e'
  '342bf317618aa5a769dc6027ccb40e84b3bbfaf0808e80f98e34a21ee60ff2d3e323c5b7baa2a9b156320f947159c434d1304103f621679c7233d8fe2182a22b'
  '13e24f8263b3af101441bdced3932753ecefe812dccb557e567c76663c74024c5a72e715738855ed738dfe42a354db9461f78dfc1a4b7f0f60a326ccd598ce3a'
  'ca9307e91f3a7fdefb298cb7abf279c64021f4f515d607048bd528954750a27ca3f0baa8537bc881ce5ab7e83fbee5e8b4ab17a53fe003005046a547d7c9e599'
  '178ab26bc5d4e5c9879a8b8f6a2ef3f07703824428d0995283d7d48120d1c56515c290a0078e2afe6d848575d43319e9232751605853048b95f26de646f67e58'
  'b05cf5f9066d5041e93c090adcf6cf4d3a7a972d15aa2c9f5050a8f156f791eb58b8698cd37236f17e49e016ab173981040035cbd298ea8108769a98e6159cbf'
  '268bfeaf5ba258dd22a1a964b2cf870bfe0a7ec426899d8ebd349b606585b7c01d30914df78e929f8be22c2f0f298bbe20fd465c8935d95f7fc495ea99260f4e'
  '7a28312e58c445de302211b85c2949606d8fb910d5e517239ce829d11ff813ab0217bbe72341df068f3f605431927b42a29fef1b79072d941091c46a7ed12289'
  '2da56edca15e93349fa4f73c4d65cba4986b7fa40b7c80039e29ab43484768487eccc27d70771a57089b4aeb16fbb717464fb7bb815a4395a7983076926b5785'
  '1b48c15a69644e22ba85e47ce3d86313231c8325371b06121fd5cdd5e71c0a41b91e3777f6a1605f734ab5efd1c8e230d6c87cb490dc48dd6de2a1864f66d26a'
  'bbbb72fdb9403458aee27d933cfedbc9776e0e8d680cc835f7467b1332e89880a2138d48861898cba0a048b2018ab4fefa00086011fa479ab25512020e194d3d'
  '5e465f32ba667f617ce91d1b17859547ce2abdd2939a5701d682658fe9b523b3b33d62ecc463a5cc88f7e6d130466317ede653fe80e154e52512736334ccfbb7'
)
b2sums_aarch64=(
  '2bf42cc8cb90df2aac6c10ae4b595f6b6a0bbf792406d791b4a55562ce6459e6eaca6480bfdc86254640a8584ff7aed7ac312040f9b8dceac71707dd9364d834'
  '66c4745032cb63828facf26dee3d041cbcb6ca9857dbe309c835aadbd46370d4b6310e9e343a2145d0c7aaece421c60d343455cfbee67070877b6d0acbecfaf7'
  'b78e863ab7729759b3a35b26223295fd56ed1ade0924753c574663e5018ffc4860d8b471fef73706f7af3093577f4965e0457ee0f1ec8aa516a8ac8b1fd34ab4'
  '4d8805bd23e2fc3537b968103ac0f03db0897e565dff5ecc9d7346a76005cace42ddbc5ea87ec46631865d8bad51f4663dcdde5deed5c6333db6095c36e85c7f'
  '5ff38f9f71ff57e275609d449e9e48022e20264df93d9033800813a46ace0c88f2618432a1d20e746651d3932450ebbac889283875685628c02b53cef7db1e8f'
  '7bd2b7f6ed086f050c2171b9a107d4d39f079c85741951da85ee72e43716b1b286b385c66d3b30cd6d967104afc7d8361f6196f8ba533e6aff297ba1bc0235d7'
  'a8ab8ced04605907629800cfc1aab44ad7229b97c4f8534aea03384dc10daab0528bf145c83c36fc6e8469a3fde404411087e2368386df40bcd5f117c4f9b56b'
  'a3caecd50e672a37bdbaa1b2432b5a2c9533e434297bf0efb59153f9ba3e6596b6827c76d2940885bda944dc3af7884692769a603794a2f6260ef53029f8d8a5'
  '9a8a21dcaa4ab58fbd60af84d6d4296988736eeff33f270df433c4cf932497efe2d4cde49da2286cb3651217c19c77e12e091dc0abe9d6c218e7c419fb48cdda'
  'f81d21b790070de1f6c8134b1b0d170ccf050e7b67c6657c971d1c229993cbc71b3840cf3393f846e2726ac60c92834d291f2b1329779793d70cf604465afdc4'
  '3128c6697cb63edd1d6e1798d3776c930b06bcb947e1f3bd8cde174a4cbfc15642241ce25726166b44b97c7d2d5950748b751c1a28fa80b4386e7f7743279c27'
  '247cbf53ae411740b5730fdfcd2a7972c092fa699e129d689f71b01ed1156578fe7786647c191bac84c61daf2e68ba3be32469e4477b9c526c31276f931a5e34'
)
b3sums_aarch64=(
  '666330a974a9673484c7f09932ec56a773f68354e187390c3d873d94b800091c'
  '4c4ca4dfd340f0abe28fedc11a12e67a4ea3c983ecd35adba3376cebd116596d'
  'd01f4b163948eb6633fe161ae8be53a982a5fa0c535d9cf562c8fb3212fbaa59'
  'e324d8042b65661c24c8a1dd6a967bbf711b5f52034ddbbb1b91b055ae492a79'
  '9527bdd893bd8c309d4df5aafa82c3b7546c24b7a0ace756a456cf8a962273c8'
  '671c14e804e1488a1e3dd3ac3b57839f48c38cae3d4c93ba7546338c72859fda'
  '7c9b42e238359d1260954381a46dadbece3d3961ccdc4372dfa65d8a48e01b89'
  '9da0149d57aee5f963dc4c482f125bc1f5febfab40e9f4395e82c44094cd5d54'
  'dd58ff18742ceacb232dc2b10353a5f6fc1d2b431f6ea433a4cc8120ee293700'
  '6640c1970226743136edfa32696e7321fa2452abb17d013ea7e24b6cb5e110b1'
  '5f3ef9fd2f3a0295dff38ca628d30f48f70a4ebd976fcf23f618fb2a578f529d'
  '392801316ee14a08d4ef2bced19cfd9bc9e02e430a2ef16765f1cdf7697bd1bd'
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

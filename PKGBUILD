pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
  datacenter-gpu-manager-cuda13
)
pkgver=4.4.2
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
  '926e02d613f6284d80b2866ec2d480439ce201acc78f357e32fc900e405ec8e6'
  '426726d97f97ffdef6f2b15c292e5b9c02615b7469d06164d791a2c0a9caaaac'
  '3e6fb34ef5b9f6a0df79d5391b26c55d1081e2d0a056d3984348fe0753a5efd7'
  '0f2b64b1e9411e1f79e1af13eb3b394cf945208873f0d2581682c9d5230c3409'
  '843c68ca31aa1b391f823b4cc381e4aecc24b1cc535f5cb07cae8445af82156d'
  '45f8c913ecdc9bbbf6962377544873f4acc9faa067fb5ea735ce97b2114f5bae'
  '3bef1d014e55bb723d9810a51f22bd5d4abcf552f4ab3634aab6b97090c41038'
  '9d4daf0a7f099620268ab54ef3c94d91801eae3eb2b426329b45fd0b3cfd73d6'
  '887a6825f22bb0e7d679fb32aaeedf959f28e88a1489ba45c352fd11a56ad38f'
  '181d083c6dc6a6882515f79a66bee659f984045306cb32f5b352364f4416d48f'
  '8d4f0d02f90eb06130432bc09e1ba2bf2289ca0822cb5271da6a1f66ad6cacfa'
  'bcabe162245663abe5ddea1e843993e91f86b6821eb308d4e305bd2683c69007'
)
sha512sums_x86_64=(
  'a56e153bcfc51b0a68348f4cdc2445114acdbe580adbb7d258ea78ce0fa36a34d2b67ee4068a4309b1224520b5d0a33c66feaa07fcac22c7af3681b26e22baa6'
  'a06e2224c9f5cb3f74e52473e91b67a84067548dd0473071ff2312aea017afb4a755e431c436f70d814afdc57dec0e1965a4599097a56f3ed2a69bcb36be1af5'
  'e0dcba0802c131edf115d341d238cbcb03b85d89e997814ac3d8cf25b88024a48abe7549a01beae18c1743ba1061ed64c97acde1a2145577f5c7f4aba75c9ed1'
  '115406c9a1763f11606336fe0116687b8aa8dca771c142ff0f09b8c0a08fa915593f551df8261a312020634494d7baf03fe1df39794118fcbf5f224b2cd78520'
  'da63948afcb4c31bbdb407d262417fa2c74e80b0a3d21dbb733ec302ef24ffba1b1018d3277459a833e74c18be31020d5b3fb02598a9d0587d8344ff25896ad0'
  '18677148c9d1cad564165dd7d14cac0240e7e4c8530c5e6bf6c93a731716d5da2c5d09af530270a98cc990472e77b9aa01e28412e4b3c01cec25a5051fa73825'
  '6b9c5b72787f79b978109fb076b61b021ca26c6d2dbddf3de3166d2b96df2d14d77253016a0f62d437a6f77d2c755ad83c702d0336fa6dc426efb8114c157a08'
  '0827c9d4f79dc663767c793c47b9cef81f4a2c2f835879b9fb42d3e3e5b4d54db722ec6057816682908c4efa502be954012f4983cc7b75699252f4e36c35df40'
  'f1e2e1f39436b6c8bb018a002f74a703e8da9982630b3ee3c645e263c83c0e384cde0ffbb1e2f9ec7e12a680667de18f0d246848bf62295f65424d45ef9eaa20'
  '041e55b133f4730a718d7fcfcf378691d22444197c1d728b9c5e1f96e878ef8d71deb6536f9027a043f373f4ba21e3c502b953a1f6c4535d7807c8f1cf39a046'
  'c4e3b34501e9877c77f22b4642afa2b3e52ca9fcd2757aad4fa73b5a7477671368ae1f7296f16e27d1ad82348702c53aecfb8f22bd1c7905ead92d6a136d361b'
  '024469ad95ca3c406f41747acc8841139c4da61a4042efe24f58c012096bc682ae17fe66cc2cb85ba8b1001c76be157a336a8d3cfa94fb6956adf91471ebe07f'
)
b2sums_x86_64=(
  'ac989e3079a74e1b74136684023d1ca0c81a7ca1a3616099f659803fc50aa3609b6b867bf1af4be9d1f18207236d9c8c6f43349c5c99f1b1766634d9b121285d'
  'e9b690ba1ae266f1adf585189d291b2787c5e7c15ccb88e736eaf60218946f89fa70d8e411668dec6a3f4d17d4f5e71eeca3604be98b4e0d5a518e6cf0aef398'
  '86855d4b5af79f6cb46cf7ccb8f2a6c05582ca4064062c1f317aa3559faccf1d201a9e6193805acd498ff1646928aad234c43d3d086749b0367ba3ccc3cd7b06'
  'aca5060b4f660fd4fd51676a891e9c4a568b35f2fd7bfe63d41c60f9adcc7f8bef7ce80ad4699f6b7c968185d64daf3bbcdc230411b03dc00814861e581d8049'
  '7901d8bd24320f24843d3d3cd7af8e8e2f6be0dd21a58bc6b96828265bac2b6c123088fd78fbe42a5b10150cf5ae9ae097b2b68fd38e92cee3b77912c6dce675'
  '067b2f5c7bdcdf4a9c5e17e7b29c641f4dc9f0eec01485308ea910e2e8b0b9a6ae5eaa3a0c1843efe2a4bd4c4d0778fd3eeac9dcefd63506d9dcc53b14747304'
  '0db91dde21e5b49963df94e16124f3202304014160a83e3add5fe2930417588d0224d56fcf1ad64115468bca1d72d28183d8a4a6a373fdeb935056c3bc1e2f89'
  '39a5a1f6bc2346bfcf7f2b7027cfacde65ff95d71ea06d9d5750afc818b24f351eacc9c871868b1ff36f935bc28f07051a9246628c1e958ec32d38489ca95cd6'
  '5a18caf482045a5d745683a1cbb4fab4758007fd0d14c61e7af5f841b2f5191d964172291f0f45590b3abcab5b0a22b1c93e3b807446e7d7dbdfdbe4e4650615'
  '1b6f56f1d676707de39d55a12ac39c6aceb9849c861b73521f11eff71f587aab2412776593515a774dbec5a191a2d0ef6816b72d58d152ac6273709e2717b3ed'
  '16138a527192b427d9ad4826e8b4b027b3abfca720643eec6c86ab8ff416750edc89de0bbd6d400cbefbf91e9687f44b939e91ac426ebf310ca7c79a37e8252a'
  '735db438f1e145764a93300580733a571ff8f423bd785be281e414232e79a6159060e3b81c41d4fdbba441e423b23ca6e65e9694c378fa5d00da7933b769b8bc'
)
b3sums_x86_64=(
  '855334d4c9a8555a41929ebe940fc25a6816677d88122f692b9543764dc755cc'
  '671bdcae9330e4a7586d1cd276cbefebe691f745a54ebb1f82b92a4c36767d82'
  'e8e76632cf547c08c4ca9e91843b323a4b7072bd3cf4e62cf1e06783e952d444'
  '5281c14d846904c80b3292986f5010c2ba56c6388de77f742a008a0d56cc328d'
  '21157b6e8b0f708b9a7b55f88b61334067c95986ef7d6b7553f2ca03d5f60c8b'
  '7e3971414b02b606b36101f85f3e8a677e990f841aeb3032165c154419894598'
  'e681420a45206713ff1db3e8bcd9f8a08d6c3e0a6589f7cdd9afb518c268eb68'
  '390c226cba48bf9439b17c7fd2fad8a884f95e839b8063226114b91cbb8fc3c7'
  '7ebf28e310508ebb4eada446cad8e97a187a8dcfd7323dbe47d627679c859296'
  '1a23ddcc20461f511d83bc965672c4a9b99a35984fa4deff864d4010ca572abb'
  'faf45a468acc8e936cd7dc26a68531aa36e1c994c95e2cdf16f0509224f81a3b'
  '5ef460908528af6a6a5f03c739ad3aeeb72a4a5e8feaae0d9437959f5326649c'
)
sha256sums_aarch64=(
  '707a3033f3a8521596339fa3e12c481dffaea8b04ab97d5857d84744f68c9642'
  '8020861554e5dc6061d67ba6f5ce070eca07c7809c5b13d89487b276f6d5b971'
  '021213ecd72f8283b77bdbe943bf5ea24871ab8cc64b043219e027a709e054d2'
  '6fc10610b601d8daea1b92a186e1a33c59ae5c3b35714a51d4d4742cfbef8403'
  '05e6f3229b768ab0aa2927e56b1d038155c02c35aa6750313711f4bf2dc4d825'
  '1852f4c9d1e33b0ef0bb044fa668b33da4daa5e2ec86199d615d3805f2528bac'
  '87881b7af86a1e6b5687c7530eb7bef20d13412103531a95e1ca131d00a2a8e8'
  'b3f0dc9b9a57c7d2ac79ea2a21a37aea370747e9fb2c5eeb7deaf6e16b729e2a'
  'bc97bd1c5fa2b5609d8ef7fd0001780ffd4138a5e797a251b21985a30c4b1ad0'
  '0e9c588f59b8ddeb262c8a4bc7f5956b95816c7e9382663642ecb41c4ea57f4d'
  'a4662759dc18d69a49c461a2fec12044edf11acb55cd00fc316cfd695c425116'
  'dbf63607d6d1e71a334e08b7de9c101d3b81befccd7c8df756eb751ea55cbfd6'
)
sha512sums_aarch64=(
  'd73444e4518860594af3c26ed95921fd540f7f5ea4b7af62c8bf08a1c6d034564e66c4ad9680b95604bac21c43b73f0d41ea3b5defaf0233b6d871e309f24f7a'
  '0714cc6924f28f079a0b16b0271887735a245155d29181c0ee2f7dbc67207f56f75a3bbaaf18533878bde8d3c9605849b25704d6a584c1ad92bac060fa22291f'
  'ebd675ac92f21d8debcc0e6ee4ae92c1793a88aeb5afeb071d89381b2f3e3cc57be1aa85e5b9fc45be2c121c1c452b0dda88a9d9204d5307f8a3ae95edc3e0e7'
  'a849e682a16c80692ac0fcfd622fd5c9c8661046a25a438a877a306de61698a397eeb11f39deb141e7e5f21444c80b0fe0ad7e9e34e496cf20c36243a28e8b7a'
  'ba4f0e1e5ef90b3f2c832b9e1a4ab2891798b3fd392288c40988ca74362359881c4f1e1e86e7322c17e6f70f784e32b895a0a4fc3bddbfa5df519e1d6aedd2f8'
  '942f5d09d81d2fb6916c612a164ec0f40d4c615315c799d2d43772d6927ebfb9c51ad5bed4c8c84703553be12b9423dd3f14839f203b422a2bf8a899ade10471'
  'e915af7295b519ba6490e42ab87453a2362b630b640ac4e8bb0732fbcf0a8114fbda906daef2bc93cb16f66abf97595663385a83585065350e2ac7d8616b09f0'
  '7f1fc0ded7293f35c4a52dcaeb36e2cc26440c8a41f6888b70e7d2234b2f2e5e007e9680dcc1953f8d6d7f206ee07c9950e6fd6857ef69668a29c6ee9d9c83fa'
  '9f182281ca281ad6a6954d816b610d516615d87f681c26806c959907b18d72082d814298dedd19e11a5b9eae8ddb2fdfc44270282f49c54e75280f170d468748'
  '41ad6f19b638803193e94b93dba7470f1ff58b5e0d2ec2c44d565f8f1b75fba718c771ef241a4811381ad4542055022640ac4fe3094ba6856895c045292fde87'
  '85f6b2aa935629d60a1704a810dd0b3e07362147bb3267949063558ac751eff812e5b1a29bf3918884158f8eb70aed8ed6bd9236e7584dcabc472b2187ab3181'
  '321d3a81a8f6aca9ace6ad12b226f50e17bdafcc406f8e52555b5387a94c0ee0991cef278ade4e2446655b5d960aaa0644ef27129ea56d2390e921037b25d45c'
)
b2sums_aarch64=(
  '4445d1a72214784a17f0fe6ea8c463dbfba460198a7fab6a5cb53850c84aa29fb60cca6296f01e31193ff40107cff75f8c1a54569ade02375171b66f974a8b46'
  '465a73db36b25549d7fb14fec1d61501e9781e0ede5144f023d82fa5805c170240a662e2d87ae3b40776804c62c0a85de6ea9ad9625294589a31fd05866c4a13'
  '96e9e1670264e38e71cead10bf9137c23d6cfece628962cad0d4faac073c95b53c8eb84f17ca47cf4819cd24290c00ded9aafe28c97f7ecf38d52f625c6f4dbe'
  '04c85043bfeaf8a90d217c1637b40264ef651e52a1b48bbe4789ae8bbc077bf5a3c363513ac055a303a44e6ea036586c66e3a9a7933338c18c4e4f90a3c94cda'
  '3a33a91149d445449c7f915286eb10d5f46f1543a785ac2833f68ba5322eebd506545f65e602969bd66b683678b30ab72cc1145088461585d68ae7cb3513a33c'
  '6faffc52503ac15af9e7e81542dfa422cd839651cc75ea5380ff24d0a2a50caaa09672220442121d4ce1dbbf1addbaf796c2de74cfbc56710ebd168cf94a6c48'
  '1cce44a351dcd6d7c228ae3e7fb82ca2b91cb62ecad2e04eddf0322c52b29ba48374ac23bf835a48d13c4f90d9ef1b8e7d8e68dfed67fe16d280b80488a2c153'
  '51c7b263e23ad12343808eff83050d8dc790ca115a8b8adbe70a0a6bb1a28a480fe10a2808e48a2c24151868743fc2b0d6860d35284877b0d22d7ff5430321f3'
  '7485757d7c5d096316519c3fcd111e5da22a07dc2f3a548540c6b9a4eddd8134a6876c308ead063c9d4f416d2ef051ffdb679b0ffe8622249909ae7682f3c13c'
  'e4cdeefd69e0636e7a3a5078d5c7b71c2536c555677b0a2eae2ca7ec162adf4e31be110acb5666a1bbff631ad0ed8084cb611fc77e476756ec4a9eed35a6250b'
  '28d22eaac98569a3d7baa488b419cb7b2f9a77d823a35172d522bfacca981bf5b58287476c5b9b71aa23e3e33c236f9c8e180c129791f1c933915875f1414c52'
  '858c807030172374b419258c7c66ccf49d4b349d38d26cd0983f7d82ab7202f64fc1dcb4d76b8657591691e47dd991b836b7accd2436d6cb350409f47fd997eb'
)
b3sums_aarch64=(
  '3032a88901cf50994a5fd5d70ab3014f90752df8120a6516289839f3b829962e'
  'b4962f2e17c4a43f239c488680ae78f2d4a4716ebbc869c15ea6503dede233e9'
  '0ef409394567cf62a88c4a09dad16db86fab1ac7edd0c9b03e6f852bec1124bf'
  'af06194c457ec797e69fa2cdf403cb84b97f4d3e99a1dcf58587f598a725b13c'
  '4266b4274bdd572862671431be722e88d6b63109d12095fa09a3f1fd022a2acb'
  'f15dbf5f990df9334cad4fdacada184216b36b1f0939b096073f1b5ad63fb102'
  'f3c5e4cfd555045f70d89d8cdfba01b338e739cb1052982a5a1de2c87f8e9747'
  'e48eac36d37ea8e3ba22c71164ffe0d6ebdedcdf0bba335ae0ece5788b6b4b6d'
  '15889ae62d8a3499a772136eca1494edc122c61668ed1dc17995ab25653c75be'
  '112102e27c40041884ccb4d5c6c910452ce6c8d71dcc0becf1abddb2fe084b6e'
  '2e6aae10f3eff308411fd305bf00d1ce246951454fb96bf66b11cf770f90df0c'
  '79f720e7a926867700621afe7c166e6866c42d9618de5927dfbf47d17b4badc3'
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

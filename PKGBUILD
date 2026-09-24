pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.3.1
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
  '8841f3debc83bf49d8ffb75925725052bce68fd2bb9a6da9102c0fd57f244cd4'
  'd7a5d5e2bd02eda424ec4707b15a7bf6aed4bc9ae775b476b9e6c89d69abb2c6'
  '38b583798d184c57ffc17f1adda6d3c27328519d62556f76584b861015177d70'
  '5e354d28805be4574043546662440278f387391af9ab3fefa166b5d1715ffb6c'
  '06d5faba2e8c7121b869f6c165b23c3bc433f3c48d33dd425cc015e579816d6d'
  'f1a98df58b00dc28bba128d6df3b7f39ecd44cde8d48c34ffc6dc0433ac3c8b8'
  '1d78deb9790aa549f1971f1dd0f2bdc3226f5ea6e8f677b860125d19650c524b'
  '4a14f6ed3130c392760335333a192429f3ae33934ceaa8258db4b5315d958a5f'
  '812a6afa8c31c798dfc6f4fc1dbb02b1e88c366bf19dc4c6dd485dd96454a546'
)
sha512sums_x86_64=(
  '1d35fb9b757b090bad1dd834f42ba82703b99c0b24256155626e01abe1b7e377f2164332ac4fd1498c0831369a4af0c29c1a9943703f3a3429386b821c93de0e'
  'c7dc22dc53dd2b33d7956a2db17df6e05f6d1a09598168defad2191b1f63bc82f4e3401dddd1e47a2e251bf94681e45c826af3485e555aa8998719f1b87a6bb8'
  '223d63dcb48ce16fb8f75d78c7f29cf77d2596faa02f1ecb9ce1b685906c39d8c30ab6276eb691471bae9c4e71c836472992b05c5a9c3ac009ef91bc125a746b'
  '38c997c8a9efaaaad56ab33c4097c551c4f654170fb0a04a1341118027eb26091965efd39c2f028add6979c5b0fa8fd65307512d1db60bbbd066064cee7a483b'
  '6bafd6f1b2656cb49ec1d94162c58b54f947e3be7bc72f8c73ee9fe8d2afb57e7294f502517550671d48d946472c905f0eeb49939b374b0c3d1a5602858b8d85'
  '9fdaa08c7d458ae863aa053a743a203314774980a2bc3ee7df6eea50c6067ae68da9c8a2ad5656ee0ed642383884de40b7607a48d1cc58f137182fff3676f375'
  'fa7dc5303b292cdcff8292bb7b03b042b2eeace4b52773cf770e7d020ef63450a0faafda807711978e77a1ebc840f35a2bb14aebb7b30189fa545b71e82c6bc7'
  '5c9d6e5a0b295036dc5af24d72530c8d2078b0bbef17807f04f169a6cb3bcb528832d583386bc50247d34a5d15023611ddda51557edbcc17ce2e95c172d123b7'
  'cb4e2abe44ce065ce0184a4ef5a915d97b79f03d65daaad5806702d953e6953174feeca0cab91a761db5df0eda8b1ed180e1fef41204021a9147ffe5cac730f1'
)
b2sums_x86_64=(
  '533cb3ba995e6c664c0e512e1bd3d5d5229ba713ec3ec6d8203e0eceeaaaa345ef2eb16a62e16622cf3ac8ef2338ee118ddae46393f1c154a2368a6fd3e8123c'
  '7258cb22a7f7ca8570e644f79095acb566e0e4b4a179e83971e1882fb0cd0644d2d9245396c13a89b4d87ca0d6ab38c8253b3005f1aba075817d22ca8ea7dd97'
  '840a9e2bf054a06f56bb061d30232a701c46f790cf243b6d226586380c8996d20777005ac36faa4b873db5e019801f5bc75188c4111989cfa5c273a290673d86'
  '8c6991c682c8dfb2cf67f3c0bc99c02e2eaaa6d72a7cbd0d90fa7cfd8a60bcf0638ca4bb1c36fec8606d11f7310dc071fdad3b1aeaff78442ca28c24c6838755'
  'dc102c86b2e8284697639c0f7b5e363d1204b57f2c438086e3a0ad2e83d557e75a35497ddb597e8d8e924bd0887f9a34ee53917710ffc4b52b9eb5a1125b60dc'
  'ef01160dd9f35fe8fa5eb689cdf9b7c916b88cb132ac2e506779195f1a12e79b699fe8de0528f5e01304ef6a4586f0d971514414d9856e9d683eb4885e1d277c'
  'd8b210a31c7ee2fbea7ea057f77e569e529ea236eb63979ce0ae4630b20164403d372ce84f6256904f3dfbee4e708d9616c9d350231d1983678918dfb2df707a'
  '976630582b748105e721bc87fe1087864babc2007cad8a9e6552d867a0f25dcba574f7fa9e3c009b214d98da284672f4666fe7fe5850679f9171013bc411d136'
  '62d77c6d5a0ffdc4d9754e57410e54776613f4472f0ba4be63ea2de0e2c47e821c8a7693be65a3ba707ff3342a9d33a0a989b07364497ac08c4aed2c3b58ccab'
)
b3sums_x86_64=(
  'e857b8d3866d12af714a27eb20c51bd2ab6e62056aec64d13027dfe67062b587'
  '3714ee0fbef8a6e8de71d93bf19535dd06d46b3497169a1d673ed5b12bf398fd'
  '9dfa4751fd4438295be1a5dc356ac6c31e4810a2fa0969d0145d1d5d520f743f'
  '00fd9bb4beff0c1a1d0f86df91ed8fb012f47df06f5b3f3c86323160bc477d6d'
  '5a651b48bc964fd79a856cf4336972c3da0c4fcc62d61612cb330fac2f24132e'
  '975bdf8b12ba03b9aea1e75e0958c484829557ce0e3af4d11cb350eae583c028'
  '7d501f165c48cbab643c06dd4e4c8d2878da93050dfe64b419293e56384b01cc'
  'cf4ed110414cffa286674287a380d9e3b871ba8e1c2501febbe060700597c5f3'
  '10f4ff55a37df4cfd0f843e3beb12092bb3a994540d61559c55937ae7664d12e'
)
sha256sums_aarch64=(
  '93bcd609049137c1e41469812a743550809defaf5639a00428ac0c58097ff0c1'
  '41a19104e184a66eceb92006fae235df8705939234a58a90e0ec8ae3db4639c9'
  'e9b5910e8df44bd33069a6ec96279d330f75821d429ec276ab8b5939e2550b70'
  'ece31fabd7f677015f76b69318fb8c7ae494fd82fd53d55434acf06491a2742f'
  '2cc025bf672a297e87848a8ff73c9ca9cab8f8f1bc222f3fff74b0b20ac4abff'
  '9cbb8d6850bdb045aa7dba20d4928f387a691dff553abdaaabc70b803e146240'
  'b57d76da27913ea9da254c214ba6e816ce437bcae9e088684bfd267014b7addb'
  '58f496ac2f024cade5e26be4a2a591c11a18bf26af1262fe3da5a1070c8f4248'
  'f364dd1cf31185b628206095f37f1ddea0b47c92f2f2adf9c38e2288564bf687'
)
sha512sums_aarch64=(
  'b13eee79ec126c79b3b2f2ae9a55543180bc2b46d749fe0f49bc35eebf1151d4ccb4ec811af0b0dcc3a07bc9e7dd95f424e51325980b78d94612ef8b62a51465'
  'be8ea7916402ad83354646ff883e38c4fbd926fc300a0b9164d4cb72847a108902bfdd7b57f357f4e60914d88f1d243e4a79902d0e68b4a79b7629b695511263'
  '7e2b18bfabefc690c07e8c0daaa27e2a23325058f8d20bac206dca43cea24eeb9a1cd6ba4d73901e42ba60abdae639aa9e80f6ebd6eb749f883ed2b68b9f3775'
  '041615d2f7957c4814de331edb67b8ddb51873e031d7678eea0a5e7a32e623340e3c144c4b266eb05c931ad5231b9ade958c19c8815a5d96c64b5cd4f75a9efa'
  'bcd3f03e11a715dd0f38842ea92e26a066e773a657f9c6cca3c8bdc1c18cf745cda76d4c8cde8ebd5ccc1f255dfb1da4ceeb747466bbd9c60c5cfaf29dd1aa61'
  'e36eb7d91466f9eebd7d77f7cff4bf7aa221c314dd2aafb70b2c42ee068c3f72ae78dc008803d6572d0b5d2b66d7df42cf1b3dd177103de080f87fbec7f7a6c0'
  '06446841d36f82e11bafd58a9ef14646817506719b67700138c0779e3362f76925c96a8efa8af0c9d405aee6a8415c17afa16c2c9a2db25cc0d5dbbfc765b9f6'
  '8a58a3c5f8ff532db0814746e0c720a22b407598be7d6428c162f6420c4dc9b12275f8abd843a5eb548660074b3e45007ba2b27e0f431be7fc4ca416a5e1c3e4'
  '83d8dbf433457ccb969d70e6c730ca706f0425f2d2b2a5fe46f6ad34b75cf9153ff1001b3620bd8f105c0ae894a53177f8b2ca6403b11fac20ce9525961484b6'
)
b2sums_aarch64=(
  '0fecf6dc8e000bb601bfb76a561b02586259149726d0d12bb898bcdc54e72bb821a3587d1b52072cfc6e0a8d0c578f8cacbc3db2bb27611d50877b1a430d7e12'
  '469f71ba61464cded4d6e7038697bb38ff1daaac8d492c284d239df7e147abe90878c03fbbd18cd3e045738936d80f71711fe263fb0b8b49ac3a123de1cd5c02'
  '2151256ac5f883f52da183fd8bb4af613d0a37b781cb52dc159a0a13c6d78997ecf91f4990cf5197ec60ac7b9194b44b0796334d183f169694fcecb61e26043e'
  'b2dbec9323203bd67b96ce8d1e835f4997175e7c11f52ebd9e1bf004f8ee8a0c966145db29a5acbd90a0e98d340540f03f54cb9daad76a899e8f4c042cdfe9aa'
  'eba1705f5a91abe336151d767462cde9e541b0f39d60cd16728ed02101b8eb2cc52a4392a0d4b0605bd87a58857c87366b2f2f91f5eaba118e40323f346b977e'
  '5c743f1946d900368143ad8d6d6f9feb0dd8587367dd10e21b7e0a0d75ffdd34a713ea04d388b2a97e12fbcd21a6ff89b4bd4c7294630d63992c772200f7c4f2'
  'a1407fe3b6a9269435bc193480370dcd36900c37199b2024db20abf63620b05e47bdeb9b156ee3052d4b7fc7ef0ec7e841d7e810f66b951dd5db1f192331289c'
  '0ba11387c7e6c6d787439f61a09833b9de3d9010257233f7df6b18ce1e00db14687886eb13f654ba79b47be0fc3020e3c668016fe20a0c5c2953ec324b9d4ea7'
  'd2f3bcbaa177629f8b7b75a70d7cb28e81d32df0179f0caa5caef309b4b7aa335e40b8fce98a39cd600cd73bd5df30b206519d3b4b9adf7c0cd8ea8759a45f6c'
)
b3sums_aarch64=(
  'b9141dedcafd763b0c54ca975ebea07348aba93670a725cbce1c8a9fb5b26621'
  '8ecf7f625c220376b9c721aa3e42c0d3168ae4bac482b1987635369339bfc04d'
  'c2b1c91cbb867dda51222bcec8ad528f1b59b3f1dcd761962b53bf78616a663e'
  '90957f888196a5bab041a4bc461b7a662a1483b68495cbfb6dcc861f84285423'
  '7e77a1b8e3b16d9c0045ab0e0aea070765bd21d87d6a5ecc916506aaa64bdbb5'
  '004098b76ed7e603ea49ebc665ea54f40fd7ce4fd4bf83d813e772f454beedae'
  'd2ff4cd30b4b3129919406638744cbbef466f402a040cb42d5a88b6bff08f255'
  'c2e9f81e50c2e9e1c870b26ff4a7007845834b5323aee150dc0f89c110cf30da'
  '82f55faa784bc6ba707042074c9013c610b5db99e2072acff7912ad3ef0799b9'
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

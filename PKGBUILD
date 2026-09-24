pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.0.0
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
  'ffb3b9b463a36c3a1df08d9d1e6d99cf038dd77d0dd43d97fe707a26fe099ebb'
  '812f14b966c21df7bd3b4d1df1bb8f1b020f02613850cb9299e5bfefabe3cf93'
  '2e45975b78fba738290a61aedac4f818cb38ce09237555df9677331919da7330'
  '2aa8350c4a7f5c6bb791893c1ef3083093440a74ba6d24b3cd587cff61e2d5a4'
  'ba7a14bc7d2c0830f6fc314ea6fe98ce77af91b3e4b50728c1b9e7b11844a0e8'
  '0f2ae58225a454d0b9e56af62af7f406958db2494697deb5a5a68b081e323790'
  '620eb2c8767dc707050d3908c8197667dd743237bcf0a1e49dd442505dfe9bbd'
)
sha512sums_x86_64=(
  '5f43626e3333543d7cf4097f640fb52b93ca7e918495c9ef264a232eca5586fe5ae8ff5524cf6b9cb32223a6c2e332ec57759e94c516ea47e85126dae22ef16d'
  '24e18364681ee2db9273dc0270245e825bdb5ca484c9ebb7a6fa8052aac137dfcaef101e28f7adc87e2033c6bc5eb7a13f2edc4b356f4ca0d384b3dc8a5dfe3c'
  'e8932c6cd86ceb70713a02adf11f19edc16b9bb88ffb3a1e18c4a96b49fb5dcd7368499e00e450ef63b75dcbd7d2f26ec345c2fe811f7db775e87fb81d16c65e'
  'b13d2652ddd25be3dec7e085af105361f272995dfb0054c204ba509844a513a8a160fa65551404213f085095f61e4e363bf565274e0a1880fa48d4c31d8d7cbf'
  '20768c6dff6a9cda349ce7816ca2ddb5843d432741735af4d60a3fc16e717be8c521def3e54763b638c71ab7aadce10562aa00723f50697a6dd8a7c742076ab7'
  '555c8aa7dab3c3bed5d53603c20bd8332a4425575733caa6d8779e4b8c8a2d11c7c5c0e05a4d75c8aa7b85d1d54799500d3fdf37330a783a7c4678e690270464'
  '516c2a5555858a0c64455aeda883157b0bfe73582855bed09c9491e837a2204ff88dd508642c6a6dd3d71ea3f47e0873450faa0b9aeecad714eb167b0c2f184b'
)
b2sums_x86_64=(
  'ef71832422d686db5333970fb479eaadffeefcfd93e7e6bd68ffb84b52cb7194a92cc650dc9beae669ab4ddcd5c4edb46620bffc7d08fe01cd3460c6c9c8748a'
  'd54db91cf7a7dcaa5b5718bfe42e627d494c8af2b783db4d7d65fd84eaa62f0da8609f28eee7107d1b1a439983aaa4162734536cce891e08ff045a882c8c3860'
  '83cf182a48c7d1ac1746e758678a4ef86178a1352aa6e343b00837bcca8d195a43697e5d669009c6e47659f04c213dbc75998cdc392417a7c7ba8cdc9c729455'
  '6546591765a79b9feb9d1994793a40fb412e308676fa2fa4a51e3d52b01867cfbcad35f0f0894924bae544025c62d4a22ae8cc68b7d8a49c72204b79d2daea8f'
  '8fe3d78c1c155c12732c81cec30c3fafcf77b445b9e5151f85cd1347d0236d57d99002d78f461101e443f7122961198c5b331f208600e5e4f279b259ea8fc20c'
  'c7b578390e3c6667c97b0e34a0c7bca852dbd08bb73ffb6dbb2a5245149c0146c283430e1071b79ad537f9ed68c937b4b6050587e48aff3719ea73dd7c06d979'
  'e7a16ca110c8b98ea1d8af21f7611bcd27232e7214ca99e630a74c2c8d0a7868788f8b2d5097d64935bcb780878f08f1729d2a683e3b39d15288aa7fe31526e8'
)
b3sums_x86_64=(
  '2b849388db6567fa79b97db0248def83cab598c21d5ca86715579914631a787c'
  '49138a109d4a1bf51808e7d23cbb9b183afbdf7bcbf9aafe0fc9e0a2b204da83'
  '48783f832993789738fd76e08a28877791694f97b4e8b33765a70a993c814cee'
  '6831794d6e289946ed49d62bd72938703841193102b59c98d5527d1ada495d26'
  'b41632be9c636cfaf885d01a882fd556344d75d0896a010ed725a42ebba19575'
  'c79be25bfe0c33f7e0b18eab870fd8c6859b7ae8b85128415e3e4cdfe516e673'
  '9d6328d87f889e359d5f0c8f9654cb00afbfe831d4e11ffb97ec46327e9404d8'
)
sha256sums_aarch64=(
  '2a79a1e1572a33e20c8834a99f86ef18e68c94e703018c6af43e270a5daf41e4'
  '4141ec6552ceb23c947299ee01935b23b0f0d3350ada6f8e77c0c53de56d6971'
  '2987f8d76fda6089a8ef7c033151afc2bcfc6032f86f30d3c9535a8a23ccf413'
  '359d583c59fed2ce496a3e7c437f32b653e33a0761957fe31c88347a29a4e81a'
  '97ebb8fb65261e842d10614257f84bd049b485016b94ee3e52297122e06470f4'
  '90b380d53637dc5162923f5a4dab5d85bed9a1105fa15b8cae54f1e3151cf54e'
  '384936f9e2c871cc479ac615b7ca5d56c758c97c8eeac4a199e0e16816ed409b'
)
sha512sums_aarch64=(
  '83a3c4f796fac3aa717a67f0a8c35712bf6db5163f89f5130a0a44c1d30b200d8e65bc9216b6ded9a050b9df911a55e84002718dfc2f2130bc1410546b5bf0e2'
  '1cc833bdbf6fb70ceab3ee82ed6e8760e5ac35cfb15438ea9a0e99d1f3b935430679645bc5f511120f7c74620f8fb877784dfb1771648a9beaa6d6f60b86a49a'
  '6054e3e0bc61cffa98b31e56d084ccfc027583a005569ff3c8e6bc5402536dc6abf1464a5350debe3f417320c59b68f972c2a13bb54318ba2b1af0189a496ab5'
  '795e90aed0e703bd6b6edc00d657f5e5279f1a3f76c618b4b91d69b4061f161e0276ccdf8261ac3f6d21de95612a7f5df6191a0c34fa24fbf605c45d4dd5d460'
  '7583f107c9737463d58576dce205653ac6cb46ece4845a14814401c003cf70f360051c42100aaf71751f698c1fde95cf7b1d6dca042e5dc41ae3a398b8f79792'
  '66bfd989aa833a16508840cabce895344c2786414c9fff8f591dc286ac32182ed18c896f418d4a9f949a959b414a1ffe899bcddf93a6ab3949b5e895ed4cabe8'
  '91a33f9a7abcfef7d8d2a52117cd375e5217a396025024bc83206795bca8fea4bc40e93c56506a12fcadf47937cee42d6a753ade92801eaad0b96311a7768afc'
)
b2sums_aarch64=(
  '8579d7058ffee0636689828b17fab1d169b965961b2ce52cd6524a957cd86d128f684e825ebef36b0cce7e1ec84b952e114912f43671282ca9933816584c4b7f'
  '93d83879a6216e77b7b61f0a2e683c68e2eceed1c52a7ae0d32854e475642e920fcd4009ce8a597b66464a9fb56332930d006cb4cdbd809724def347533b908a'
  '75d25303a867f6909d2b22dcbbab40034c789c717e1233d85f5e076e237377eb90236e84f5fd9e39f8a2ebcc777e0bb33f25bee638d736985135ad730497f86c'
  'd219cbfa77e9d065cc90e6c735cf7fde98a95fc3e81285b42f426a862846e625b027488606db0f57fd29b107ee8244fdb3758c50fef9edeabed74aacf837f0fc'
  '5a6e5fbf423ae12878392aa54fe090552f09981cd5c22a5dbd206b2791fe2b2b9f6f6930bd5c9c165392cdbbc374c03a84c38fb7e61139fcbe12ebe3ace60bf0'
  '1d260f7943cbf6834d01d0cabd465bfcb09d04ef0bc6da6d8d06b19350b73cf89e5db95b7dc4d4276471b5d70c23e8f82ec9dc0ecbe594efc564fdce1da072f1'
  '9f9023357cd2f60ae17ae3d0025c494d8babfbf2877a0325fc3984809e6a358e4a07e980902cde46c48af784afcee338da3fd708cb0a5d7bf87e7ec770b15ff9'
)
b3sums_aarch64=(
  '61931105886e63cff769a6016ad13ee5244076e150cb0710e0e208bcca9b93bd'
  '44f2a64698e197d706cbfa3f2b1249ad3284c5f7c92a0149809c2c7ab9501411'
  '9a5c0e0c1a87ac52b47bd8fffd890da3733019eb11401f1938ea739259e677fc'
  'ac1e5151e96166e336b42e0df3e95525e53c9540008759562ff4447bf9109285'
  '07567af6ca89119c98b0ae1936a339e6ad9a5d7caf3f2d6bd8b95739e7189e0a'
  '2901109de3f070ccaf270d4a6d1f1d02721aba7dd92a209550a85ee79341e8b0'
  '49b3c5640679bdda3b93dc9cf663801ce8ca508063d0faa3449a7ffd12866cdb'
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

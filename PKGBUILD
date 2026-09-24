pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.2.3
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
  '48043cd10e73e1b976c4c49c3cb80e3bf3f028e549d5d086a9333332defa18ef'
  'be40749d40fc0888f94ea0a96af3d78ea38b0c301952f2d7ad0e98377f41299c'
  '1fb3ab4c1738ca80c2608badd4c48cea74dfb95caf47286a1a01bd31b7dc9494'
  'c52a5fb7fbd29793686dcfb0b1a1aa3c8d0e489a75eb140e2fd5807a9dd49959'
  'c9ad5c5e6eadd899414080af53798d625bf70f19839657127eff98aa8eb1686f'
  '655e3b78e4a5861000c924bc997058bae5d2657d9ae7327c79a4ff68ea0c34dc'
  'e11cab5ed0ee9140332b15ebae84d80d559105b3f891d080fd7b506ef5b40d77'
)
sha512sums_x86_64=(
  '20fe2b7dbc9f57f7170d4c1102e8cd066f16ac2b04fc4adafaefedcdf944705ae92c0a108b25f54a9aedaed45cf15ac3f403592f78133a5d1fe9eddb7f590fa6'
  '5209ae017564cd8e99998f5c00db728384bd61a5d429ddd4b08a91d33cc46565877a094d613240788246c705cf1c195d902bb9efae90b7f3d3908f0f483e5181'
  '6868fa439dd94298813d2ad550411f3143b7eb6904c5576df0de60bf92554ab5b730a139ab99f3b23f1f15ab44e5f2b3a027aec5c8263f5f0a0325bb93706ce7'
  '17b27818a1323526d1bec872bca4a6ca6c3e0eb101d7ffc7f0b6f30171d25725e2ccc4c293acddac57f0492ceba46020c8364994e04756c3ca656ab8cccd57c7'
  'f81c42d6b89f87e73eee1662a5500146f1e353cafe4bfe326546f8b487c9c16658f25862f62fa1e5f84e1175d91f4e75fdc09460fe51d40a9fb778f5e95f3e1c'
  '6df3b64fcf61d9b77c2bfc7ca365ea62ad78cec19bc91b7e0db64cf5e79f8b6b6ce99402eaffc850936ec071dbaa73f58aa24ae2b201fcf0cf96162503f3ff14'
  'c82ad4f8c9f09fe7e1bf6da128ecf783af480d4e4f79868fafe95e4ac9da0772b9c23529b15bafab4bab47832716693ebe3ee9d820d207b134828e85c97fe98d'
)
b2sums_x86_64=(
  '992006814e3750bd22d37820e0abfe0c6571bebfba7ab474181b22f924ab4718f6d27992a08d280d1ab284551735122a9ab6010252911c818ffa497e097e9090'
  '9b30d45a56173fcaca5783961c3c5fd15be86bd15d6ad93fe8a81aabc03d37d695d9470a49ff6611a16a04b0a5cd438e2b8ca13573712ac12f933e0c890e75c4'
  '49783ae402ac6115a27ed88645c1514988653f01a1df953313c7922bd672e9ea3fee60cf99923d1fefb1afb656886c252227e3f9e5bcc34b16997f86e0b72c88'
  '85d63aa120e6c516cdc073850e50ef379ce0174e6bb17168d81acd0739efbfc50f23b60a69b996a7a669901185be10ca39e958fdcc21e50e6c33a0a49e567cf5'
  '0f54471f8830ba9ab77c2a470e53b97d42ae1d524f77a110079115857b8a6cf1d52069b8bc569a40e0574f1b8c5935588342d2c73c6629cb6924d86f099b8482'
  '464ce3ba643ae3a8dee6804911f92a3325cac2c72311fbe8bd3def6c1d686b04d81cfa7f0bf6d423f0744dee72e71d3fd9a0214e8bc16d5f9ba36a9738f092d1'
  'f0d03255e39c0e79e0869f8300e7cd8ba13db621e7293c3eed930c94dd7018d4fdb826716b589f81651c7318d4ef1722284748b30620b3c373c95a148d289751'
)
b3sums_x86_64=(
  '485fe26806c14b2aa274bf3ec8dfe485d2c8cdb2c3e174528f1446e21e4d10ee'
  'b894f2c1b4faeaf3a648229e767efe195b0d54b6692281068b0a2df8b0473e4a'
  'd2178c3e3ae84e79e3eb77baa9cd85ee35a04bdb1b404c7341ad3b07f8c7b77d'
  '558406910bcb1d73c5103f8dd0dc1195deea3b791bfc78daabc3ca710b6c424b'
  '6942b985d5098943efd0fe3b75c3b7ac72676c17f294af898dbad9eb7eba0c31'
  '44572ae1edb645f1039f10bb82a99ec611b67a3ac8a428f21a38169051813c4a'
  '0cb79dfd4fc667a2fbf67c1986b3a23604f657e0dff515a530c0a1af2004c070'
)
sha256sums_aarch64=(
  '2b9bf5521871f0c87120e191fee2219b70082e4c16ed7030826a6dd849f8ed79'
  'f74e843c43a6e86411c3c98cb354066f622499b4e293af9c60ebf8369547ad98'
  'bc76aabdab72b1c8408dd80fd401faf2b370de98c7cc7e72539b253dc5f9e83e'
  'f6e077e97a0bf5728067242e943b98713f064c11b2683802d6bb97d247b73391'
  '828b5b6a308ba0d5f3fa53ee104ef29e8a07e1e46996956f4c30c290d219c7fe'
  '2e130f20a75ef34a651908627b75b8c8699110b8423d50b93af4e0c157385dce'
  'b6458b93b8b0b506a0e8e103352e36bbe2e6c16cac62d89b62192d7b7edd8345'
)
sha512sums_aarch64=(
  'bc397d1ec1fe41aac9c686af90c469b3d55c77bdc4f5199c5620f7b9d9fa6ff882475cda30227e33ceb55199d85fe52fa3e25ab447bc57124cade54a335e0201'
  '53308e3d23bff43c84d3018428fcbec7761396e30f9ecb686de3d742a17cffdf0b8c67306a56d61a43dc736b690b6164b70daf25eca5e6ca8c7663c0ff8468ca'
  '7546c827e8d21c0489ea354a6de8ce1bdb7dadc9dbb642790e8faabd99213d5278837ef6ff3a3b93de636aa1de1dfbe8bfb4ac7669f5717fe1584a11bff401a5'
  '3445d3f149df106edebda294bbeaad7d97e12969cb3e00ac8f42e936051884ba22e438123eff76e26bee3afafd11362148f583fa776f69e88dff37ee89605096'
  '258ec853e3c7c30a6f124630a2f6d5291664ee3ad07be337653f4b78f9c8077eae0df6fa2eab9df8572eacba11ac63d0782f1c125a1fe7ab5fcdc5b7dec286f0'
  'fbf06dbf466cba4ca6d3ef4eefe1fd1e53f58b3ec89ccbdb7663d7ddcca618141397ff0a93e923b19548355421997bd42422abad40e5ad0a6b12e731103cb941'
  'deebdc97628174c473440af8a64f17636949a4563d7369c637942d11562df745ccc9215cf4c56affc6789bb6a73b9f56bc234c05acd8baa96365d0c4686aa4a0'
)
b2sums_aarch64=(
  '46a2a85b6da18c206ae1e1eb3ffa0051b7a4cf823e8db17cb4675140e17154ceb2ba9bb49f5a4f2e3f23ce5b4a421696a125810ea2173f63cc06a4e7c35c518f'
  'cd97a1ff5eb708919fa038e2a30a4bb904803ed1e1e68f4d4f564df7a8a2b5500fc0bcab390f43ef43ea67b174852bd2138bebca6aabc5accd97d98e53f2de8c'
  'fffaa9d113d793401894f830fad2ea047c7514431dc42c4f713a4a4a1401058de2144e20a037e7da372bac0999168fa549ad7cbf221af3fe2ad30647d1960d86'
  '351f55e87ee9a0f1fbe7816e1a4dc48a58f6d860bccc8f85e5132ebe613b18c69f3c7ad6e0dd7cd73c6f7b035c8f3df2b967a92f0959fe60e34ad98d0049d401'
  'df5b3029b60e8f8e9ce613731bd95a43ec1e55cd88fdae5f20dcad4286c8bc91a80d9916ce1c26d9f03d114dfe4328d761c4161ed2957fd267ea35beb1a95ca7'
  '82e0f385ae330e50ad0d65144b10aeb06eb5441a33ad9fdbc6c0ca3aa00061e86fb394b4a3a25084939c10c40c4eb05df390496a2aeadb2735d360bc5fcf82dc'
  'ecb4c3d5fa53f9fc33458cdc58e81bca3ec3e109d6110d21e6ea1088bb51d0786014d5f537940d113b30f0878f163603f4cf55c4cd9d1fdee7bdfdd2b3834eb4'
)
b3sums_aarch64=(
  '92c42461eb601d2e81989744748c10994f84d8b378ea86bab83377a0bb0682e5'
  'e4f78e86c095a79d868076a8e36870da80c56bb681c1ebe0ee8dc9c0362202a2'
  '616a60cff2807c85f74b6eb2344336350604d4a06f39c8dc9a7d42996da286ea'
  '2f02d84973e55d226dce38df756d2f02ba5fa6ddd9a0229601e16034868b249d'
  '8df0171c06fc9f2e7bde48bd18210541a3e7c695958bbf2a572a6cd0cb9feeb2'
  'f5685aff2fd33656e771e70a1b4847ec4cb38fe03c40f60b8b1d322d6a49df22'
  '0932a0c350f1d91cf632036e15ac7ac55436de8fd66cae5049ba89ae6ee38acc'
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

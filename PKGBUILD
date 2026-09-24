pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.1.1
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
  '5748a70fecb588e6c671fc19b2e4ef6c4836dc8660c78045a98ccb4207adb1eb'
  'bc651ce6353322c0a4e73c35f406f2142e82decf21452cf03aff208d7afa6158'
  'd3c0aae94c56c308f2ba5bb30daa7721b3e369af7f9d51ecab9be917ba8a903b'
  'ce5e5bde717ab90ffe98476a602ab6453133cb8caa288388492d2026ae09f7cb'
  '768181ffba71fc6add66bab431896defef9d868b12261dd78bebd4defeb89496'
  'fd36f9b12df77a5d69a9116df378647965daebb9815b0c12d689d627ae2d7031'
  '04f49276e474498ec6929f33ef201333b6047e512f6a6393b7c55702fbcb08ad'
)
sha512sums_x86_64=(
  '91360de5e0f7b49f96790856b6be5eadaf2ea846df8c0ed219aae0c73d11662e5596ce79823b658a9193f2b59e2a7e9ecde7dd1957094152b30561c9415b5ee3'
  '8a45bf98ad35cce02aa2be82596c67e92fe1b2ce22aaddd22c57ddf390566a352dbde3d7c1e88f36d6e4c4973c9ad5a90ecc990c662f7c32da23133edc032590'
  '44424e1344f91fd3192b7669ffb3c8b2ec96f744690b0e81e789251e961972847f06a59aa25be2e2b79309bf3997176a1aa169d1ada2c09f5389993c3f1b2fb6'
  'c1f7fed642496aab627f9c8ac9e1a0bd1c0f5cf29b6e8729dd59cab75915a03196a7553ac290f6552a19c3f865a2cb3782bc96b805cd9c57035550b2363f1ca3'
  '2af56cc3be74b6ecedcd6ccc4b7f6ae798a0e4c0ff98fb41001588a2416827a82c1ffd1f8e3ee7fefe16de89acb53804165aba8649dc5b22f23f81bfb56312f9'
  '85fb3b5b8cc722edea4056872919e20dbf33202cba27833b55824062529e6ac18ca937c412fc6c8b633c50c71c2ec53140bc61699ff6a5c019667e71652f6f76'
  '6a74e28db744eb442cf3e77c63848f0fa93e6a4553cab5f05a53069560e13a2a770649fd8b7828178ad0fec2e2dd78b49ca2f2a5a63900939622277092fdfe5b'
)
b2sums_x86_64=(
  '3fd181d5200ccb22a246159ea950d24f5c2ccde24a62e388df0fb7936f3f06192d86c551f126654f19b5c1127ed4af0ce180ef2800405eb6a78020c48a1adb71'
  'e942694eb807d0df11e0f0083bbebf2f386c4a78572e5f47d4680ebcec060edff5d283e5e480c15b2dd021a93bb88cfb7c2bce5bd011e751e4ceec6cffa7d59e'
  '74147dc077447e7acceda85b4dbb3e82ff50b82225ebc07b701ef2541e420293335416de04001186bb3be24e5560498831968d530b1a54675dbc22e2fea8ace5'
  '08169087616b819aae28a612064df6a81f2596992fc1f8112a947e024384ba1b5e0157af1a60d4b02354f1a3329da0640f6041a27961975059f939d1d5c6fd82'
  '66708870113af88f1a74c091553f98fd382e6cc37ec28d0dd2cde6d1f88c420b9bcc44a96a29bda04158b80c1090507a36118035adbe4dbc6edaf3075cebb259'
  '095338dd4bc584ab7ddd6d174c61f361aa12708233f35a82b81f24c44221012f92a13713b4aa2e8a42ba9c5b5cf44b47778c710a022238505bd9c32aab8526f4'
  '01de1ed321d5c5c2fe0b2a76da99247c88d9736c97386bad0508d4cbd43a09db06a3a069352fd9df683f9aaeb78ab4e440f71e86c81da90024368725563f24b5'
)
b3sums_x86_64=(
  '98e26f477323bee7e685fb711d2b5e5566959d4d69d69aad042c4a6f1ce8a25b'
  '62b0cb20b0c89320aa52cf99c6d0e930b6d8ad827aaebf24376f379cd26d05c4'
  '406e04dd7590c665baae701695fbfdeadea542da03a0ce4157afe68262566b94'
  '54a4fcf868e8cede3448a89b9cdf79a9fbeb394ab7ffb5cc70d2efb1f295ec10'
  '3a55e5bf4880a6e4d508352ab3207f5a563e83ddafa5bbea9e17f59e120de3b5'
  '64b85274916ee7196747971964d0738620ecfada6f27b60ebb0856309bd652e6'
  'de90e16d01a6ab4c447fd683d9e994deb4043b546790443f164555a4d756756d'
)
sha256sums_aarch64=(
  '47e1fd96b23d3c78f7ff097108f97e8fa67a0976b3e3fe6a253dc6250d440ecc'
  '3c12b317011f424cbe8417d0f34eb7ff4d5b914c464a89957759f7a15c950af0'
  '21fae981beee700c9032b86b8220f05165650b09f781611b404a0d2afe7d8080'
  '031ea23364a8fc2787c1d31c1809211df42a0ac85a8c76cf80d4e37999880f8e'
  '66199d5f08760aa8ddff3eca6c694400844cf3e166b61778e7ff20ed6264819f'
  '97b3493256623e92dfd3d9eba08b54bca6f471ac63f05febd5e56c000aa9a769'
  'ccd2e1d6226583358121896cb27c8e5704c6b3b60314d8edbbdc99f8d599d105'
)
sha512sums_aarch64=(
  '8aff5963c403bdab8636af0edcb0c4e689491ae4accfac12e1f1fa99c0ec1113a9741a4c55cedef35d0088f82c29a974bf046bacf0b4fec15c0f128a673919ca'
  '2ff203632b3a46d92a562e0adbdf7fd2448a5a543738c85bc8df3bba0c424eb9640845e85279f72029b7f5c4b317a0ee2b3e491b1ce55590242d9ef3985e8663'
  'e769309d23d4caedf4117a764ed0d4236f5d604b48cdd963a8895e9d718658919ae115c567125bbdacb42d2328db7297feff72877ddbdd5356b5f29cfc88ed71'
  '3b7d60ff6f26171e2129534ededca4f4991f3c96e532d20090742f60372e0ceae3c6e8aa8039b6423764cd01196ad5eef2bdf6bc8b12c31b9932c9aa61685e7d'
  '4abbce5c7075737746efd787bbcb5fb1c23ea06eff355221f3cc84730d31d84bc5ad39011199795efa121c9e581f576f5bd487af38814ef56f29accf4356587f'
  '805887b0ccd9bae8b1aaf9eb03ca0ce6c92efda5574d8c9ca64154739208c39697fe09de209d8e3a73a4774645def824c1495f3f938f3da0b1f379935458a804'
  'df00f9a3fe426e56eeda6ebd9fd3a61fcd9f7de9967dc181fd20b0605a37d32e64eec8285109dc737661c2fe48e3e1422f9db7e503fa90f1af7ad46028ba0202'
)
b2sums_aarch64=(
  'a1224f9cdc2709f01d02d1efc160a8acd5b971234450a38e7250509e691b7661cfc31a1e6d6f10a8f7b7f6d4b83d132cf64d1211f4b509b3da0821b3f73241dd'
  '41f1b8a07762184b60ed0c74fa5f70e9d4f2b2701f034ab46da94b5edd6dbc2b52b8e6e880561e60b648a6706efd7b9d3cad1b157a804ec76a5312db774a8f8d'
  'e988148759119e525d10b33275623c6ba072f241aab79ec6b73ddc87e1c51b02d44cb49e289d7ab13bbb6768969694ca200ee2fbf1f85b91295106b4c5045c08'
  '190b86670b463808a34b59773de35eabff613917a47c633b10e38f134cc986b18f6b45f67100671f7250ac8333439f0ff54e12d53aacd8ed874aceab65ad749c'
  'b64528aba66c9afafcec6a3fae3775f7df693d63241927d8e6f6f748ddf084b61982ca322857365fe9b811b03382b4671a037522e24d6d5406d9cbc36a3ba145'
  '0bf7f2e58a3e4a3f9e6be40d2fb4b7d8a2450bb4a5535647aabef7c207bcd4361d1f24c8a1ce61e6bfd928aca0629f6ea074d16b349c5990a27904179139bc40'
  '99a3b7fb344e71c085fd9e9fda26986cca571b158ce9aab771150d6039c5362af24ac4ed7e81bfbf4f739349c801dde709e677783fca4897750a49a6863ac101'
)
b3sums_aarch64=(
  'b9260ce2ac70eac525ab480ed871a69d223d822cefb948e39677575b777a71e9'
  '0e7dfd228881e0b46e93c587773aa958a45363c144fae9d923eff5894f8441cc'
  '8405561cadfaa283fba7744a5d55255b79ee679cac15952f8ee8a569b35f0922'
  '82a7b3626d96b5765a2a304bae0c86ca7bb1b83d9aa9af54c4a6f2833f610daf'
  '24f94d298f627643c7980defdc07165221c6db6be3f185b6e7fa9a34c4cff568'
  'f879cdb9a2570f2c216f6355a3dee70cf0876ecd7b2866184b9770419a9df949'
  'a02516175731e3bf9fff8bcfff319e54b1e03164bbe74d8c73855b6ddee6f729'
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

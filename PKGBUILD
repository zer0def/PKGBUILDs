pkgbase=datacenter-gpu-manager
pkgname=(
  datacenter-gpu-manager-core
  datacenter-gpu-manager-cuda11
  datacenter-gpu-manager-cuda12
)
pkgver=4.2.2
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
  'f907195e03d2e62b352131a803ded50fb5cba47f39e6eb7dabab478ea6cd6a26'
  '77a233fef8233153c1bb594a7b846de36765539198e1f0ac8360106c7405e99d'
  '9d609e03b066687ccbf43fb45f54b1b7529e63251cfa416a70710a6922addca4'
  'dcdadbf3e5a8e5db00d392868d03b7ac444f4bd677b4ce05b503caa3fd0c5bad'
  '7a42edcb7418712be1f7e2100220896412a38cbff135e874256e66242791a282'
  '101b08d52f8134a1a9d6a0b65fc0ea744b15a82a5b98ea08ce59dd29ce5209ee'
  'da86de070103f18a5a507512107b0f9c42827e5fe37183f531abd33db1a2bde9'
)
sha512sums_x86_64=(
  'fc513593f54a1c762f4a0130128d04399dd3300eae6bdc5acf334659370c63b5302397bfa90e806455fe7335b034f4ae4ed5256c6fb76aad369e62b9e9885973'
  'b62180c743168abb86ec1fd886a12dd1c19edeb91bf891b896deb0a38b484f48f5c138f92e4141f954ebf91b6e37be9f14b084bc488495524b94d874e3fedc65'
  '7d6ad2b3d1caaf34c6807da688f7a2b4ca9be8998b7f18fbbecdc18069c5f81d59892d3fff7ee30c08fe81a788c6118a02ac5d7f7a79365d2f382a5eb0a68b82'
  'ee4f748ec2b66f78f4c65f4a3b7514795de4397f3fe5249919071ed516745d7f7424c0e7f1681523081c164293dbc7d20eb4d429638a424ceb0670b0885e8ce5'
  'f1fca2978f61b116a6eac9c2191180dcab7b13e5b9871a50d5422e04dbd532235df9838f524bb4003f02b9170a4bcd6bbcdf2c3b30056b603d95309bb55d149c'
  'd1613d8c07ab0cfd4ae7ba977d7bd4c50d4e7855538a7ef5546e7dfbf56fe306c1667d1a8e7dec300addc1b364f60211de6d271ef03f0e94d996d4f30f3a9cd8'
  'dd777615cb64ed12e02c49ed6fc32bd9baebfe8b5ac2f56ca39bce4e1f2e715dcb5069f52c87690eed16aeb696a54f8d5882a1f50db65dc0a8ff71521e0d38ee'
)
b2sums_x86_64=(
  'df248d4b2048624ee063d02ca2bdda5662dc5bca6a1c421847008b851fb08436bf8c9e47627d83744a206bd991f7bba77f64c2403df2d670add4c3d094d3a83b'
  'f02d83cd12019fba02036d417f34cf608a6cd4f71671f7c67091a8a3dc69e8a6086b3fb798e6b1583102f0215f64facf03283aa44bcb3bbcd42d14a212aaeb2e'
  '852db3eda3006853d040a1f166dd7a52a9759d61281e0aa34a988ab87dfe4745ab01079a29253351810fbdb175f0a510b3ac2a4477cb6f05d4da94ed18fc7bd4'
  '5291a9670728ca4b2a6b8ccb505e6266c9918102c3fb30a9f1c1764443de5689fd4f7bf15553b1454ebd9333ea7703917e25c788fc08f90e5c0758a470b57ac3'
  '8e7462f0e5ec3d9a85c5f01421ffe7a2474171f9a226ab0b5855150ad300c54f770e56bf8edb2cc90cd0394698c55badca719aa2a06d92720916d2d6a94566e3'
  'bde583e35453a01f7257da904f932231aeed1e11ed107c1dccc967457182d63f5a5c933aafc9742d4fd84e61339b6f67fcc7c2313e547a99278b439957765403'
  '46ddc03c4958ae30ce02d3fc91af968feb4087b886b401a95d238d1d0da3d152c562b9dcd2ffd25183c7b6ea6054ff9c6b8575251eda27d6e6e19e6cabcc9718'
)
b3sums_x86_64=(
  'dc36916373e526136d055bd4b6b5e1e426867383026d10a355056f33c0c28328'
  '2b580c50f8a06da5ff77d6b1df6a2016865af720c8a89b5d38a0f4662b05df49'
  'ef45d97c5284166a28e8da1a9a9dbbb188dbf691edc3cc740693ce06e2391f88'
  'c9f2736fe61acb0a04346806b1fe00a8ce6834b309e5bf13e2ff2d06fe81e868'
  '2735416866dd382cdf203fc4e59760772388c44be49b297a52b2a54071ecd00d'
  'e558be14b21fb7152eada58e4ec0a1b78cb07f74df994cd54dd3dc3739fcf629'
  '913052881610014f97e2b9b6711284971fbe50f514ed967dcd71ae48b05058d9'
)
sha256sums_aarch64=(
  '499850d00533319f62a6d179f1f4914390187376f0626dd5a7d8962f4b3465fe'
  '3d6eaafb07bd037e9168aef55c6c31fc46cc287bd4922bcba8fda0f8895c7efe'
  '3172257062e35b4a0b1a85957219d582d66064f37278045bec4fb7918aba300b'
  'f10b49a8c98f3a162717632255159c0b3b07629ce052e6a7c44dcaa0d86bbc83'
  '1c30c780d5c13de0c4cbe36b97363aab04e9f62442e61cdb810be85cc8e1ef1e'
  '1301c22b5be418de2daa84d9e6466ec6051e29f99f428b0b4dcc64f180b17f64'
  '2acaef6f0a01a10a12af1b75f5a79fa85bd518541b836e153e9fb3a442ad25b9'
)
sha512sums_aarch64=(
  '9f38f7fdfe11e6b46beb397c6cf9cc7a2b975c34a6c6337d6dc6957ebb6586b29699f54420e556c9c20208bb7f87f61cde089382eaa32397d9b5c9306ab6fbfa'
  'cf3a362dd1a7aa77fc7a6112b2709026495edeab0fbf57f5a5ae53ebc9f3f0b85494396ad5205aff14bf91571f71fe2e6505f82b834a8b2845f25a20e4787639'
  'de12d1de20eb9df1b559e669e5b27e4fbd95ea49a9aaba79aac0b7e3dfe5cf79608b15c48e16e55a1715af21c6eef12ffcb1fe0acaf7dc745a872c2a6e817410'
  'ba6262d57c277b0d3d0f13328eb1c9f16e0b2956d0dcd9e053cf72aab82b415ae808d15d97ee9f8f35e58bc369db142c328b927fae0814bcd1a911ce3dc9433f'
  '4c8e20977d8149c785c036f90d8d85c8afa1fd443f214faecc590552676e9fb52dc0864877cb982810425e9429aa5557a8c4b2be63c60de9d53dc6b163a73bf8'
  'c140bed3d423f593b23ac116bb1c0bb23deecf2ca614cfd39e2c8af97c72e14e4e42d521082840f28f4afc0dcb70246085938e189472b2b856ffa693e2199f3c'
  'afb7373de565150c6f7cfcb18af0e37759019da9e57e70786755fcfe6e98c04d3c4e01fb8a1927508d9f858a5ad750aae005701cfa758105555ab69039676e97'
)
b2sums_aarch64=(
  '652f5aeb66fc5b89a6aed48e09b3b690cd9e54cd255aea13c21d6907781cf15c8732aa74c1ce72a6e21a48fe65acdb588e5b8714e26dba987fc87a8e48b37b03'
  'ccbe10c5f9cd0ff18a5a7f143caed0e4561ebec23a696b89f629dc250b201c16270a8ae75675dc34c67bcb65307901b0ba01a0568a238fb31fb95d54638ec574'
  'e58db594caa3671ab22074ba3681b90ef28c3411ba92e1c43aded063a0c83a01f579f92f70b50865ca85e8dcd362de5cdafa4c1ef30f1f1bc3bbb86c72d7c3f7'
  'e667f71dc05abcd00c9d8d03b4ab21593d3d25fa55861a65a17e003412887e5dc0abec73bdf8f55eba6902ca502d9e578e9256474518598cd46cef7fbd47cf81'
  'aadd3668c3c2164cdebfc69d7fbd9eadb99eadf51f3f49bf0f63599f8dd33839cbe9824104b4399427cda5a030608abb0aedd98c266d1220b534943ee31e9797'
  '034d598e3de7e31f0d8b5ade4600ed315e011a3148e614f9207e1bf4528cd6e07a2d3cf1653231c54ce6809253b207e88aad550a8166387dba6405352f8bbf95'
  '1655ad7183932e67446b7ca6172661d94b3bfd836c5e256556ddd32bf08af28a0bf2256df2bcb576bc6adedada6bd638863c417f467ef5881d9d504d4dd5bced'
)
b3sums_aarch64=(
  '5721533bd7b5cb85979ec206f772727e80a3a63a614c1aa57b681c7792ed284c'
  '73758648d91fcdf161fc01d1317908c8e8dda447a5df4de81647a9f1859a8660'
  'b240b4aacd681761d5cf838a79a400903aed049c00425c74f220441705a8b614'
  '2e1b7899087e73d7792bc2d6809321e27ce8e91684bdcd80d4c50dbe7f5be4ea'
  'd772a7ae7d63a517b8a84499dc9c0d58b8b7310e44ba180fea11b08b5127bbec'
  '9710f273471d321f60db2bf4a54f304c14dd56c3064eb9e17c0efa5318602226'
  'f29ad04f9b55573f2928f7f5ca13c3603c6f171d8a3173fd14f97f59f2436bbb'
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

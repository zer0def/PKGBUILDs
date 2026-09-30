pkgname=libnvat
pkgver=2026.02.03
pkgrel=1
arch=(
  'x86_64'  # 'aarch64'?
)
url='https://github.com/nvidia/attestation-sdk'
license=('Apache2')
depends=(
  'curl' 'libstdc++' 'openssl' 'xmlsec' 'zlib' 'gcc-libs'  # 'glibc'
  'libxml2'  # 'libxml2<2.12'
)
makedepends=(
  'cmake' 'rust' 'corrosion' 'fmt' 'nlohmann-json' 'jwt-cpp'  # 'regorus'
)
# static deps
_corrosion=6be991bb34c348dfb8344be22f3606288ea5c7fd
_fmt=10.2.1 _json=3.12.0 _jwt_cpp=0.7.1 _regorus=0.4.0 _spdlog=1.14.1
source=(
  "https://github.com/NVIDIA/attestation-sdk/archive/refs/tags/${pkgver}.tar.gz"

  "https://github.com/corrosion-rs/corrosion/archive/${_corrosion}.tar.gz"
  "https://github.com/microsoft/regorus/archive/refs/tags/regorus-v${_regorus}.tar.gz"
  "https://github.com/Thalhammer/jwt-cpp/archive/refs/tags/v${_jwt_cpp}.tar.gz"
  "https://github.com/nlohmann/json/archive/refs/tags/v${_json}.tar.gz"
  "https://github.com/fmtlib/fmt/archive/refs/tags/${_fmt}.tar.gz"
  "https://github.com/gabime/spdlog/archive/refs/tags/v${_spdlog}.tar.gz"
)
sha256sums=(
  '0451408b2844c64ee1da7add9959bd11ad7b0b0dbfc54255f33abfa04f1488d9'

  '84d8fbc2810af9a42e250411dcd30b8e8cc59deba196c1dcd1fb44fec459a793'
  'a688d15a839671f13bd02ad1880b78e0077a800dcb97fc6b5c00602c074573b2'
  'e52f247d5e62fac5da6191170998271a70ce27f747f2ce8fde9b09f96a5375a4'
  '4b92eb0c06d10683f7447ce9406cb97cd4b453be18d7279320f7b2f025c10187'
  '1250e4cc58bf06ee631567523f48848dc4596133e163f02615c97f78bab6c811'
  '1586508029a7d0670dfcb2d97575dcdc242d3868a259742b69f100801ab4e16b'
)
sha512sums=(
  '66b44f04460525cbab3f0b610af230831192ec02e203df26877ad6ceae82cb29928fa3c7db3bec9d66397cf7bb97c6112a181e601c976531ab16f59cc54cc714'

  '1946845f5db1ade049a91279003b3bbbc0f59f34b0d874d5143e31fd4f3ad8fe43a8c6193b18ea2bb40b70c0fadc8c0f65f3f0e87d4bb4ad3ad285a8535f5daf'
  '870bbf9dc1c2ac82e0765ea094d87dd53384f43642de07a8826d3c0f82ada64ac6413aa7c55a4a6b43db67aab7d276232c9b0d8c0927eef32e0ec250900b3fa8'
  '1d52816e4d04a50c57e3655e1ebd0fa4e54d03aef49950b800c9c43715cdaceec7a572a02ffff5d358d5f8cde242112da06804fc7a53bc154b3860cf133716a0'
  '6cc1e86261f8fac21cc17a33da3b6b3c3cd5c116755651642af3c9e99bb3538fd42c1bd50397a77c8fb6821bc62d90e6b91bcdde77a78f58f2416c62fc53b97d'
  '27df90c681ec37e55625062a79e3b83589b6d7e94eff37a3b412bb8c1473f757a8adb727603acc9185c3490628269216843b7d7bd5a3cb37f0029da5d1495ffa'
  'd8f36a3d65a43d8c64900e46137827aadb05559948b2f5a389bea16ed1bfac07d113ee11cf47970913298d6c37400355fe6895cda8fa6dcf6abd9da0d8f199e9'
)
b2sums=(
  '00eed03f0cc290fa3358a23cc6406fe0e64c2c71ff9d80ff123ac8560cd82eb1516614b0e49645958d3fa25e30fe4d15108f8aadec2aeb49f00cfc685a7a46ba'

  'a4fe209b6bacb9a19a083440bdd72e30165b7f0c6be3c9953d8088e183e81d1783978cdae6a79406771dc9f9c8956a67e1de76597e8367436e667c5a6f6194c4'
  '9dd13aaee853232dc55f77432264adb15948e78babc323ae86348ce7ad8a6b08d46b351a27d414e8fe56b0e8999dc495d3531b3d1b26905e65db1c658cb01e19'
  'af90d42349404fbb0955e4cd677361a34afd1dbf8776b8ac66df68163c99a7e32344964a92e7942bf02a26553ceac341287abb70abda932ef260824c58843e9c'
  'db4310eeecee130a73f6dd774367104d0631e25af8bf507185c708598f2b9af67fc8387fe2b93bb27b91859518bf6c81c91dbde301e3c1a717aae6866e257e3d'
  '7bef719aa99464b5cb608c81ca78e23f3aed81cadfa9ed65246c4983a98f0cadb27983d42929ab4e0b5e264673e38d7658a4f7d5171e624b2431b3c6327071d9'
  '70ac5142acfd765c649f2e34286bae3b5082db284dd1ca7c3d7424a53dd658f7d308bef0b5e0c89192fc3931f1fe5efdba91e460c7b3df836dffc22b66f821fa'
)
b3sums=(
  '58ead329f389c93fbee674f3fe6d76082b1c613b5e05b055b8cbd511c68f434f'

  'b25c163d4e61ea24ca244fcbead4a3dc1c44b4b7770a3e857297c80f141e0401'
  '8c18490ba8fd4d2cbc029fcc1042afae8a0a38284bda0f4babb52c3c0c7002cb'
  '3a8b3b03d51dde4c4a6239f58996851dd29ad85885b5a869cdb8efed70b2a882'
  '49337bc7bf6f77c878c0e55b956bdc680eb9a3af4511cc18dae15ecba82770f1'
  '5229532606d521d4ca5cf67bd2b48824bbd84772c93a6fa1ef272c10b865a145'
  '6d1fb55c530793237de47d5c151e36c57494cfacd1f38d86e22fc013d135773b'
)
prepare(){
  sed -i '/opa-runtime/d' "${srcdir}/regorus-regorus-v${_regorus}/Cargo.toml"  # power down unnecessary 'git rev-parse HEAD' call
  sed -i 's/xmlErrorPtr/const xmlError*/' "${srcdir}/attestation-sdk-${pkgver}/nv-attestation-sdk-cpp/src/rim.cpp"
}
build(){
  cd "${srcdir}/attestation-sdk-${pkgver}"
  _build="nv-attestation-sdk-cpp/build"
  mkdir -p "${_build}/_deps"
  ln -s "../../../../corrosion-${_corrosion}" "${_build}/_deps/corrosion-src"
  ln -s "../../../../regorus-regorus-v${_regorus}" "${_build}/_deps/regorus-src"
  ln -s "../../../../jwt-cpp-${_jwt_cpp}" "${_build}/_deps/jwt-cpp-src"
  ln -s "../../../../json-${_json}" "${_build}/_deps/json-src"
  ln -s "../../../../fmt-${_fmt}" "${_build}/_deps/fmt-src"
  ln -s "../../../../spdlog-${_spdlog}" "${_build}/_deps/spdlog-src"
  cmake -S nv-attestation-sdk-cpp -B "${_build}" -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX='/usr' -DFETCHCONTENT_FULLY_DISCONNECTED=ON \
    -DUSE_SYSTEM_DEPS=ON
  cmake --build "${_build}" -j$(nproc)
}
package(){
  DESTDIR="${pkgdir}" cmake --install "${srcdir}/attestation-sdk-${pkgver}/nv-attestation-sdk-cpp/build"
}

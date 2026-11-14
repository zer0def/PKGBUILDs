pkgname=libnvat
pkgver=2026.10.02
pkgrel=1
arch=(
  'x86_64'  # 'aarch64'?
)
url='https://github.com/nvidia/attestation-sdk'
license=('Apache2')
depends=(
  'curl' 'libstdc++' 'libxml2' 'openssl' 'xmlsec' 'zlib' 'gcc-libs'  # 'glibc'
)
makedepends=(
  'cmake' 'rust' 'corrosion' 'fmt' 'nlohmann-json' 'jwt-cpp'  # 'python-zcbor'?  # 'regorus'
)
# static deps
_corrosion=0.6.1 _fmt=10.2.1 _json=3.12.0 _jwt_cpp=0.7.1 _regorus=0.4.0 _spdlog=1.14.1
_zcbor=bd28ef9fc2abe154cb420c232910a1a9f8258114
source=(
  "https://github.com/NVIDIA/attestation-sdk/archive/refs/tags/${pkgver}.tar.gz"

  "https://github.com/corrosion-rs/corrosion/archive/refs/tags/v${_corrosion}.tar.gz"
  "https://github.com/microsoft/regorus/archive/refs/tags/regorus-v${_regorus}.tar.gz"
  "https://github.com/Thalhammer/jwt-cpp/archive/refs/tags/v${_jwt_cpp}.tar.gz"
  "https://github.com/nlohmann/json/archive/refs/tags/v${_json}.tar.gz"
  "https://github.com/fmtlib/fmt/archive/refs/tags/${_fmt}.tar.gz"
  "https://github.com/gabime/spdlog/archive/refs/tags/v${_spdlog}.tar.gz"
  "https://github.com/nordicsemi/zcbor/archive/${_zcbor}.tar.gz"
)
sha256sums=(
  '6e1b231071d14bd2ae269309260ce8c9bb1fd0629f3d4b919a64f02c2dd3261b'

  'e9e95b1ee2bad52681f347993fb1a5af5cce458c5ce8a2636c9e476e4babf8e3'
  'a688d15a839671f13bd02ad1880b78e0077a800dcb97fc6b5c00602c074573b2'
  'e52f247d5e62fac5da6191170998271a70ce27f747f2ce8fde9b09f96a5375a4'
  '4b92eb0c06d10683f7447ce9406cb97cd4b453be18d7279320f7b2f025c10187'
  '1250e4cc58bf06ee631567523f48848dc4596133e163f02615c97f78bab6c811'
  '1586508029a7d0670dfcb2d97575dcdc242d3868a259742b69f100801ab4e16b'
  '67eabf55b315d10529dfc52c1aff942be439f21a18c1d1061ef37036a976156f'
)
sha512sums=(
  '4b2704c5b80a9414fcee255349328ed7086b4e1d7a3524ab0ecc01eabe51b52946d6c2428324f8669afe7d09ddda253c43db7f4a4aa17cb8f00f4bafd11be35d'

  '2b0d1ccafd5472f2938d084995662c586f19cb5cd4ead20fa25e9516d595eb5f756cb2d9abb12dccfa944b52a1f8002c69a1a4d955409c9d194c6d885a6d48ca'
  '870bbf9dc1c2ac82e0765ea094d87dd53384f43642de07a8826d3c0f82ada64ac6413aa7c55a4a6b43db67aab7d276232c9b0d8c0927eef32e0ec250900b3fa8'
  '1d52816e4d04a50c57e3655e1ebd0fa4e54d03aef49950b800c9c43715cdaceec7a572a02ffff5d358d5f8cde242112da06804fc7a53bc154b3860cf133716a0'
  '6cc1e86261f8fac21cc17a33da3b6b3c3cd5c116755651642af3c9e99bb3538fd42c1bd50397a77c8fb6821bc62d90e6b91bcdde77a78f58f2416c62fc53b97d'
  '27df90c681ec37e55625062a79e3b83589b6d7e94eff37a3b412bb8c1473f757a8adb727603acc9185c3490628269216843b7d7bd5a3cb37f0029da5d1495ffa'
  'd8f36a3d65a43d8c64900e46137827aadb05559948b2f5a389bea16ed1bfac07d113ee11cf47970913298d6c37400355fe6895cda8fa6dcf6abd9da0d8f199e9'
  'd97fd5bfa97107e1c6a0bd03d6a02efae360a0fdb21f1a88b4c4cf7e7db824e0777604c8b72264d5666a865323252f49189d9248b502dab04469e8063db1dbaa'
)
b2sums=(
  'cba7908f7519dda2c47025c0cfd5f3f57bb5860c02c530b47468220e4018249d03ed3eec854c9884c3fd52068024860a99b8c697b9c62ebc6604b42a408cd687'

  '312b2fb889b8744d2ee59dce6f646d51a597dccea02cda406cc66a9df72b5a6bca424f80a29f5719dc2732997d99144dfeaaa1554e6e2acde17289e45bbeed86'
  '9dd13aaee853232dc55f77432264adb15948e78babc323ae86348ce7ad8a6b08d46b351a27d414e8fe56b0e8999dc495d3531b3d1b26905e65db1c658cb01e19'
  'af90d42349404fbb0955e4cd677361a34afd1dbf8776b8ac66df68163c99a7e32344964a92e7942bf02a26553ceac341287abb70abda932ef260824c58843e9c'
  'db4310eeecee130a73f6dd774367104d0631e25af8bf507185c708598f2b9af67fc8387fe2b93bb27b91859518bf6c81c91dbde301e3c1a717aae6866e257e3d'
  '7bef719aa99464b5cb608c81ca78e23f3aed81cadfa9ed65246c4983a98f0cadb27983d42929ab4e0b5e264673e38d7658a4f7d5171e624b2431b3c6327071d9'
  '70ac5142acfd765c649f2e34286bae3b5082db284dd1ca7c3d7424a53dd658f7d308bef0b5e0c89192fc3931f1fe5efdba91e460c7b3df836dffc22b66f821fa'
  'a4c98ddbc62dfcb8ef68040aa1c673536cf0025ccc093228042bb2c3c6ef07286c24a314e7c71318102096fc01957b7820fc00c65ef10c058b3b5c274e9b328c'
)
b3sums=(
  'e6cfda8abba863f180bd2e085544689ffbf11446a4c0356f032c39015fb7baa8'

  '3d0ce099bfc8f6033b5f2a2cefb5336b9a0f6785ee92447898cc7d15e1847333'
  '8c18490ba8fd4d2cbc029fcc1042afae8a0a38284bda0f4babb52c3c0c7002cb'
  '3a8b3b03d51dde4c4a6239f58996851dd29ad85885b5a869cdb8efed70b2a882'
  '49337bc7bf6f77c878c0e55b956bdc680eb9a3af4511cc18dae15ecba82770f1'
  '5229532606d521d4ca5cf67bd2b48824bbd84772c93a6fa1ef272c10b865a145'
  '6d1fb55c530793237de47d5c151e36c57494cfacd1f38d86e22fc013d135773b'
  '0d26754e7cefdf02b0945b1a7da21b2afae9131dfb4f4e1e747d92a15b580d17'
)
prepare(){
  sed -i '/opa-runtime/d' "${srcdir}/regorus-regorus-v${_regorus}/Cargo.toml"  # power down unnecessary 'git rev-parse HEAD' call
}
build(){
  export CXXFLAGS="${CXXFLAGS} -Wno-error=deprecated-declarations -fpermissive"  # openssl4, plus invalid conversion from const-type* to type*
  cd "${srcdir}/attestation-sdk-${pkgver}"
  _build="nv-attestation-sdk-cpp/build"
  mkdir -p "${_build}/_deps"
  ln -s "../../../../corrosion-${_corrosion}" "${_build}/_deps/corrosion-src"
  ln -s "../../../../regorus-regorus-v${_regorus}" "${_build}/_deps/regorus-src"
  ln -s "../../../../jwt-cpp-${_jwt_cpp}" "${_build}/_deps/jwt-cpp-src"
  ln -s "../../../../json-${_json}" "${_build}/_deps/json-src"
  ln -s "../../../../fmt-${_fmt}" "${_build}/_deps/fmt-src"
  ln -s "../../../../spdlog-${_spdlog}" "${_build}/_deps/spdlog-src"
  ln -s "../../../../zcbor-${_zcbor}" "${_build}/_deps/zcbor-src"
  cmake -S nv-attestation-sdk-cpp -B "${_build}" -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX='/usr' -DFETCHCONTENT_FULLY_DISCONNECTED=ON \
    -DUSE_SYSTEM_DEPS=ON \
    -DCMAKE_COMPILE_WARNING_AS_ERROR=OFF  # revisit on next iteration
  cmake --build "${_build}" -j$(nproc)
}
package(){
  DESTDIR="${pkgdir}" cmake --install "${srcdir}/attestation-sdk-${pkgver}/nv-attestation-sdk-cpp/build"
}

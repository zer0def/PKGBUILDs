# Maintainer: Stefan Wimmer <info@stefanwimmer128.xyz>
# Contributor: Frederik Schwan <freswa at archlinux dot org>

pkgver=17.0.6
pkgname="wasi-compiler-rt${pkgver%%.*}"
pkgrel=3
pkgdesc='WASI LLVM compiler runtime'
arch=('any')
url='https://compiler-rt.llvm.org/'
license=('Apache-2.0 WITH LLVM-exception')
depends=('wasi-libc')
makedepends=(
  'cmake' 'ninja'
  "llvm${pkgver%%.*}" "clang${pkgver%%.*}" lld  #"lld${pkgver%%.*}"
)
source=(
  "git+https://github.com/llvm/llvm-project#tag=llvmorg-${pkgver}?signed"
  WASI.cmake
  wasi-sdk.cmake
)
sha512sums=(
  '1e585bd8dd275309c456f34d9e70ca525b2225c98885e6646cba9181214980bebb72fbfd7baa11d1a85e31fe7923cc9b297488be249f0f9928e3269d45c3ef3c'
  'e14b58b7b8c1b8487ea1da5667c6392fb393ff45e2df40e6d5dee193ddc1b624ea4b6ae4cc7847cd9e2b01adf3e8128dc524dd000eb233dd64976e666a1daea2'
  'c42ad43dcf91dcaa0207d383a0d0f81b12bda5b02484f06f809f419b96d7258792038f11c9700642f94dff5552682be926b8960d5c6590fdd275f6c962fe82db'
)
b2sums=(
  '1c138b23672a3c689319e0096806c2832db037e67d7758743660dabf3dc56dc6a91ba845155e07fb2bfa5c5cef3e50dee8aba10c327e73d6a791eeaf4c64d43d'
  'c829d807c257921fddb8c4d3752ad2291a2beb116d414dd31e34b7f6b01599d8c4807db87ef9930456ed8c9f30e8648e77028fa0b903c3a5ea840514f6022cf4'
  '9f20eaa64069d20510a5ba6acdedfa4bbf723e1da13792bbbdfc57cc20d232962f5603a56c9723879624ab65e18f3770fda509dc76e3f099c3744acbfeabafc2'
)
options=('staticlibs')
validpgpkeys=(
  '474E22316ABF4785A88C6E8EA2C794A986419D8A'  # Tom Stellard <tstellar@redhat.com>
  'D574BD5D1D0E98895E3BF90044F2485E45D59042'  # Tobias Hieta <tobias@hieta.se>
  'FFB3368980F3E6BB5737145A316C56D064CACBA5'  # Douglas Yung <douglas.yung@sony.com>
  '71046D1E9C6656BDD61171873E83BABF4A4F9E85'  # Cullen Rhodes <cullen.rhodes@arm.com>
)

prepare() {
  # Platform files have been copied from here https://github.com/WebAssembly/wasi-sdk
  mkdir -p "${srcdir}/llvm-project/cmake/Platform/"
  cp "${srcdir}/WASI.cmake" "${srcdir}/llvm-project/cmake/Platform/"
}

build() {
  # Build options are derived from here https://github.com/WebAssembly/wasi-sdk/blob/main/Makefile

  # Currently, wasi-sdk requires C++ code be compiled with -fno-exceptions. libc++abi is compiled, however is is currently compiled with exception-handling support disabled.
  # https://github.com/WebAssembly/wasi-sdk/issues/52#issuecomment-530619365
  cmake --trace -B build -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER_WORKS=ON \
    -DCMAKE_CXX_COMPILER_WORKS=ON \
    -DCMAKE_MODULE_PATH="${srcdir}/make" \
    -DCMAKE_TOOLCHAIN_FILE="${srcdir}/wasi-sdk.cmake" \
    -DCOMPILER_RT_BAREMETAL_BUILD=On \
    -DCOMPILER_RT_INCLUDE_TESTS=OFF \
    -DCOMPILER_RT_HAS_FPIC_FLAG=OFF \
    -DCOMPILER_RT_DEFAULT_TARGET_ONLY=On \
    -DCOMPILER_RT_OS_DIR=wasi \
    -DWASI_SDK_PREFIX="/usr/lib/llvm${pkgver%%.*}" \
    -DCMAKE_C_FLAGS="-fno-exceptions --sysroot=/usr/share/wasi-sysroot" \
    -DCMAKE_INSTALL_PREFIX="/usr/lib/llvm${pkgver%%.*}/lib/clang/${pkgver%%.*}/" \
    -DLLVM_DIR="/usr/lib/llvm${pkgver%%.*}/lib/cmake/llvm" \
    "${srcdir}/llvm-project/compiler-rt/lib/builtins"
  cmake --build build -v
}

package() {
  DESTDIR="${pkgdir}" cmake --install build -v

  :||{  # default?
  ln -sr "${pkgdir}/usr/lib/clang/${pkgver%%.*}/lib/"{wasi,wasip1}
  ln -sr "${pkgdir}/usr/lib/clang/${pkgver%%.*}/lib/"{wasi,wasip2}
  }

  install -Dm644 "${srcdir}/llvm-project/compiler-rt/LICENSE.TXT" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}

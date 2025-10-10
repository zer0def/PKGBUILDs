# Maintainer: Frederik Schwan <freswa at archlinux dot org>

pkgname=wasi-compiler-rt
pkgver=21.1.3
pkgrel=1
pkgdesc='WASI LLVM compiler runtime'
arch=('any')
url='https://compiler-rt.llvm.org/'
license=('Apache-2.0 WITH LLVM-exception')
depends=('wasi-libc')
makedepends=('cmake' 'ninja' 'llvm' 'clang' 'lld')
source=(https://github.com/llvm/llvm-project/releases/download/llvmorg-${pkgver}/compiler-rt-${pkgver}.src.tar.xz{,.sig}
        https://github.com/llvm/llvm-project/releases/download/llvmorg-${pkgver}/cmake-$pkgver.src.tar.xz{,.sig}
        WASI.cmake
        wasi-sdk.cmake)
b2sums=('1bd1b5fd3477ffe05024b88d6d16c0c659895abb9d09e5ff2a28ef977c8b2cd0ee63d07422036c56e73caa66df467884d6ae904c55c05512f107310b65a68b15'
        'SKIP'
        '9aa57e65ea6ff6902380a2990d2bbf5fa47ec63ddf9851bc01dd5b41d155a56d861f736cfeda637f9372ad337dc7eb7e7e71fe76720fafeed732b641936f992f'
        'SKIP'
        'c829d807c257921fddb8c4d3752ad2291a2beb116d414dd31e34b7f6b01599d8c4807db87ef9930456ed8c9f30e8648e77028fa0b903c3a5ea840514f6022cf4'
        '9f20eaa64069d20510a5ba6acdedfa4bbf723e1da13792bbbdfc57cc20d232962f5603a56c9723879624ab65e18f3770fda509dc76e3f099c3744acbfeabafc2')
options=('staticlibs')
validpgpkeys=(
  '474E22316ABF4785A88C6E8EA2C794A986419D8A'  # Tom Stellard <tstellar@redhat.com>
  'D574BD5D1D0E98895E3BF90044F2485E45D59042'  # Tobias Hieta <tobias@hieta.se>
  'FFB3368980F3E6BB5737145A316C56D064CACBA5'  # Douglas Yung <douglas.yung@sony.com>
)

prepare() {
  # Platform files have been copied from here https://github.com/WebAssembly/wasi-sdk
  mv cmake{-$pkgver.src,}
  mkdir -p cmake/Platform
  cp WASI.cmake cmake/Platform
}

build() {
  # Build options are derived from here https://github.com/WebAssembly/wasi-sdk/blob/main/Makefile

  # Currently, wasi-sdk requires C++ code be compiled with -fno-exceptions. libc++abi is compiled, however is is currently compiled with exception-handling support disabled.
  # https://github.com/WebAssembly/wasi-sdk/issues/52#issuecomment-530619365
  cmake -B build -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER_WORKS=ON \
    -DCMAKE_CXX_COMPILER_WORKS=ON \
    -DCMAKE_MODULE_PATH="${srcdir}"/make \
    -DCMAKE_TOOLCHAIN_FILE="${srcdir}"/wasi-sdk.cmake \
    -DCOMPILER_RT_BAREMETAL_BUILD=On \
    -DCOMPILER_RT_INCLUDE_TESTS=OFF \
    -DCOMPILER_RT_HAS_FPIC_FLAG=OFF \
    -DCOMPILER_RT_DEFAULT_TARGET_ONLY=On \
    -DCOMPILER_RT_OS_DIR=wasi \
    -DWASI_SDK_PREFIX=/usr \
    -DCMAKE_C_FLAGS="-fno-exceptions --sysroot=/usr/share/wasi-sysroot" \
    -DCMAKE_INSTALL_PREFIX=/usr/lib/clang/${pkgver%%.*}/ \
    compiler-rt-${pkgver}.src/lib/builtins
  cmake --build build -v
}

package() {
  DESTDIR="${pkgdir}" cmake --install build -v

  ln -sr "${pkgdir}"/usr/lib/clang/${pkgver%%.*}/lib/{wasi,wasip1}
  ln -sr "${pkgdir}"/usr/lib/clang/${pkgver%%.*}/lib/{wasi,wasip2}

  install -Dm644 compiler-rt-${pkgver}.src/LICENSE.TXT "${pkgdir}"/usr/share/licenses/${pkgname}/LICENSE
}

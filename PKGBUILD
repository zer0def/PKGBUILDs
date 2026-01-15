# Maintainer: Stefan Wimmer <info@stefanwimmer128.xyz>
# Contributor: Lancelot Owczarczak <lancelot@owczarczak.fr>
# Contributor: Evangelos Foutras <evangelos@foutrelis.com>
# Contributor: Jan "heftig" Steffens <jan.steffens@gmail.com>

pkgver=17.0.6
pkgname="compiler-rt${pkgver%%.*}"
pkgrel=3
pkgdesc="Compiler runtime libraries for clang ${pkgver%%.*}"
arch=('x86_64')
url="https://compiler-rt.llvm.org/"
license=('custom:Apache 2.0 with LLVM Exception')
depends=('glibc' 'libgcc' 'libstdc++')
provides=('compiler-rt')
makedepends=(
  "llvm${pkgver%%.*}" "llvm${pkgver%%.*}-libs"
  'cmake' 'ninja' 'python'
)
# Build 32-bit compiler-rt libraries on x86_64 (FS#41911)
makedepends_x86_64=('lib32-gcc-libs')
options=('staticlibs' '!lto')  # echo "${CARCH}" | grep -qvE '^arm|86$' || options+=('!lto')
source=(
  "git+https://github.com/llvm/llvm-project#tag=llvmorg-${pkgver}?signed"
  "https://github.com/llvm/llvm-project/commit/59978b21ad9c65276ee8e14f26759691b8a65763.patch"
)
sha256sums=(
  '5cba4bf5388b65e4883908519ec087b5cca23ef3c747fa01e382802c1c62b1da'
  'ccb40c999aecdf32875b8800e5a87db2e899aede2eeec13228fcb6a76db83274'
)
b2sums=(
  '1c138b23672a3c689319e0096806c2832db037e67d7758743660dabf3dc56dc6a91ba845155e07fb2bfa5c5cef3e50dee8aba10c327e73d6a791eeaf4c64d43d'
  '62c9f4169c6826e74a7566b4caeec2bc77d1ee54842a01c27568b9ae7f02e306d5b61c9f7351b17c27dcfd887bf96142be69ecf70e31146dbed9d0005b981e3d'
)
validpgpkeys=(
  '474E22316ABF4785A88C6E8EA2C794A986419D8A'  # Tom Stellard <tstellar@redhat.com>
  'D574BD5D1D0E98895E3BF90044F2485E45D59042'  # Tobias Hieta <tobias@hieta.se>
  'FFB3368980F3E6BB5737145A316C56D064CACBA5'  # Douglas Yung <douglas.yung@sony.com>
  '71046D1E9C6656BDD61171873E83BABF4A4F9E85'  # Cullen Rhodes <cullen.rhodes@arm.com>
)

prepare() {
  mkdir -p "${srcdir}/llvm-project/compiler-rt/build"

  patch -Nsp2 -d "${srcdir}/llvm-project/compiler-rt" \
    -i "${srcdir}/59978b21ad9c65276ee8e14f26759691b8a65763.patch"

  # https://gcc.gnu.org/gcc-15/porting_to.html#header-dep-changes
  sed -i '18i #include <cstdint>' "${srcdir}/llvm-project/compiler-rt/lib/orc/error.h"

  rm -rf "${srcdir}/llvm-project/libcxx" "${srcdir}/llvm-project/libcxxabi"
}

build() {
  echo "${CARCH}" | grep -qvE '^i[3-5]86$' || CFLAGS="${CFLAGS/-fcf-protection/}" CXXFLAGS="${CXXFLAGS/-fcf-protection/}"  # i386-i586
  [ "${CARCH#arm}" = "${CARCH}" ] || CFLAGS="${CFLAGS/-mno-omit-leaf-frame-pointer/}" CXXFLAGS="${CXXFLAGS/-mno-omit-leaf-frame-pointer/}"  # armv7
  export CFLAGS CXXFLAGS
  cd "${srcdir}/llvm-project/compiler-rt/build"

  local cmake_args=(
    -G Ninja
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX="/usr/lib/llvm${pkgver%%.*}"
    -DCMAKE_SKIP_RPATH=ON
    -DCOMPILER_RT_INSTALL_PATH="/usr/lib/llvm${pkgver%%.*}/lib/clang/${pkgver%%.*}"
  )
  echo "${CARCH}" | grep -qvE '^i[34]86$' || cmake_args+=(-DCMAKE_CXX_STANDARD_LIBRARIES=-latomic)
  cmake --trace .. "${cmake_args[@]}"
  ninja -v
}

package() {
  cd "${srcdir}/llvm-project/compiler-rt/build"

  DESTDIR="${pkgdir}" ninja -v install
  install -Dm644 ../LICENSE.TXT "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

  for j in bin include lib share; do mkdir -p "${pkgdir}/usr/lib/clang/${pkgver%%.*}/${j}";
    for i in "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/clang/${pkgver%%.*}/${j}/"*; do _basename="${i##*/}";
      ln -s "../../../llvm${pkgver%%.*}/lib/clang/${pkgver%%.*}/${j}/${_basename}" "${pkgdir}/usr/lib/clang/${pkgver%%.*}/${j}/${_basename}"
    done
  done
}

# vim:set ts=2 sw=2 et:

# Maintainer: Stefan Wimmer <info@stefanwimmer128.xyz>
# Contributor: Lancelot Owczarczak <lancelot@owczarczak.fr>
# Contributor: Evangelos Foutras <evangelos@foutrelis.com>
# Contributor: Jan "heftig" Steffens <jan.steffens@gmail.com>

pkgver=19.1.7
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
  "avoid-libunwind-for-i386-check.patch"
)
sha256sums=(
  'f6c754bd1b8d7da76f357a539ff8175f214b7dc1b52391a0fe75cfb9a57f28dd'
  'ccb40c999aecdf32875b8800e5a87db2e899aede2eeec13228fcb6a76db83274'
  '62b760d93e0b30b74b7209cb35f3d7a3459c55ad03b84c7af57120d8da146045'
)
b2sums=(
  '660ac9cec8c0ea609364ddbd3d7598933951564d4a21c99aaf3734ee1065f36701ed9173e22b4db9107499faa21a686f1786f86829a905900a15b0e43fc3e648'
  '62c9f4169c6826e74a7566b4caeec2bc77d1ee54842a01c27568b9ae7f02e306d5b61c9f7351b17c27dcfd887bf96142be69ecf70e31146dbed9d0005b981e3d'
  '4792ec3b8faf63c32f641772b6ae034b464b67f8c8c4c1a7609634ecedf4fe482b9dc36c0becf11aaed66e2cdd1e2402d89e7dd928b33cc32a3ac408d03b928c'
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

  patch -Np1 -d "${srcdir}/llvm-project/compiler-rt" \
    -i "${srcdir}/avoid-libunwind-for-i386-check.patch"

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

# Maintainer: Stefan Wimmer <info@stefanwimmer128.xyz>
# Contributor: Lancelot Owczarczak <lancelot@owczarczak.fr>
# Contributor: Evangelos Foutras <evangelos@foutrelis.com>
# Contributor: Jan "heftig" Steffens <jan.steffens@gmail.com>

_pkgbase=lld
pkgver=19.1.7
pkgname=("${_pkgbase}${pkgver%%.*}" "${_pkgbase}${pkgver%%.*}-default")
pkgrel=3
pkgdesc="Linker from LLVM ${pkgver%%.*}"
arch=('x86_64')
url="https://lld.llvm.org/"
license=('custom:Apache 2.0 with LLVM Exception')
depends=("llvm${pkgver%%.*}-libs" 'gcc-libs' 'zlib' 'zstd')
makedepends=(
  "llvm${pkgver%%.*}" "llvm${pkgver%%.*}-libs"
  'llvm' 'cmake' 'ninja' 'python-sphinx'
)
checkdepends=('llvm')
options=('!lto')  # echo "${CARCH}" | grep -qvE '^arm|86$' || options+=('!lto')
source=("git+https://github.com/llvm/llvm-project#tag=llvmorg-${pkgver}?signed")
sha256sums=('f6c754bd1b8d7da76f357a539ff8175f214b7dc1b52391a0fe75cfb9a57f28dd')
b2sums=('660ac9cec8c0ea609364ddbd3d7598933951564d4a21c99aaf3734ee1065f36701ed9173e22b4db9107499faa21a686f1786f86829a905900a15b0e43fc3e648')
validpgpkeys=(
  '474E22316ABF4785A88C6E8EA2C794A986419D8A'  # Tom Stellard <tstellar@redhat.com>
  'D574BD5D1D0E98895E3BF90044F2485E45D59042'  # Tobias Hieta <tobias@hieta.se>
  'FFB3368980F3E6BB5737145A316C56D064CACBA5'  # Douglas Yung <douglas.yung@sony.com>
  '71046D1E9C6656BDD61171873E83BABF4A4F9E85'  # Cullen Rhodes <cullen.rhodes@arm.com>
)

prepare() {
  mkdir -p "${srcdir}/llvm-project/lld/build"
}

build() {
  echo "${CARCH}" | grep -qvE '^i[3-5]86$' || CFLAGS="${CFLAGS/-fcf-protection/}" CXXFLAGS="${CXXFLAGS/-fcf-protection/}"  # i386-i586
  [ "${CARCH#arm}" = "${CARCH}" ] || CFLAGS="${CFLAGS/-mno-omit-leaf-frame-pointer/}" CXXFLAGS="${CXXFLAGS/-mno-omit-leaf-frame-pointer/}"  # armv7
  export CFLAGS CXXFLAGS
  cd "${srcdir}/llvm-project/lld/build"

  local cmake_args=(
    -G Ninja
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX="/usr/lib/llvm${pkgver%%.*}"
    -DCMAKE_PREFIX_PATH="/usr/lib/llvm${pkgver%%.*}"
    -DCMAKE_SKIP_INSTALL_RPATH=ON
    -DCMAKE_SKIP_RPATH=ON
    -DBUILD_SHARED_LIBS=ON
    -DLLVM_CMAKE_DIR="/usr/lib/llvm${pkgver%%.*}/lib/cmake"
    -DLLVM_CONFIG="/usr/lib/llvm${pkgver%%.*}/bin/llvm-config"
    -DLLVM_EXTERNAL_LIT=/usr/bin/lit  # lit${pkgver%%.*}?

    -DLLVM_INCLUDE_TESTS=ON
    -DLLVM_LINK_LLVM_DYLIB=ON
    -DLLVM_MAIN_SRC_DIR="${srcdir}/llvm-project/llvm"

    -DLLVM_ENABLE_SPHINX=OFF
    # no longer present
    -DLLVM_BUILD_DOCS=OFF
    -DCMAKE_INSTALL_DOCDIR=share/doc
    -DSPHINX_WARNINGS_AS_ERRORS=OFF
  )
  cmake --trace .. "${cmake_args[@]}"
  ninja -v
}

check() {
  [ "${CARCH%64*}" != "${CARCH}" ] || return 0
  return 0  # can't find proper lit?
  cd "${srcdir}/llvm-project/lld/build"
  ninja -v check-lld
}

package_lld19() {
  cd "${srcdir}/llvm-project/lld/build"

  DESTDIR="${pkgdir}" ninja -v install
  install -Dm644 ../LICENSE.TXT "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

  # https://bugs.llvm.org/show_bug.cgi?id=42455
  install -Dm644 -t "${pkgdir}/usr/lib/llvm${pkgver%%.*}/share/man/man1" ../docs/ld.lld.1

  # Remove documentation sources
  rm -rf "${pkgdir}/usr/lib/llvm${pkgver%%.*}/share/doc/lld/html/_sources" \
    "${pkgdir}/usr/lib/llvm${pkgver%%.*}/share/doc/lld/html/.buildinfo"

  for lib in $(find "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/" -maxdepth 1 -type f -name "*.so.${pkgver%%.*}" -printf '%f\n'); do
    ln -s "llvm${pkgver%%.*}/lib/${lib}" "${pkgdir}/usr/lib/${lib}"
  done

  local _libname _lib
  :||for _libname in COFF Common ELF MachO MinGW Wasm; do
    _lib="liblld${_libname}.so.${pkgver%.*}"
    mv "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/${_lib}" "${pkgdir}/usr/lib/${_lib}"
    ln -s "../../${_lib}" "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/${_lib}"
  done
}

package_lld19-default() {
  pkgdesc="Linker from LLVM ${pkgver%%.*} - default symlinks"
  depends=("${_pkgbase}${pkgver%%.*}")
  provides=('lld')
  conflicts=('lld')

  for j in bin include lib/cmake share/doc; do  # share/man/man*
    j="$(readlink -f "${pkgdir}/../${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/"${j} | head -n1)"
    j="${j#${pkgdir%/*}/${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/}"

    _backwards=''; for i in $(seq $(echo "${j}" | tr '/' '\n' | wc -l)); do _backwards="${_backwards}/.."; done

    mkdir -p "${pkgdir}/usr/${j}"
    for i in "${pkgdir}/../${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/${j}/"*; do _basename="${i##*/}"
      ln -s "../lib/llvm${pkgver%%.*}/${j}/${_basename}" "${pkgdir}/usr/${j}/${_basename}"
    done
  done

  for i in "${pkgdir}/../${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/lib/"*; do
    _basename="${i##*/}"; [ "${_basename}" != "cmake" ] || continue
    ln -s "../lib/llvm${pkgver%%.*}/lib/${_basename}" "${pkgdir}/usr/lib/${_basename}"
  done
}

# vim:set ts=2 sw=2 et:

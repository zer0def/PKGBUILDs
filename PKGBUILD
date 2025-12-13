# Maintainer: Stefan Wimmer <info@stefanwimmer128.xyz>
# Contributor: Daniele Basso
# Contributor: Lancelot Owczarczak <lancelot@owczarczak.fr>
# Contributor: Evangelos Foutras <evangelos@foutrelis.com>
# Contributor: Jan "heftig" Steffens <jan.steffens@gmail.com>

_pkgbase=llvm
pkgver=17.0.6
pkgname=(
  "${_pkgbase}${pkgver%%.*}"
  "${_pkgbase}${pkgver%%.*}-libs"
  "${_pkgbase}${pkgver%%.*}-default"
)
pkgrel=3
arch=('x86_64')
url="https://llvm.org/"
license=('custom:Apache 2.0 with LLVM Exception')
makedepends=(
  'cmake'
  'git'
  'ninja'
  'zlib'
  'zstd'
  'libffi'
  'libedit'
  'libxml2'
  'python'
  'ncurses'
  'python-build'
  'python-installer'
  'python-setuptools'
  'python-wheel'
)
checkdepends=('python-psutil')
options=('staticlibs' '!lto')  # echo "${CARCH}" | grep -qvE '^arm|86$' || options+=('!lto')  # tools/llvm-shlib/typeids.test fails with LTO
source=("git+https://github.com/llvm/llvm-project#tag=llvmorg-${pkgver}?signed")
sha256sums=('5cba4bf5388b65e4883908519ec087b5cca23ef3c747fa01e382802c1c62b1da')
b2sums=('1c138b23672a3c689319e0096806c2832db037e67d7758743660dabf3dc56dc6a91ba845155e07fb2bfa5c5cef3e50dee8aba10c327e73d6a791eeaf4c64d43d')
validpgpkeys=(
  '474E22316ABF4785A88C6E8EA2C794A986419D8A'  # Tom Stellard <tstellar@redhat.com>
  'D574BD5D1D0E98895E3BF90044F2485E45D59042'  # Tobias Hieta <tobias@hieta.se>
  'FFB3368980F3E6BB5737145A316C56D064CACBA5'  # Douglas Yung <douglas.yung@sony.com>
  '71046D1E9C6656BDD61171873E83BABF4A4F9E85'  # Cullen Rhodes <cullen.rhodes@arm.com>
)

# Utilizing LLVM_DISTRIBUTION_COMPONENTS to avoid
# installing static libraries; inspired by Gentoo
_get_distribution_components() {
  local target
  ninja -C build -t targets | grep -Po 'install-\K.*(?=-stripped:)' | while read -r target; do
    case "${target}" in
      llvm-libraries|distribution)
        continue
        ;;
      # shared libraries
      LLVM|LLVMgold)
        ;;
      # libraries needed for clang-tblgen
      LLVMDemangle|LLVMSupport|LLVMTableGen)
        ;;
      # used by lldb
      LLVMDebuginfod)
        ;;
      # testing libraries
      LLVMTestingAnnotations|LLVMTestingSupport)
        ;;
      # keep static libraries
      #LLVM*)
      #  continue
      #  ;;
      # exclude llvm-exegesis (doesn't seem useful without libpfm)
      llvm-exegesis)
        continue
        ;;
    esac
    echo "${target}"
  done
}

prepare() {
  cd "${srcdir}/llvm-project/llvm"

  # https://aur.archlinux.org/packages/llvm17#comment-1039830
  # https://gcc.gnu.org/gcc-15/porting_to.html#header-dep-changes
  sed -i '29i #include <cstdint>' include/llvm/ADT/SmallVector.h
  sed -i '19i #include <cstdint>' lib/Target/AMDGPU/MCTargetDesc/AMDGPUMCTargetDesc.h
  sed -i '18i #include <cstdint>' lib/Target/X86/MCTargetDesc/X86MCTargetDesc.h

  # package lit per llvm major
  grep -nrE '(import|from)(\s*)lit(\.|\s|$)' utils/lit | awk -F: '{print $1}' | sort -u | xargs -r -- sed -i \
    -e "s/\(from\s*\)lit\./\1lit${pkgver%%.*}./g" \
    -e "s/\(from\s*\)lit\(\s\)/\1lit${pkgver%%.*}\2/g"
  grep -nrE 'import(\s*)lit(\.|\s|$)' utils/lit | awk -F: '{print $1}' | sort -u | xargs -r -- sed -i \
    -e "s/\(import\s*\)lit$/\1lit${pkgver%%.*}/g" \
    -e "s/\(import\s*\)lit\./\1lit${pkgver%%.*}./g" \
    -e "s/lit\./lit${pkgver%%.*}./g"
  sed -i -e "s/\([^A-Za-z0-9]\)lit\([.\" ]\)/\1lit${pkgver%%.*}\2/g" utils/lit/setup.py
  sed -i -e "s/lit${pkgver%%.*}.cfg/lit.cfg/g" utils/lit/tests/lit.site.cfg.in
  mv utils/lit/lit.py "utils/lit/lit${pkgver%%.*}.py"
  mv utils/lit/lit    "utils/lit/lit${pkgver%%.*}"
}

build() {
  echo "${CARCH}" | grep -qvE '^i[3-5]86$' || CFLAGS="${CFLAGS/-fcf-protection/}" CXXFLAGS="${CXXFLAGS/-fcf-protection/}"  # i386-i586
  [ "${CARCH#arm}" = "${CARCH}" ] || CFLAGS="${CFLAGS/-mno-omit-leaf-frame-pointer/}" CXXFLAGS="${CXXFLAGS/-mno-omit-leaf-frame-pointer/}"  # armv7

  cd "${srcdir}/llvm-project/llvm"

  # Build only minimal debug info to reduce size
  export CFLAGS="${CFLAGS/-g /-g1 }" CXXFLAGS="${CXXFLAGS/-g /-g1 }"

  local cmake_args=(
    -G Ninja
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX="/usr/lib/llvm${pkgver%%.*}"
    -DCMAKE_SKIP_RPATH=ON
    -DLLVM_BINUTILS_INCDIR=/usr/include
    -DLLVM_BUILD_LLVM_DYLIB=ON
    -DLLVM_BUILD_TESTS=ON  # OFF?
    -DLLVM_ENABLE_BINDINGS=OFF
    -DLLVM_ENABLE_FFI=ON
    -DLLVM_ENABLE_RTTI=ON
    -DLLVM_HOST_TRIPLE="${CHOST}"
    -DLLVM_INCLUDE_BENCHMARKS=OFF
    -DLLVM_INSTALL_GTEST=ON
    -DLLVM_INSTALL_UTILS=ON
    -DLLVM_LINK_LLVM_DYLIB=ON
    -DLLVM_USE_PERF=ON

    # these are optional, especially when you want to avoid involving python
    -DLLVM_ENABLE_SPHINX=OFF
    -DSPHINX_WARNINGS_AS_ERRORS=OFF  # no longer present
    -DLLVM_BUILD_DOCS=OFF
    -DCMAKE_INSTALL_DOCDIR=share/doc
  )

  cmake --trace "${cmake_args[@]}" -B build
  local distribution_components=$(_get_distribution_components | paste -sd\;)
  test -n "${distribution_components}"
  cmake_args+=(-DLLVM_DISTRIBUTION_COMPONENTS="${distribution_components}")

  cmake --trace "${cmake_args[@]}" -B build
  ninja -v -C build

  # Include lit for running lit-based tests in other projects
  pushd utils/lit
  python -m build --wheel --no-isolation
  popd
}

check() {
  [ "${CARCH%64*}" != "${CARCH}" ] || return 0
  cd "${srcdir}/llvm-project/llvm/build"
  :||LD_LIBRARY_PATH="${PWD}/lib" ninja -v check
}

package_llvm17() {
  pkgdesc="Compiler infrastructure (LLVM ${pkgver%%.*})"
  depends=(
    "${_pkgbase}${pkgver%%.*}-libs"
    'perl'
  )

  cd "${srcdir}/llvm-project/llvm/build"

  DESTDIR="${pkgdir}" ninja -v install-distribution

  # Include lit for running lit-based tests in other projects
  pushd ../utils/lit
  python -m installer --destdir="${pkgdir}" dist/*.whl
  popd

  # The runtime libraries go into llvm${pkgver%%.*}-libs
  local _llvm_lib
  for _llvm_lib in "libLLVM-${pkgver%%.*}.so" "libLLVM-${pkgver}.so" LLVMgold.so; do  # "libLLVM.so.${pkgver%.*}"
    mv -f "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/${_llvm_lib}" "${srcdir}/"
  done
  rm -f "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/libLLVM"*.a

  # Create versioned symlinks from /usr/bin/ to /usr/lib/llvm${pkgver%%.*}/bin/
  install -d "${pkgdir}/usr/bin"
  local _binary
  for _binary in "${pkgdir}/usr/lib/llvm${pkgver%%.*}/bin/"*; do
    local _basename=${_binary##*/}
    ln -s "../lib/llvm${pkgver%%.*}/bin/${_basename}" "${pkgdir}/usr/bin/${_basename}-${pkgver%%.*}"
  done

  # Remove documentation sources
  rm -rf "${pkgdir}/usr/share/doc/llvm/html/"{_sources,.buildinfo}

  install -Dm644 ../LICENSE.TXT "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}

package_llvm17-libs() {
  pkgdesc="LLVM ${pkgver%%.*} libraries"
  depends=(
    'gcc-libs'
    'zlib'
    'libffi'
    'libedit'
    'ncurses'
    'libxml2'
  )

  install -Dm0644 -t "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib" "${srcdir}/llvm-project/llvm/build/lib/libLLVM"*.a
  local _llvm_lib
  for _llvm_lib in "libLLVM-${pkgver%%.*}.so" "libLLVM-${pkgver}.so"; do  # "libLLVM.so.${pkgver%.*}"
    cp -P "${srcdir}/${_llvm_lib}" "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/"
    ln -sf "llvm${pkgver%%.*}/lib/${_llvm_lib}" "${pkgdir}/usr/lib"
  done
  cp -P "${srcdir}/LLVMgold.so" "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/"

  install -Dm644 "${srcdir}/llvm-project/llvm/LICENSE.TXT" \
    "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}

package_llvm17-default() {
  pkgdesc="LLVM ${pkgver%%.*} default symlinks"
  depends=("${_pkgbase}${pkgver%%.*}" "${_pkgbase}${pkgver%%.*}-libs")
  provides=('llvm' 'llvm-libs' 'llvm-default' 'libLLVM.so' 'libLTO.so' 'libRemarks.so' 'libLLVMCore.a')
  conflicts=('llvm' 'llvm-libs' 'llvm-default')

  local i _basename

  install -d "${pkgdir}/usr/lib/cmake"
  ln -s "../../lib/llvm${pkgver%%.*}/lib/cmake/llvm" "${pkgdir}/usr/lib/cmake/llvm"

  for j in bin include; do
    j="$(readlink -f "${pkgdir}/../${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/"${j} | head -n1)"
    j="${j#${pkgdir%/*}/${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/}"

    _backwards=''; for i in $(seq $(echo "${j}" | tr '/' '\n' | wc -l)); do _backwards="${_backwards}/.."; done

    install -d "${pkgdir}/usr/${j}"
    for i in "${pkgdir}/../${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/${j}/"*; do _basename="${i##*/}"
      ln -s "${_backwards#/}/lib/llvm${pkgver%%.*}/${j}/${_basename}" "${pkgdir}/usr/${j}/${_basename}"
    done
  done

  for i in "${pkgdir}/../${_pkgbase}${pkgver%%.*}/usr/lib/llvm${pkgver%%.*}/lib/"*; do
    _basename="${i##*/}"; [ "${_basename}" != "cmake" ] || continue
    ln -s "../lib/llvm${pkgver%%.*}/lib/${_basename}" "${pkgdir}/usr/lib/${_basename}"
  done
  :||for i in "${pkgdir}/../${_pkgbase}${pkgver%%.*}-libs/usr/lib/llvm${pkgver%%.*}/lib/"*; do
    _basename="${i##*/}"
    ln -s "../lib/llvm${pkgver%%.*}/lib/${_basename}" "${pkgdir}/usr/lib/${_basename}"
  done
  ln -s "../lib/llvm${pkgver%%.*}/lib/LLVMgold.so" "${pkgdir}/usr/lib/LLVMgold.so"
}
# vim:set ts=2 sw=2 et:

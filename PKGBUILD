# Maintainer: Stefan Wimmer <info@stefanwimmer128.xyz>
# Contributor: Lancelot Owczarczak <lancelot@owczarczak.fr>
# Contributor: Evangelos Foutras <evangelos@foutrelis.com>
# Contributor: Jan "heftig" Steffens <jan.steffens@gmail.com>
# Contributor: An Nguyen <an-1258@outlook.com>

pkgver=18.1.8
pkgbase="clang${pkgver%%.*}"
pkgname=(
  "clang${pkgver%%.*}"
  "clang${pkgver%%.*}-default"
)
pkgrel=3
pkgdesc="C language family frontend for LLVM ${pkgver%%.*}"
arch=('x86_64')
url="https://clang.llvm.org/"
license=('custom:Apache 2.0 with LLVM Exception')
depends=(
  "compiler-rt${pkgver%%.*}"
  "llvm${pkgver%%.*}-libs"
  'gcc'
)
makedepends=(
  "llvm${pkgver%%.*}" "llvm${pkgver%%.*}-libs"
  'llvm'
  'cmake'
  'ninja'
  'python'
  'python-fissix'
)
optdepends=('openmp: OpenMP support in clang with -fopenmp'
            "llvm${pkgver%%.*}: referenced by some clang headers")
checkdepends=('llvm')
options=('!lto')  # echo "${CARCH}" | grep -qvE '^arm|86$' || options+=('!lto')
_source_base="https://github.com/llvm/llvm-project/releases/download/llvmorg-${pkgver}"
source=(
  "git+https://github.com/llvm/llvm-project#tag=llvmorg-${pkgver}?signed"
  #clang-disable-float128-diagnostics-for-device-compilation.patch
  #support-__GCC_-CON-DE-STRUCTIVE_SIZE.patch
  enable-fstack-protector-strong-by-default.patch
)
sha256sums=(
  '55b61a110a0f970b799b0bdb3502f12151f9e0449f23bfd5cc7a5ea9d8f54abf'
  #'94a3d4df2443f9dc9e256e6c0c661ff4a4ca4f34a5ca351f065511b9694faf2a'
  #'8832b4ee02fe8a0e57fca608288242f80e348ee9b60be3eb0069c8b91a42fbf4'
  'ef319e65f927718e1d3b1a23c480d686b1d292e2a0bf27229540964f9734117a'
)
b2sums=(
  '6e56421b0a9993a33da2b5ed46452ae4cf636a1246fe74ba9060319fbceb6bdd9eb9be2f6a9216479e28d0faf02ecf0a793017466edd912287d4c677e0b05880'
  #'e6742b4dab1246d3580ee6a91acb45a6224653c6d9c17c3c24fd698cf95dfab06ca73afafcd9e2f2272d0e31ae0de59244a57d4888c5079eadf63e2aa5aef16f'
  #'67e12d004f8f13b9fe944d146b0cbdff70a36748dc686a296605f0d3f3869b7d0ad0c23f4b7492c930753130b8ac2fc2fe2ba871fa3ffc0d2aef71fff1ffa787'
  '5e3e949867d6e3e1b78e2b24a75192058020b095b402de452e2611ff9a7b9bccbf370d841d987b331cad06fe4cc23ea0ad31b21c5e84f0a3f5055d3761621463'
)
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
  ninja -t targets | grep -Po 'install-\K.*(?=-stripped:)' | while read -r target; do
    case "${target}" in
      clang-libraries|distribution)
        continue
        ;;
      clang|clangd|clang-*)
        ;;
      clang*|findAllSymbols)
        continue
        ;;
    esac
    echo "${target}"
  done
}
_prefix="usr/lib/llvm${pkgver%%.*}"

prepare() {
  mkdir -p "${srcdir}/llvm-project/clang/build"
  mv "${srcdir}/llvm-project/clang-tools-extra" "${srcdir}/llvm-project/clang/tools/extra"

  patch -Np2 -d "${srcdir}/llvm-project/clang" -i "${srcdir}/enable-fstack-protector-strong-by-default.patch"

  #patch -Np2 -d "${srcdir}/llvm-project/clang" -i "${srcdir}/clang-disable-float128-diagnostics-for-device-compilation.patch"
  #patch -Np2 -d "${srcdir}/llvm-project/clang" -i "${srcdir}/support-__GCC_-CON-DE-STRUCTIVE_SIZE.patch"

  # Attempt to convert script to Python 3
  python -m fissix -wn --no-diffs \
    "${srcdir}/llvm-project/clang/tools/extra/clang-include-fixer/find-all-symbols/tool/run-find-all-symbols.py"
}

build() {
  echo "${CARCH}" | grep -qvE '^i[3-5]86$' || CFLAGS="${CFLAGS/-fcf-protection/}" CXXFLAGS="${CXXFLAGS/-fcf-protection/}"  # i386-i586
  [ "${CARCH#arm}" = "${CARCH}" ] || CFLAGS="${CFLAGS/-mno-omit-leaf-frame-pointer/}" CXXFLAGS="${CXXFLAGS/-mno-omit-leaf-frame-pointer/}"  # armv7

  cd "${srcdir}/llvm-project/clang/build"

  # Build only minimal debug info to reduce size
  export CFLAGS="${CFLAGS/-g /-g1 }" CXXFLAGS="${CXXFLAGS/-g /-g1 }"

  local cmake_args=(
    -G Ninja
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_INSTALL_PREFIX="/${_prefix}"
    -DCMAKE_PREFIX_PATH="/${_prefix}"
    -DCMAKE_SKIP_RPATH=ON
    -DCLANG_DEFAULT_PIE_ON_LINUX=ON
    -DCLANG_LINK_CLANG_DYLIB=ON
    -DENABLE_LINKER_BUILD_ID=ON
    -DLLVM_CONFIG="/${_prefix}/bin/llvm-config"  # "/usr/lib/llvm-config-${pkgver%%.*}"
    -DLLVM_ENABLE_RTTI=ON
    #-DLLVM_EXTERNAL_CLANG_TOOLS_EXTRA_SOURCE_DIR="${srcdir}/llvm-project/clang-tools-extra"
    -DLLVM_LINK_LLVM_DYLIB=ON
    -DLLVM_MAIN_SRC_DIR="${srcdir}/llvm-project/llvm"
    #-DLLVM_THIRD_PARTY_DIR="${srcdir}/llvm-project/third-party"

    -DLLVM_BUILD_TESTS=ON
    -DLLVM_INCLUDE_TESTS=ON  # let's start with "ON"
    -DLLVM_EXTERNAL_LIT="/usr/bin/lit${pkgver%%.*}"

    -DLLVM_BUILD_DOCS=OFF
    -DLLVM_ENABLE_SPHINX=OFF
    -DLLVM_INCLUDE_DOCS=OFF
    -DCMAKE_INSTALL_DOCDIR=share/doc
    -DSPHINX_WARNINGS_AS_ERRORS=OFF  # no longer present
  )

  cmake .. "${cmake_args[@]}"
  local distribution_components=$(_get_distribution_components | paste -sd\;)
  [ -z "${distribution_components}" ] || {
    cmake_args+=(-DLLVM_DISTRIBUTION_COMPONENTS="${distribution_components}")
    cmake .. "${cmake_args[@]}"
  }
  ninja
}

check() {
  [ "${CARCH%64*}" != "${CARCH}" ] || return 0
  cd "${srcdir}/llvm-project/clang/build"
  LD_LIBRARY_PATH="${PWD}/lib" ninja clang-check
}

_python_optimize() {
  python -m compileall "$@"
  python -O -m compileall "$@"
  python -OO -m compileall "$@"
}

package_clang18() {
  cd "${srcdir}/llvm-project/clang/build"

  DESTDIR="${pkgdir}" ninja install-distribution
  install -Dm644 ../LICENSE.TXT "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

  mv "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/libclang-cpp.so.${pkgver%.*}" "${pkgdir}/usr/lib/"
  ln -s "../../libclang-cpp.so.${pkgver%.*}" "${pkgdir}/${_prefix}/lib/libclang-cpp.so.${pkgver%.*}"
  ln -s "llvm${pkgver%%.*}/lib/libclang.so.${pkgver%.*}" "${pkgdir}/usr/lib/libclang.so.${pkgver%.*}"

  sed -i "s#lib/cmake/clang\"#lib/cmake/clang${_llvmver}\"#" "${pkgdir}/usr/lib/llvm${pkgver%%.*}/lib/cmake/clang/ClangConfig.cmake"
  mkdir -p "${pkgdir}/usr/lib/cmake/"
  ln -s "../llvm${pkgver%%.*}/lib/cmake/clang" "${pkgdir}/usr/lib/cmake/clang${pkgver%%.*}"

  # Remove documentation sources
  rm -rf "${pkgdir}/${_prefix}/share/doc/clang"{,-tools}/html/{_sources,.buildinfo}

  install -d "${pkgdir}/usr/bin"
  for i in "${pkgdir}/${_prefix}/bin/"*; do local _basename="${i##*/}"
    ln -s "../lib/llvm${pkgver%%.*}/bin/${_basename}" "${pkgdir}/usr/bin/${_basename}-${pkgver%%.*}"
  done
  rm -f "${pkgdir}/usr/bin/clang-${pkgver%%.*}-${pkgver%%.*}"
}

package_clang18-default() {
  provides=('clang')

  mkdir -p "${pkgdir}/usr/"{bin,include,lib/{clang/${pkgver%%.*}/include,cmake},share/{clang{,-doc},doc/clang{,-tools},man/man1,scan-{build,view}}}
  for i in include/clang{,-{c,tidy}}; do ln -s "../lib/llvm${pkgver%%.*}/${i}" "${pkgdir}/usr/${i}"; done

  #ln -s "../llvm${pkgver%%.*}/lib/cmake/clang" "${pkgdir}/usr/lib/cmake/clang"
  ln -s "clang${pkgver%%.*}" "${pkgdir}/usr/lib/cmake/clang"

  for j in bin "lib/clang/${pkgver%%.*}/include" share/{clang{,-doc},doc/clang{,-tools},man/man1,scan-{build,view}}; do
    _backwards=''; for i in $(seq $(echo "${j}" | tr '/' '\n' | wc -l)); do _backwards="${_backwards}/.."; done
    for i in "${pkgdir}/../clang${pkgver%%.*}/${_prefix}/${j}/"*; do local _basename="${i##*/}"
      ln -s "${_backwards}/lib/llvm${pkgver%%.*}/${j}/${_basename}" "${pkgdir}/usr/${j}/${_basename}"
    done
  done

  ln -s "libclang-cpp.so.${pkgver%.*}" "${pkgdir}/usr/lib/libclang-cpp.so"
  for i in "${pkgver}" ''; do ln -sf "llvm${pkgver%%.*}/lib/libclang.so${i:+.${i}}" "${pkgdir}/usr/lib/libclang.so${i:+.${i}}"; done
  rm -f "${pkgdir}/usr/bin/clang-${pkgver%%.*}"

  # Link scanbuild-py into site-packages and install Python bindings
  local _site_packages=$(python -c "import site; print(site.getsitepackages()[0])"); install -d "${pkgdir}/${_site_packages}"
  cp -a "${srcdir}/llvm-project/clang/bindings/python/clang" "${pkgdir}/${_site_packages}/"
  for i in libear libscanbuild; do
    ln -s "../../llvm${pkgver%%.*}/lib/${i}" "${pkgdir}/${_site_packages}/"
  done;  #_python_optimize "${pkgdir}/${_prefix}/share" "${pkgdir}/${_site_packages}"

  # Link bash completion
  local _bash_completion="${pkgdir}/usr/share/bash-completion/completions"; install -d "${_bash_completion}"
  ln -s "../../../lib/llvm${pkgver%%.*}/share/clang/bash-autocomplete.sh" "${_bash_completion}/clang"

  for i in "${pkgdir}/../clang${pkgver%%.*}/${_prefix}/libexec/"*; do local _basename="${i##*/}"
    ln -s "../llvm${pkgver%%.*}/libexec/${_basename}" "${pkgdir}/usr/lib/clang/${_basename}"
  done
}

# vim:set ts=2 sw=2 et:

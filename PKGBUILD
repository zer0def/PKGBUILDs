# Maintainer: Johannes Löthberg <johannes@kyriasis.com>
# Maintainer: Jan Alexander Steffens (heftig) <heftig@archlinux.org>
# Contributor: Alexander F Rødseth <xyproto@archlinux.org>
# Contributor: Daniel Micay <danielmicay@gmail.com>
# Contributor: userwithuid <userwithuid@gmail.com>

pkgbase=rust
pkgname=(
  rust
  rust-musl
  rust-src
  rust-wasm
)
pkgver=1.93.1
pkgrel=1
epoch=1
[ "${CARCH%_64*}" = "${CARCH}" ] || pkgname+=(lib32-rust-libs)
pkgdesc="Systems programming language focused on safety, speed and concurrency"
url=https://rust-lang.org/
arch=(
  aarch64
  loong64
  riscv64
  x86_64
)
license=("Apache-2.0 OR MIT")
depends=(
  bash
  compiler-rt
  curl
  gcc
  gcc-libs
  glibc
  libssh2
  libunwind
  lld
  llvm-libs
  openssl
  zlib
)
makedepends=(
  # these would likely benefit from an archlinux-java-style switch script for system default version
  clang17 llvm17  # compiler-rt17 lld17  # also, in same source package: {,wasi-}libc++{,abi} libclc lldb openmp polly wasi-compiler-rt
  clang18 llvm18  # compiler-rt18 lld18
  clang19 llvm19  # compiler-rt19 lld19
  clang20 llvm20  # compiler-rt20 lld20
  clang21 llvm21  # compiler-rt21 lld21
  git  # this can be made optional

  cmake
  libffi
  musl
  ninja
  perl
  python
  wasi-libc
  wasm-component-ld
)
[ "${CARCH%_64*}" = "${CARCH}" ] || makedepends+=(lib32-gcc-libs lib32-glibc)
checkdepends=(
  gdb
  procps-ng
)
options=(
  !emptydirs
  !lto
)
source=(
  #'https://github.com/thepowersgang/mrustc/archive/refs/tags/v0.11.2.tar.gz'
  'git+https://github.com/thepowersgang/mrustc.git#tag=v0.11.2' 'Cargo.toml'
  'mrustc-cstdint.patch::https://github.com/thepowersgang/mrustc/commit/56e4d7a37155526497354a9a1e500ff9dc8a423d.patch'
  'musl-dylib.patch'

  'https://static.rust-lang.org/dist/rustc-1.74.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.75.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.76.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.77.2-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.78.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.79.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.80.1-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.81.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.82.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.83.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.84.1-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.85.1-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.86.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.87.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.88.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.89.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.90.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.91.1-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.92.0-src.tar.xz'{.asc,}
  'https://static.rust-lang.org/dist/rustc-1.93.1-src.tar.xz'{.asc,}

  # Patch bootstrap so that rust-analyzer-proc-macro-srv
  # is in /usr/lib instead of /usr/libexec
  0001-bootstrap-Change-libexec-dir.patch

  # Put bash completions where they belong
  0002-bootstrap-Change-bash-completion-dir.patch

  # Fix build with system rustc
  # https://github.com/rust-lang/rust/issues/143735
  0003-bootstrap-Workaround-for-system-stage0.patch

  # Use our *-pc-linux-gnu targets, making LTO with clang simpler
  0004-compiler-Change-LLVM-targets.patch

  # Use our ld.lld
  0005-compiler-Use-ld.lld-by-default.patch

  # Use our target-specific GCCs, like aarch64-linux-gnu-gcc
  #0006-compiler-Use-target-specific-GCC-linkers.patch

  # Make the riscv64 musl target behave like the x86_64 musl target
  0007-compiler-Link-riscv64-musl-statically.patch

  # Prefer "lib" over "lib64"
  0008-compiler-Swap-primary-and-secondary-lib-dirs.patch
)
noextract=(
  'rustc-1.74.0-src.tar.xz'
  'rustc-1.75.0-src.tar.xz'
  'rustc-1.76.0-src.tar.xz'
  'rustc-1.77.2-src.tar.xz'
  'rustc-1.78.0-src.tar.xz'
  'rustc-1.79.0-src.tar.xz'
  'rustc-1.80.1-src.tar.xz'
  'rustc-1.81.0-src.tar.xz'
  'rustc-1.82.0-src.tar.xz'
  'rustc-1.83.0-src.tar.xz'
  'rustc-1.84.1-src.tar.xz'
  'rustc-1.85.1-src.tar.xz'
  'rustc-1.86.0-src.tar.xz'
  'rustc-1.87.0-src.tar.xz'
  'rustc-1.88.0-src.tar.xz'
  'rustc-1.89.0-src.tar.xz'
  'rustc-1.90.0-src.tar.xz'
  'rustc-1.91.1-src.tar.xz'
  'rustc-1.92.0-src.tar.xz'
  'rustc-1.93.1-src.tar.xz'
)
sha256sums=(
  #'baf1e86311e004a638b35730b4d7e72644938a6bbbbf65a862245b92ba5325ad'
  'd7d6c415e4dd4a3d587aded857ad3e55f64f8b75c0c3d613bd2704862c181633'
  '3a53e5f957180c64afbf8f1bcf30201be360215c33878c834c2c9a80e87e9bd0'
  '10d6d3d86ccf6addf9d0b19e86ff2b79f232081d1b3aaa966e5ecde3efa221f0'
  '8b5588bdf7df362e5431461250f56bb1f3519e4684cc7d14e2c542b8d6fbc5c2'

  'SKIP' '23705e38c1a37acfd7fbb921c5dd8772619476e80d0b3b39ac8eb45bc0c33187'
  'SKIP' '4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06dba9542340'
  'SKIP' '805482b436442a6786d270cacbab8f00529e06141b27b7fb01909b97ce4f3464'
  'SKIP' '4d214c4189e4dd934d47e869fa5721b2c33dbbbdea21f2fc7fa6df3f38c1dea2'
  'SKIP' '8065824f0255faa3901db8206e6f9423f6f8c07cec28bc6f2797c6c948310ece'
  'SKIP' 'ab826e84b8d48ec6eda3370065034dea8c006f6a946d78a9ba12bcb50e6d3c7a'
  'SKIP' '6ab79b70dc57737a1de378f212fcf8852d67fe6cf272d122a15b3ea13be77947'
  'SKIP' '36217ef7e32f40a180e3d79bd666b4dfdaed49dd381023a5fb765fd12d0092ce'
  'SKIP' '1276a0bb8fa12288ba6fa96597d28b40e74c44257c051d3bc02c2b049bb38210'
  'SKIP' '7b11d4242dab0921a7d54758ad3fe805153c979c144625fecde11735760f97df'
  'SKIP' 'e23ec747a06ffd3e94155046f40b6664ac152c9ee3c2adfd90353a7ccff24226'
  'SKIP' 'b1fbf809efe9f036939401e142631c201a53bcf43ec1696bd9f5290ba236a266'
  'SKIP' 'd939eada065dc827a9d4dbb55bd48533ad14c16e7f0a42e70147029c82a7707b'
  'SKIP' '8623b8651893e8c6aebfa45b6a90645a4f652f7b18189a0992a90d11ac2631f4'
  'SKIP' '0c1dcbb4f762513d021e1a282c0ac58c0a423642b3a6bf581cafb5414df4193e'
  'SKIP' '0b9d55610d8270e06c44f459d1e2b7918a5e673809c592abed9b9c600e33d95a'
  'SKIP' '6bfeaddd90ffda2f063492b092bfed925c4b8c701579baf4b1316e021470daac'
  'SKIP' '66401bb815e236cc6b2aacbbe23b61b286c1fe27a67902e7c0222cfe77b3dbab'
  'SKIP' 'ebee170bfe4c4dfc59521a101de651e5534f4dae889756a5c97ca9ea40d0c307'
  'SKIP' '848c9171212c998c069e6979a205a1a44fa3235a463696d62e24701c83596ce0'

  'f25c3e4304f9d627997cc8a5d9cf1e1b4f11347e0158c35139679886feff1090'
  'c32508dbfb5dab9cccbd71430c54e6273fbc979d0bfdc6438904b398d8dbfbf5'
  '1459f45b819fc11a02108949c60ef7a195820797894d0d0dad12b9b17c8a9cb3'
  'a20ab37e68c7e17897f1de0a2c0c16a1d09f0c3613927cbc055ef6a21a280d6c'
  'fd1615b7e2d64097232b03463db229966a05df2fdb75a4c17964abaa7b982738'
  #'d0a6f17123abfc72c0a93879244aa2a302563feb949513f32b34671836f52af5'
  '8b6e2ebaf9a60ccd5a04bcf44945830b262011e9fa88aa6b189b8776f9a2a76e'
  '4d1512b25ad40afef6172a5ceeb23c9a6e5a80f78aec0a334adc82f35f976978'
)
b2sums=(
  #'e68178d952b3afef526f99dda24def646ebefbf661200e7b57a7ea054c511075a1455e6456f3fbb0e4c1042660f716f92bcee990054dbe7c1ebc4185ce0e3899'
  '6e92d5575283812f61d38f0c5693125b972bff67c5de9a669961ae2767746005d299a48ece3a9994ef0785f6bfddf7c0bf0238d1b401904c4e0be805286d3fd6'
  'e3403092e7f713b28e4b0ff599655e3a2f778e9638103a40b26981dd49dd2e3259a848609240dc3b594cfaa46b6fec6bf7c455e0bb6cd533e6be0396e34e8378'
  '00d9bb759ca564b8c8401ab98e742da9112587c94409044f36bf536698c7326cfa9723c915187e36ac81eefd4b0b614d9f7de4e835684783f28547a20e9bbb5a'
  '6e9c05936617766db6470e0587e198dfed603571bbb37758b47ed1babb65ec70ea46b7d65cdd98447014ae4ceba5ca7551ef5dcab69cd005fc8f2f19ab0c485f'

  'SKIP' 'c5a8fdca7f2152033df6d2fa046d3fba98bbe988bd68da45132aa7248e6df18119ad7d07df08d0e6574a1b33a0cfc0105e60cc1aad3627e2984b7774c175137d'
  'SKIP' '8937b80585eddaa3e1f1ef948899d14a170308518c6fef9fe569560cdd870053776956743f796055f2119399b9ca6c0df12fedd789ae46324d071e5126c4e495'
  'SKIP' '0cf726841a837d9906d82a6216e65edad1e3e4a798ccd1ca3824c2098d0c45473854b8bf183c6e9ca70ba095752e77c4f5ef575d98c07243d609857214175f5e'
  'SKIP' '13a5db07d9c7249f1334a98eaa989de9793dbd7abead293f1461c69459816d0ca04055cc5f086afe472e07c854d693ea07a69884d7543c63e532c164e1722357'
  'SKIP' 'dedae58e413689de258f852c988a9a91d4cf14c9525f2619ca6155006ddc9b2262c8141ff995e4fc6ecceec383470e50d2fa0952d933db9b3957ce5c5b96f62e'
  'SKIP' '753c0e9c537644d1a12b4d38024c22952a19513791c3da6f955690c544e58964bacbdb579f94cd05910697fc31f77ed6553e5ad3b111bbdfebeea8d2a4fa19f5'
  'SKIP' '39891362f2a4bc249f5d943e3ded48d2add9cd9c0ee3c085d7fbefbfbc784f1e029308d9486cd35a6c03b77243077dc1196c75980faeea0d4319cee057509b6a'
  'SKIP' 'd9f52da9092d0723c862ebbb2dc351cad0670be6872f691b4c9f36faf06803f072720ebd04f06745c355d807991b38312cc830b12d6d3f50b0574bb7325340b7'
  'SKIP' '611f33e134c2d459c9af1695c0a4d033df93afc986e91a17fceb0dd293fb4ffbd5f7475ef571d36cecf49da6c3fdb3801c98d7f72f9dd1c39e42502f649b192f'
  'SKIP' '217c85f7351a7c57a2684da2c7c81a32094187b3812dee628b327a5b2faca57235abc54d033c586c071c8bfa0c7360bb28761aaa42fe18414e388db704d81231'
  'SKIP' '849e8c909493bf76ce9749b9dcb1967180223b91a41d690bc477e78557d4e24949c9a8d8276d824af8c54ad62bc4a998e7a8efbc0bbd2008a4f64f51a7690d48'
  'SKIP' '1dddbbc0d14fe9551fd2eb59a47521ac7eaf783b8ebf5e89d3e82b38f3f1539c14626a86b6530a47e5a967d47a04db7a3daef568eb5164f42d98b6826346cffe'
  'SKIP' '9f33a710a3e567d92f56091920643f5ef2ddf2ad52acb5d9ee78496a7b5dbc10da5a51c72cf2a6f66d543a531d3138a49767c98501ae4e885e03988d2ccfbb59'
  'SKIP' '7ede723121ff8df3908674631ceaec75797d91ccd6f1df4afd7187878adbb8d99c9e8a3b11c6027703b2e8d06785299d93d8649f3eda7f356dd2a6734d99d05b'
  'SKIP' 'fc17efbc8b2e54f2da61384097dcb3b8f595f27f7853f56cef034913f6b46a718113af0fe66f0e3b0afd184ec506b35f3b74172926cf727ddc061f567d54fa4c'
  'SKIP' '9f6e3c595f843c239b57f14e26685e9856cffa10189b75627fee4dc82970a9b5f2c6f42e145d1c1042d934bd4db0334014c046450f7594d621b378d951546d5d'
  'SKIP' '82dbbe3b5fe79f623c74fb81a4c4372b14e7d765f0e9af3d76a6c4bde9899007c85c8af70dfd9facc06c37a9c8d03a4597ec87b2d053585ccbc2287332b27e70'
  'SKIP' '131a1b09954fcc505cb3976a78ed6fa2cd011b03d525f55f1101cbf2b1a467436eae6530c8cac09d0b2ace2606852781bd158335d2b3e7808d808de9a2d03403'
  'SKIP' '765e0f216dde8d375e19ca5b1cd3e051b182cc058e16a1307e82e60bac06de6919d18b6506cb14b3ff5e29c2730ef7d1c6e0d86c3bbf6b8148bbf683048eb99b'
  'SKIP' 'fe5a9072161cf758221974f1f59b1a198b2c62b2317360cdb8b2516cfac8eecf40cd5e69bb186053555688a167cabae3a3227b9079c360d238b12c229ff2ddc1'

  'f4a836270fb15b419f05db590c0f95f95c171addf85bf7324257690df29eac9139e53c0b73dd74b56921cc0c238e92bb0f3ba3b0969fac9c5cc90caf2cad0384'
  '26edd385582537da6ef2c937aae70122fb6129bc18f43aca155bec010007da63d121a6aa07363c6d35bd7c6b8c799c1e0429d34787d4cc86125c5d176b5678cb'
  'de6d1a7e4c1da3817cd0de12ec5570a71de14bd57b9233d87068338db8211c6fb099178ca7e73cf015cabec93b308a5949bbabdd34e51027c6a940b322c02d9d'
  '00a637dde35e9df1e8852ea647fc9af043efb9c9adae8f2904dbf3692a2ab09ecbbd75147314d8a41802b5c68fce515247c8d21bc7ba28663e768ee9adbacd8d'
  '29b134cd1ef57ae3a9c46985ec1221709def57472c28f1e737a3d4f27c105c4bc22d6cccc48c0f4a0677460277ce57c3a0d381368d99c8a1f4dd1bf7e7b41970'
  #'8015b14bd00f412c0935961fce5f9671fe3d51256a70eacbf61573c4c8ae35f3cd81372681fe406395ca571363e9f9a9c5b40969e79513f22d808e677a841ae7'
  '6e473abbda7e77fb399b1b5ff0a50efa6b324a4b9f8e0904a0ebca1258e9a84be840465ef1ad716d968fbb580e7bb77d4af2f7dbbbad258749eb9025a7cbc899'
  'b8e3d23c3a7617e231246465a264708789152abfc73203d901d64290701fabffff59d600fc8ecb1ec5d507313125d17c4040ec769474f4d58ea159d9cafc3910'
)
validpgpkeys=(
  108F66205EAEB0AAA8DD5E1C85AB96E6FA1BE5FE  # Rust Language (Tag and Release Signing Key) <rust-key@rust-lang.org>
)
_rust_llvm="1.74:17;1.75:17;1.76:17;1.77:18;1.78:18;1.79:18;1.80:18;1.81:18;1.82:19;1.83:19;1.84:19;1.85:19;1.86:20;1.87:20;1.88:21;1.89:21;1.90:21;1.91:21;1.92:21;1.93:21"  # >=1.88:21

# Make sure the duplication in rust-wasm is found
COMPRESSZST+=(--long)

_CARCH="$(set -eo pipefail;echo ${CARCH}|sed 's/i[3-4]86/i586/')"
TARGET="${_CARCH}-unknown-linux-gnu"
[ "${_CARCH%_64*}"    = "${_CARCH}" ] || TARGET32="i586-unknown-linux-gnu"
[ "${_CARCH#aarch}"   = "${_CARCH}" ] || TARGET32="arm-unknown-linux-gnueabihf"  # ?
[ "${_CARCH#loong}"   = "${_CARCH}" ] || TARGET="${_CARCH/loong/loongarch}64-unknown-linux-gnu"  # TARGET32="loongarch32-unknown-none"
[ "${_CARCH#mips}"    = "${_CARCH}" ] || TARGET="${_CARCH}-unknown-linux-gnuabi64" TARGET32="${_CARCH/64/}-unknown-linux-gnu"
#[ "${_CARCH#powerpc}" = "${_CARCH}" ] || TARGET32="${_CARCH/64/}-unknown-linux-gnu"
[ "${_CARCH#riscv}"   = "${_CARCH}" ] || TARGET="${_CARCH}gc-unknown-linux-gnu" TARGET32="${TARGET/64/32}"
[ "${_CARCH#sparc}"   = "${_CARCH}" ] || TARGET32="${_CARCH/64/}-unknown-linux-gnu"
[ "${_CARCH#arm}"     = "${_CARCH}" ] || TARGET="${_CARCH%h}-unknown-linux-gnueabi$([ "${CARCH%h}" = "${CARCH}" ] || echo hf)"
export TARGET TARGET32 TARGET_MUSL="${TARGET/-gnu/-musl}"

prepare() {
  patch -Np1 -d "${srcdir}/mrustc" -i "${srcdir}/mrustc-cstdint.patch"
}

_system_dylib() {
  _rustc_ver="${1:-1.74.0}"

  # disable default static linking on linux targets
  grep -nr 'crt_static_default\s*=\s*true' \
    "${srcdir}/rustc-${_rustc_ver}-src/compiler/rustc_target/" | awk -F: '/linux/{print $1}' | \
    sort -u | xargs -r -- sed -i 's@\(\s*\)\(\S*crt_static_default\s*=\s*true\)@\1//\2@g'

  grep -nr 'objects_self_contained' "${srcdir}/rustc-${_rustc_ver}-src/compiler/rustc_target/" | \
    awk -F: '/musl/{print $1}' | sort -u | xargs -r -- sed -i '/self_contained/d'  # musl-specific

  patch -Np1 -d "${srcdir}/rustc-${_rustc_ver}-src" -i "${srcdir}/musl-dylib.patch"

  ## can't remove llvm, because musl targets require CRTs, rendering this effort a foregone conclusion https://github.com/rust-lang/rust/pull/71769
  #rm -rf "${srcdir}/rustc-${_rustc_ver}-src/src/llvm-project"
}

_pick() {
  local p="${1#${srcdir}/}" f d; shift
  for f; do
    d="${srcdir}/${p}/${f#${srcdir}/dest-rust/}"
    mkdir -p "${d%/*}"
    mv "${f}" "${d}"
    rmdir -p --ignore-fail-on-non-empty "${f%/*}"
  done
}

build() {
  mkdir -p "${srcdir}/bin/"; export PATH="${srcdir}/bin${PATH:+:${PATH}}" WASI_SDK_PATH=/usr

  pushd "${srcdir}/mrustc"
  export RUSTC_VERSION=1.74.0 MRUSTC_TARGET_VER=1.74 STD_ENV_ARCH="${CARCH}" PARLEVEL="$(nproc)"
  command -v ccache &>/dev/null && export MRUSTC_CCACHE=1 ||:
  make --trace bin/mrustc; make --trace -C tools/minicargo/; cp bin/minicargo bin/mrustc "${srcdir}/bin/"
  popd

  tar -xJf "rustc-${RUSTC_VERSION}-src.tar.xz"
  mkdir -p "${srcdir}/rustc-${RUSTC_VERSION}-src/mrustc-stdlib/"
  cp "${srcdir}/Cargo.toml" "${srcdir}/rustc-${RUSTC_VERSION}-src/mrustc-stdlib/Cargo.toml"
  echo '#![no_core]' >"${srcdir}/rustc-${RUSTC_VERSION}-src/mrustc-stdlib/lib.rs"
  patch -Np0 -d "${srcdir}/rustc-${RUSTC_VERSION}-src" -i "${srcdir}/mrustc/rustc-${RUSTC_VERSION}-src.patch"

  _system_dylib "${RUSTC_VERSION}"

  export MRUSTC_LIBDIR="${srcdir}/rustlib-${RUSTC_VERSION}"
  VENDOR_DIR="${srcdir}/rustc-${RUSTC_VERSION}-src/vendor"
  OVERRIDES="${srcdir}/mrustc/rustc-${RUSTC_VERSION}-overrides.toml"

  minicargo --output-dir "${MRUSTC_LIBDIR}" --vendor-dir "${VENDOR_DIR}" -j $(nproc) \
    --script-overrides "${srcdir}/mrustc/script-overrides/stable-${RUSTC_VERSION}-linux/" \
    --manifest-overrides "${OVERRIDES}" "${srcdir}/rustc-${RUSTC_VERSION}-src/mrustc-stdlib"
  minicargo --output-dir "${MRUSTC_LIBDIR}" --manifest-overrides "${OVERRIDES}" -j $(nproc) \
    "${srcdir}/mrustc/lib/libproc_macro"

  _old_ld_library_path="${LD_LIBRARY_PATH}"
  export LLVM_CONFIG=/usr/bin/llvm-config-17 CFG_RELEASE_CHANNEL="stable" \
    LLVM_LINK_SHARED=1 REAL_LIBRARY_PATH_VAR="LD_LIBRARY_PATH" \
    LD_LIBRARY_PATH="${MRUSTC_LIBDIR}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" \
    CFG_RELEASE="${RUSTC_VERSION}" CFG_VERSION="${RUSTC_VERSION}-stable-mrustc" \
    RUSTC_INSTALL_BINDIR="${srcdir}/bin" CFG_COMPILER_HOST_TRIPLE="${TARGET}"

  RUSTC_BOOTSTRAP=1 minicargo --vendor-dir "${VENDOR_DIR}" --manifest-overrides "${OVERRIDES}" \
    --output-dir "${srcdir}/rustc-${RUSTC_VERSION}-src/build" --features llvm -j $(nproc) \
    -L "${MRUSTC_LIBDIR}" "${srcdir}/rustc-${RUSTC_VERSION}-src/compiler/rustc"
  :||minicargo --vendor-dir "${VENDOR_DIR}" --manifest-overrides "${OVERRIDES}" -j $(nproc) \
    --output-dir "${srcdir}/rustc-${RUSTC_VERSION}-src/build" --features llvm \
    -L "${MRUSTC_LIBDIR}" "${srcdir}/rustc-${RUSTC_VERSION}-src/compiler/rustc_driver"
  unset LLVM_CONFIG LLVM_LINK_SHARED REAL_LIBRARY_PATH REAL_LIBRARY_PATH_VAR
  export LD_LIBRARY_PATH="${_old_ld_library_path}"
  minicargo --vendor-dir "${VENDOR_DIR}" --manifest-overrides "${OVERRIDES}" -j $(nproc) \
    --output-dir "${srcdir}/rustc-${RUSTC_VERSION}-src/build" --features vendored-openssl \
    -L "${MRUSTC_LIBDIR}" "${srcdir}/rustc-${RUSTC_VERSION}-src/src/tools/cargo"

  cp "${srcdir}/rustc-${RUSTC_VERSION}-src/build/rustc_main" "${srcdir}/bin/rustc"
  cp "${srcdir}/rustc-${RUSTC_VERSION}-src/build/cargo"      "${srcdir}/bin/cargo"
  rm -rf "${srcdir}/rustc-${RUSTC_VERSION}-src/build/"

  # metapackage for std+panic_unwind+test
  # MRUSTC_PATH basename has to be either of ["rustc", "rust.exe"], due to minicargo-hardcoded condition
  _LIBDIR="${srcdir}/lib/rustlib/${TARGET}/lib"; mkdir -p "${_LIBDIR}"
  MRUSTC_PATH="${srcdir}/bin/rustc" minicargo --vendor-dir "${VENDOR_DIR}" -j $(nproc) \
    --script-overrides "${srcdir}/mrustc/script-overrides/stable-${RUSTC_VERSION}-linux/" \
    -L "${MRUSTC_LIBDIR}" --output-dir "${_LIBDIR}" "${srcdir}/rustc-${RUSTC_VERSION}-src/library/sysroot"

  # can't escape file templating…
  CARGO_HOME="${srcdir}/.cargo"; mkdir -p "${CARGO_HOME}"
  cat <<EOF >"${CARGO_HOME}/config"
[source.crates-io]
replace-with = "vendored-sources"
[source.vendored-sources]
directory = "${VENDOR_DIR}"
EOF
  ln -s config "${CARGO_HOME}/config.toml"

  export RUSTC="${srcdir}/bin/rustc" RUSTC_BOOTSTRAP=1 CARGO_HOME="${CARGO_HOME}" \
    LLVM_CONFIG=/usr/bin/llvm-config-17 LLVM_LINK_SHARED=1 REAL_LIBRARY_PATH_VAR="LD_LIBRARY_PATH" \
    RUSTFLAGS='-Z force-unstable-if-unmarked -C link_args=-Wl,-rpath,\$ORIGIN/../lib -C target-feature=-crt-static'

  cargo build --manifest-path "${srcdir}/rustc-${RUSTC_VERSION}-src/library/sysroot/Cargo.toml" \
    --target "${TARGET}" -j$(nproc) --release --verbose --features panic-unwind

  cargo build --manifest-path "${srcdir}/rustc-${RUSTC_VERSION}-src/compiler/rustc/Cargo.toml" \
    --target "${TARGET}" -j$(nproc) --release --verbose --features llvm

  cp "${srcdir}/rustc-${RUSTC_VERSION}-src/target/${TARGET}/release/rustc-main" "${srcdir}/bin/rustc"
  cp "${srcdir}/rustc-${RUSTC_VERSION}-src/target/${TARGET}/release/librustc_driver.so" "${srcdir}/lib"
  export LD_LIBRARY_PATH="${srcdir}/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
  cargo build --manifest-path "${srcdir}/rustc-${RUSTC_VERSION}-src/src/tools/cargo/Cargo.toml" \
    --target "${TARGET}" -j$(nproc) --release --verbose

  unset LLVM_CONFIG LLVM_LINK_SHARED REAL_LIBRARY_PATH REAL_LIBRARY_PATH_VAR

  export RUST_BACKTRACE=full; _old_path="${PATH}"
  for i in 1.74.0:0 1.75.0:116881 1.76.0:118703 1.77.2:118703 1.78.0:121754 1.79.0:123711 \
    1.80.1:123711 1.81.0:127866 1.82.0:129295 1.83.0:131075 1.84.1:131075 1.85.1:134650 \
    1.86.0:136941 1.87.0:138986 1.88.0:140732 1.89.0:142379 1.90.0:144675 1.91.1:146435 \
    1.92.0:147888 1.93.1:148911; do
    _major="${i%.*}";_major="${_major#*.}"
    tar -C "${srcdir}" --strip-components 2 -xJ "rustc-${_prev:-${RUSTC_VERSION}}-${TARGET}/rustc/"{bin,lib} \
      -f "${srcdir}/rustc-${_prev:-${RUSTC_VERSION}}-src/build/dist/rustc-${_prev:-${RUSTC_VERSION}}-${TARGET}.tar.xz" || \
      cp "${srcdir}/rustc-${_prev:-${RUSTC_VERSION}}-src/target/${TARGET}/release/rustc-main" "${srcdir}/bin/rustc"
    tar -C "${srcdir}" --strip-components 2 -xJ "cargo-${_prev:-${RUSTC_VERSION}}-${TARGET}/cargo/bin" \
      -f "${srcdir}/rustc-${_prev:-${RUSTC_VERSION}}-src/build/dist/cargo-${_prev:-${RUSTC_VERSION}}-${TARGET}.tar.xz" || \
      cp "${srcdir}/rustc-${_prev:-${RUSTC_VERSION}}-src/src/tools/cargo/target/${TARGET}/release/cargo" "${srcdir}/bin/cargo"
    tar -C "${srcdir}" --strip-components 2 -xJ "rust-std-${_prev:-${RUSTC_VERSION}}-${TARGET}/rust-std-${TARGET}/lib" \
      -f "${srcdir}/rustc-${_prev:-${RUSTC_VERSION}}-src/build/dist/rust-std-${_prev:-${RUSTC_VERSION}}-${TARGET}.tar.xz" ||:

    _llvm_ver=$(set -eo pipefail;echo ${_rust_llvm}|tr ';' '\n'|grep "^${i%.*}:");_llvm_ver="${_llvm_ver#*:}"
    export PATH="/usr/lib/llvm${_llvm_ver}/bin${PATH:+:${PATH}}"

    tar -xJf "${srcdir}/rustc-${i%:*}-src.tar.xz"; _system_dylib "${i%:*}"
    pushd "${srcdir}/rustc-${i%:*}-src"

    ## linking legend
    #--set=target.${TARGET}.crt-static=false --set=target.${TARGET}.llvm-libunwind=no  # == system libgcc_s.so
    #--set=target.${TARGET}.crt-static=false --set=target.${TARGET}.llvm-libunwind=in-tree  # == in-tree libunwind
    #--set=target.${TARGET}.crt-static=false --set=target.${TARGET}.llvm-libunwind=system  # == system libunwind.so
    #--set=target.${TARGET}.crt-static=true  # && libc=musl   # --set=target.${TARGET}.llvm.libunwind=system == system else in-tree libunwind.a
    #--set=target.${TARGET}.crt-static=true  # && libc=glibc  # --set=target.${TARGET}.llvm-libunwind has no effect, use system libgcc_eh.a

      #--set=target.wasm32-unknown-unknown.linker=/usr/lib/llvm${_llvm_ver}/bin/lld
    _tools=cargo _targets="${TARGET}" _conf_opts="
      --set=target.${TARGET}.cc=/usr/bin/gcc --set=target.${TARGET}.cxx=/usr/bin/g++
      --set=target.${TARGET}.ar=/usr/bin/gcc-ar --set=target.${TARGET}.ranlib=/usr/bin/gcc-ranlib
      --set=target.${TARGET}.llvm-config=/usr/bin/llvm-config-${_llvm_ver}
      --set=target.${TARGET}.crt-static=false --set=target.${TARGET}.llvm-libunwind=no"

    # could always just `ln -sf ../../libunwind.{a,so} /usr/lib/musl/lib/` to cheat, but should rebuild libunwind against musl
    _targets="${_targets},${TARGET_MUSL}" _conf_opts="${_conf_opts}
      --set=target.${TARGET_MUSL}.cc=/usr/bin/musl-gcc --set=target.${TARGET_MUSL}.cxx=/usr/bin/g++
      --set=target.${TARGET_MUSL}.ar=/usr/bin/gcc-ar --set=target.${TARGET_MUSL}.ranlib=/usr/bin/gcc-ranlib
      --set=target.${TARGET_MUSL}.sanitizers=false --set=target.${TARGET_MUSL}.musl-root=/usr/lib/musl
      --set=target.${TARGET_MUSL}.crt-static=false --set=target.${TARGET_MUSL}.llvm-libunwind=in-tree"  # --set=target.${TARGET_MUSL}.llvm-libunwind=system"

    # these invoke llvm build, nah…
    #[ "${_major}" -lt "83" ] || _conf_opts="--set=dist.vendor=false"
    #[ "${_major}" -lt "88" ] || _conf_opts="--set=gcc.download-ci-gcc=false"

    if command -v ccache &>/dev/null; then
      [ "${_major}" -lt "86" ] && _conf_opts="${_conf_opts} --set=llvm.ccache=true" || _conf_opts="${_conf_opts} --set=build.ccache=true"
    fi

    _optimized_compiler_builtins_ver="91"  #_optimized_compiler_builtins_ver="86"  #== boolean type
    [ -z "${_prev}" ] || _conf_opts="${_conf_opts} --enable-profiler"
    [ "${_major}" -lt "77" ] || _conf_opts="${_conf_opts} --set=change-id=${i#*:}"
    [ "${_major}" -lt "${_optimized_compiler_builtins_ver}" ] || _conf_opts="${_conf_opts}
      --set=target.${TARGET}.optimized-compiler-builtins=$(/usr/lib/llvm${_llvm_ver}/bin/clang -print-resource-dir)/lib/linux/libclang_rt.builtins-${TARGET%%-*}.a"

    #if [ -n "${TARGET32}" ]; then
    if [ "${CARCH%_64*}" != "${CARCH}" ]; then
      _targets="${_targets},${TARGET32}" _conf_opts="${_conf_opts}
        --set=target.${TARGET32}.cc=/usr/bin/gcc --set=target.${TARGET32}.cxx=/usr/bin/g++
        --set=target.${TARGET32}.ar=/usr/bin/gcc-ar --set=target.${TARGET32}.ranlib=/usr/bin/gcc-ranlib
        --set=target.${TARGET32}.crt-static=false --set=target.${TARGET32}.llvm-libunwind=no"
      [ "${_major}" -lt "${_optimized_compiler_builtins_ver}" ] || _conf_opts="${_conf_opts}
        --set=target.${TARGET32}.optimized-compiler-builtins=$(/usr/lib/llvm${_llvm_ver}/bin/clang -print-resource-dir)/lib/linux/libclang_rt.builtins-i386.a"  # ${TARGET32%%-*} isn't really cutting it here, but this seems like a x86 edge case…?
    fi

    [ "${_major}" -lt "78" ] || _extra_targets="${_extra_targets} wasm32-wasip1" \
      _target_wasi_preview="wasm32-wasip1-threads wasm32-wasip2"
    [ "${_major}" -lt "84" ] || _extra_targets="${_extra_targets} wasm32v1-none"
    #[ "${_major}" -lt "87" ] && _conf_opts="--set=rust.description='Arch Linux Rust ${i%:*}-r${pkgrel}'" || _conf_opts="--set=build.description='Arch Linux Rust ${i%:*}-r${pkgrel}'"

    if [ "${pkgver}" != "${i%:*}" ]; then
      _conf_opts="${_conf_opts} --set=rust.incremental=true" _target_spec="${TARGET}" _xcmd="dist"
    else
      # apply distro patches to target toolchain version
      for src in "${source[@]}"; do
        local src="${src%%::*}";src="${src##*/}"
        [[ "${src}" != 0*.patch ]] || patch -Np1 -d "${srcdir}/rustc-${pkgver}-src" -i "${srcdir}/${src}"
      done

      # set target.${t%:*}.crt-static=false on build and host targets?
      for t in wasm32-unknown-unknown ${_target_wasi_preview:-wasm32-wasi-preview1-threads wasm32-wasi-preview2} ${_extra_targets}; do
        _targets="${_targets},${t}" _conf_opts="${_conf_opts}
          --set=target.${t}.linker=/usr/bin/wasm-ld
          --set=target.${t}.sanitizers=false --set=target.${t}.profiler=false
          --set=target.${t}.cc=/usr/lib/llvm${_llvm_ver}/bin/clang
          --set=target.${t}.cxx=/usr/lib/llvm${_llvm_ver}/bin/clang++
          --set=target.${t}.ar=/usr/lib/llvm${_llvm_ver}/bin/llvm-ar
          --set=target.${t}.ranlib=/usr/lib/llvm${_llvm_ver}/bin/llvm-ranlib"
          #--set=target.${t}.default-linker=wasm-ld
      done
      for t in ${_target_wasi_preview:-wasm32-wasi-preview1-threads wasm32-wasi-preview2} ${_extra_targets}; do
        _conf_opts="${_conf_opts} --set=target.${t}.wasi-root=/usr/share/wasi-sysroot"
      done
      _xcmd="install" _target_spec="${_targets}"
      _conf_opts="${_conf_opts} --set=rust.incremental=false --set=rust.remap-debuginfo=true
        --set=rust.debuginfo-level=2 --set=rust.debuginfo-level-std=2"
      _tools="${_tools},clippy,rustdoc,rustfmt,rust-analyzer,proc-macro-srv,analysis,src"
    fi

      # --dist-compression-formats=gz flops when combining installers, so welp…
    ./configure --disable-docs --release-channel="stable" --python="python3" \
      --dist-compression-formats=xz --set="dist.compression-profile=fast" \
      --enable-llvm-link-shared --enable-option-checking --enable-vendor --enable-locked-deps \
      --enable-extended --tools="${_tools}" --prefix="/usr" --target="${_target_spec:-${_targets}}" \
      --set="build.build-stage=2" --set="build.doc-stage=2" --set="build.test-stage=2" \
      --enable-local-rust --set="llvm.download-ci-llvm=false" --set="rust.download-rustc=false" \
      --set="rust.deny-warnings=false" --set="rust.lto=off" --set="rust.lld=false" \
      --set="rust.codegen-units=1" --set="rust.codegen-units-std=1" \
      $(echo ${_conf_opts} | sed -z 's/[[:space:]][[:space:]]*/ /g')  # --build=… --host=…?
    DESTDIR="${srcdir}/dest-rust" python3 ./x.py ${_xcmd} --jobs $(nproc) -vv
    popd

    #rm -rf "${srcdir}/rustc-${_prev_prev}-src";_prev_prev="${_prev}" _prev="${i%:*}"
    rm -rf "${srcdir}/rustc-${_prev}-src";_prev="${i%:*}"
    export PATH="${_old_path}" LD_LIBRARY_PATH="${_old_ld_library_path}"
  done

  # delete unnecessary files, e.g. files only used for the uninstall script
  rm -rf "${srcdir}/dest-rust/usr/lib/rustlib/"{components,install.log,rust-installer-version,uninstall.sh} \
   "${srcdir}/dest-rust/etc/target-spec-json-schema.json" "${srcdir}/dest-rust/usr/lib/rustlib/manifest-"*

  # licenses for main rust package
  local ldir="usr/share/licenses/rust" f d
  mkdir -p "${srcdir}/dest-rust/${ldir}"
  for f in $(ls -1 "${srcdir}/dest-rust/usr/share/doc/"*/{COPYRIGHT,LICENSE}*); do
    d="${f%/*}"
    case "${f}" in
      */LICENSE-APACHE) rm -rf "${srcdir}/dest-rust/${f}" ;;
      *) mv "${f}" "${srcdir}/dest-rust/${ldir}/${f##*/}.${d##*/}" ;;
    esac
    rmdir -p --ignore-fail-on-non-empty "${f%/*}"
  done

  # rustbuild always installs copies of the shared libraries to /usr/lib,
  # overwrite them with symlinks to the per-architecture versions
  mkdir -p "${srcdir}/dest-rust/usr/lib"
  for i in "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET}/lib/"*.so; do
    ln -sf "${i#${srcdir}/dest-rust/usr/lib/}" "${srcdir}/dest-rust/usr/lib/"
  done

  # Symlink the "self-contained" linker to our system lld
  mkdir -p "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET}/bin/gcc-ld"
  ln -sf ../../../../bin/lld          "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET}/bin/rust-lld"
  ln -sf ../../../../bin/llvm-objcopy "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET}/bin/rust-objcopy"
  for i in ld.lld ld64.lld lld-link wasm-ld; do
    ln -sf "../../../../../bin/${i}" "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET}/bin/gcc-ld/"
  done

  _pick "${srcdir}/dest-musl" "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET_MUSL}"
  _pick "${srcdir}/dest-wasm" "${srcdir}/dest-rust/usr/lib/rustlib/wasm32"{,v1}-*
  _pick "${srcdir}/dest-src"  "${srcdir}/dest-rust/usr/lib/rustlib/src"

  [ "${CARCH%_64*}" = "${CARCH}" ] || _pick "${srcdir}/dest-target32" "${srcdir}/dest-rust/usr/lib/rustlib/${TARGET32}"
}

_install_licenses() {
  install -Dt "${pkgdir}/usr/share/licenses/${pkgname}" -m644 \
    "${srcdir}/rustc-${pkgver}-src/"{COPYRIGHT,LICENSE-MIT}
}

package_rust() {
  optdepends=(
    'gdb: rust-gdb script'
    'lldb: rust-lldb script'
  )
  provides=(
    cargo
    rustfmt
  )
  conflicts=(
    cargo
    'rust-docs<1:1.56.1-3'
    rustfmt
  )
  replaces=(
    cargo
    cargo-tree
    'rust-docs<1:1.56.1-3'
    rustfmt
  )

  cp -a dest-rust/* "${pkgdir}"
}

package_rust-musl() {
  pkgdesc="Musl target for Rust"
  depends=(rust)

  cp -a "${srcdir}/dest-musl/"* "${pkgdir}"
  _install_licenses
}

package_rust-src() {
  pkgdesc="Source code for the Rust standard library"
  depends=(rust)

  cp -a "${srcdir}/dest-src/"* "${pkgdir}"
  _install_licenses
}

package_rust-wasm() {
  pkgdesc="WebAssembly targets for Rust"
  depends=(rust wasm-component-ld)

  cp -a "${srcdir}/dest-wasm/"* "${pkgdir}"
  _install_licenses
}

package_lib32-rust-libs() {
  [ "${CARCH%_64*}" != "${CARCH}" ] || return 0
  pkgdesc="32-bit target and libraries for Rust"
  arch=(x86_64)
  depends=(lib32-gcc-libs lib32-glibc rust)
  provides=(lib32-rust)
  conflicts=(lib32-rust)
  replaces=(lib32-rust)

  cp -a "${srcdir}/dest-target32/"* "${pkgdir}"
  _install_licenses

  mkdir -p "${pkgdir}/usr/lib32"
  for i in "${pkgdir}/usr/lib/rustlib/${TARGET32}/lib/"*.so; do
    ln -sf "../${i#${pkgdir}/usr/}" "${pkgdir}/usr/lib32/"
  done
}

# vim:set ts=2 sw=2 et:

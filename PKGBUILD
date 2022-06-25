# Maintainer: zer0def <zer0def@github>
pkgbase=linux-kata
pkgname=(
  linux-kata
  linux-kata-btrfs
  linux-kata-anbox
)
_kata_version="${KATA_VERSION:-2.4.3}"
#_kernel_version="${KERNEL_VERSION:-5.18.6}"
#_kernel_version="${KERNEL_VERSION:-5.17.15}"
#_kernel_version="${KERNEL_VERSION:-5.16.20}"
_kernel_version="${KERNEL_VERSION:-5.15.55}"
pkgver="${_kernel_version}~${_kata_version}"
pkgrel=1
pkgdesc="Kata Containers container kernel image"
arch=('x86_64')
url="https://katacontainers.io/"
license=('GPL2')
validpgpkeys=('647F28654894E3BD457199BE38DBBDC86092693E')
makedepends=('bc')

source=(
  "https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-${_kernel_version}.tar.xz"
  "https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-${_kernel_version}.tar.sign"
  "kata-containers-${_kata_version}.tar.gz::https://github.com/kata-containers/kata-containers/archive/${_kata_version}.tar.gz"
  "config.btrfs"
  "config.android-base"
  "config.anbox"

  # https://lkml.org/lkml/2021/1/23/75
  "0001-config-preemption.diff"  # 5.4
  #"0002-remove-ashmem.diff"
)
sha512sums=(
  #"${KERNEL_SHA512:-98069269ebb1f870c9df21c973f1f846d29ac4297a366775ff59fd2d3bc86e2d023b51312f024a8394e7b46210a4e6cab4e57394351477e535a16957033d33fc}"
  #"${KERNEL_SHA512:-0239fc941bd3dee4969f87d5a3bd90b6a6b5ebaed950a17a33e64ac6a110d3b9f7e287a134098403718c764b8dc78b72ed7979f820a20eeb3136f22d743c3aa1}"
  #"${KERNEL_SHA512:-21c55ab96ac571a16a4731089625f24918ec410849a8351304894bbb2b47f336586cd9d8f39a6b2e9b920ef0142dfbf758075dd6da606c3b9e936b5960cdc7bd}"
  "${KERNEL_SHA512:-0407603bed7b2b447af883f952bd1a1422527b4c8f262155bf495e3a375583909fc14dfbe29f5dcaae60580964e7c431f65ee4e7c6c06c1fb5198f386072dfef}"
  "SKIP"
  "${KATA_SHA512:-218e0d0cde76a3f54bcf933e030df5310c8a144e0622eef1c0b02b33879f1b36de6f371cb7727710f482bde3994cfe723928d4ea68ce48236a61640b679a1fb2}"
  "ed3011a9fee8dd2fb16a004305b23e6b79158afcfe6d88ccdf471b177a8fbe4a9da92924e437284de83a69cebdf5cca2312b614906c404c0d22692aeca491510"
  "aca5da45b057e9afda63c6fb15873053ed046f309bbd33f1d88578012613399cc504186b79842ad35ba29af9f3449120eb4d3d29612fe33efb980a8f9785631c"
  "6e1d670dc20c2fbaab781eef09eb7eee2f3e9833371a0bf56dfdd613fb42f5b710728ad47277978828107f1b2459d169e3d388ef194573b44ae2fbaa02d9c455"

  "76c27fe0e2b84a9ae0d4b0e2a96ef0c07777811991b4aae21c88494b91fa2837fb67be335cebf4874e5e3235b5ba4641ec4544f9e055765e2dcf399d9d875e8c"
  #"ccf07f50968a06460d7e84adde9d9599ad287ad4e0e1e1abd074c193c3387171cf987cbe16312723220ccee7a037d85f8f18b41560e6283825a6e612245fa9a0"
)
b2sums=(
  #"${KERNEL_B2:-2a13d888a259c6f30d8711c616751e9a978ffeba7da6167d5948075044988b5c4ebab1ee1b024e86587da7edd82cfead2a66303614a1b8ef56bf3c73c1a6809f}"
  #"${KERNEL_B2:-14e42132958581b1d4ec01c9095d61ca5539ed894bf6c6eccf4a984cee496affe3a0f12383abbb1df46f55c1fcb667154ebf1f4f460f96b9d5166991bcb68a63}"
  #"${KERNEL_B2:-798baf7051b3f20d34741067769c6a59a04ba922468789e61ce5a6c4d0c3d336a0f3bacc9f482827722e7577828140772e5cbd76b844cc836d4d6b26e0c154ec}"
  "${KERNEL_B2:-d69cb8bd89d7e867c5f1e507bcea1ad4b6d3e5e9151e72ede4b051e2292eaa7f07df0c6479d65d9ec4be76b37604a154d3962e21b861ad2dc0e14ca1fe01f9e9}"
  "SKIP"
  "${KATA_B2:-48147c28f575518d2bd53bdeabe464665a810755a08404fc0cfa0f9e5f8fb43d0da02a4d793e95e2d5068d8d26a07606eca6889c1e6274ea227e0c4baa649342}"
  "803eb3483722e7eab50102b8d0f9dc1ea7f38781d1f61e5998137469e019cb49d944a30c97f465c5b03916322955fcf29629af27ac47f2e19210bee3d63c488e"
  "703e925ac842463f17c1fdb5ab4079ef5ef5eff1a39cb300383554f9fb1ae907f8fa4abf3c60962804fbcb88f359b3f43fe1c259aededdd5efe131c3e5728e6b"
  "bc728bf1301d4162d867b7b5f4931027519820d0ce2f9bbc504a2839b28ebf4a8c4c238a5c8457eeb025ef2ba306c7049f44ad64aa783e60c7bddd6f0f4236b2"

  "919319ddcaac3f7c5b1c1998fced9920f3e7e9d4660c83e380495fc3a14d5f4e82736ac9435fdb78512576f1d90f80b1ad017529f2b42e013b844ed3ec4bc99f"
  #"340b4a3fd88255c335b882b1fb0688d505b93d235c9685bf04c477f62d12c263b94fedd7fd02df2dab04d47ea9dc7d5257ba9ea3e12991489c6ba78720d60eda"
)
b3sums=(
  #"${KERNEL_B3:-3aa9266e1ba1b3038abb28f967205fd77dbcf76e22bcc4dec941a5f78f2d5749}"
  #"${KERNEL_B3:-e4d6e19dd2e4d17d509510ad7f0de2af4018b3d6a3993a4dcd2005b8a3af3d84}"
  #"${KERNEL_B3:-81b58361d0b12963479b011809ed6e408e26cac0a54b829879dc29f59eb7a210}"
  "${KERNEL_B3:-498bc83a92fab02ecba5e462c7bb96c00ba4f84581ebaa26a96766ce12bad603}"
  "SKIP"
  "${KATA_B3:-fc76b8a5ccdaa3dd1c1e10cae0ed119c0a5c8f43cc7f2e0723f3ac0810009947}"
  "b10616d6501651063718fbc34e008e1ddae777b1588712d50b85306af4a3b417"
  "61e682e0012deba1082bcbf60f0e87012551614d25962f3f2c5f39800eedb398"
  "aab3aaf0061e43e6f661f69067a2810b3dee14093c805db62810c245529a4643"

  "96abca9aaa451d5b243ac1cd8f5697958ad0ec070e004b5f8f9e54497faab8d0"
  #"dced18c5939da9dd556c93b36191b4a536dcff8304db5beb8ec67bf16c008579"
)

case "${CARCH}" in
  x86_64)     _KARCH=x86_64;;
  aarch64)    _KARCH=arm64;;
  s390|s390x) _KARCH=s390;;
  ppc64le)    _KARCH=powerpc;;
esac

_prepare(){
  # ref: https://github.com/kata-containers/packaging/tree/master/kernel
  local suffix="${1}"; shift

  cp -a "${srcdir}/linux-${_kernel_version}" "${srcdir}/linux-${_kernel_version}-${suffix}"
  pushd "${srcdir}/linux-${_kernel_version}-${suffix}"
  #for p in $(find "${srcdir}/kata-containers-${_kata_version}/obs-packaging/linux-container/patches" -type f -name "*.patch"); do
  #  patch -p1 <"${p}"
  #done

  #patch -p1 <"${srcdir}/0001-config-preemption.diff"
  #[ "${suffix}" != "anbox" ] || patch -Rp1 <"${srcdir}/0002-remove-ashmem.diff"

  # kernel config prep from upstream ("${srcdir}/kata-containers-${_kata_version}/obs-packaging/linux-container/kata-linux-container.spec-template")
  make -s mrproper
  rm -f .config

  local _KCONFIG="$(find "${srcdir}/kata-containers-${_kata_version}/kernel/configs" -type f -name "${_KARCH}_kata_kvm_${pkgver%.*}.x")"
  if [ -z "${_KCONFIG}" ]; then
    KCONFIG_CONFIG=.config ARCH=${_KARCH} scripts/kconfig/merge_config.sh -r -n "${srcdir}/kata-containers-${_kata_version}/tools/packaging/kernel/configs/fragments/common/"*.conf "${srcdir}/kata-containers-${_kata_version}/tools/packaging/kernel/configs/fragments/${_KARCH}/"*.conf "${@}"
  else
    KCONFIG_CONFIG=.config ARCH=${_KARCH} scripts/kconfig/merge_config.sh -r -n "${_KCONFIG}" "${@}"
  fi
  make -s ARCH="${_KARCH}" olddefconfig
  popd
}

prepare(){
  _prepare vanilla
  _prepare btrfs "${srcdir}/config.btrfs"
  _prepare anbox "${srcdir}/config.btrfs" "${srcdir}/config.anbox"
}

_build(){
  pushd "${srcdir}/linux-${_kernel_version}-${1}"
  make -s ARCH="${_KARCH}"
  popd
}

build(){
  _build vanilla
  _build btrfs
  _build anbox
}

_package_linux_kata(){
  local suffix="${1:+-${1}}" _path="${2}"
  install -dm0755 "${pkgdir}/usr/share/kata-containers"
  pushd "${pkgdir}/usr/share/kata-containers"

  install -D -m 0644 "${_path}/arch/${_KARCH}/boot/bzImage" "${pkgdir}/usr/share/kata-containers/vmlinux-${_kernel_version}${suffix}.container"
  #install -D -m 0644 "${_path}/vmlinux" "${pkgdir}/usr/share/kata-containers/vmlinux-${_kernel_version}${suffix}.container"
  if [ "${_KARCH}" = "powerpc" ]; then
    ln -sf "vmlinux-${_kernel_version}${suffix}.container" "vmlinuz-${_kernel_version}${suffix}.container"
  else
    # param out bzImage for other archs?
    install -D -m 0644 "${_path}/arch/${_KARCH}/boot/bzImage" "${pkgdir}/usr/share/kata-containers/vmlinuz-${_kernel_version}${suffix}.container"
  fi
  for i in vmlinux vmlinuz; do
    :
    #ln -sf "${i}-${_kernel_version}${suffix}.container" "${i}${suffix}.container"
  done
  popd
}

package_linux-kata(){
  provides=('kata1-linux-container' 'kata2-linux-container' 'kata-linux-container')
  #conflicts=('kata1-linux-container' 'kata2-linux-container' 'kata-linux-container')
  _package_linux_kata '' "${srcdir}/linux-${_kernel_version}-vanilla"
}

package_linux-kata-btrfs(){
  provides=('linux-kata' 'kata1-linux-container' 'kata2-linux-container' 'kata-linux-container')
  _package_linux_kata btrfs "${srcdir}/linux-${_kernel_version}-btrfs"
}

package_linux-kata-anbox(){
  provides=('linux-kata' 'kata1-linux-container' 'kata2-linux-container' 'kata-linux-container')
  _package_linux_kata anbox "${srcdir}/linux-${_kernel_version}-anbox"
}

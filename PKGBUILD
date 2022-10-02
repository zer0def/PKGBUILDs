# Maintainer: zer0def <zer0def@github>
pkgbase=linux-kata
pkgname=(
  linux-kata
  linux-kata-btrfs
  linux-kata-anbox
)
_kata_version="${KATA_VERSION:-2.5.2}"
_kernel_version="${KERNEL_VERSION:-5.19.12}"
#_kernel_version="${KERNEL_VERSION:-5.15.71}"
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
  "${KERNEL_SHA512:-567dfb4302ea6a8961ad3b6dba332a925d262fbc8830a77da75a7be19db3cb19080260787cfcd0318b7893b71c655e2bcb1fc71dd07ff5627064fd33635bb2a4}"
  #"${KERNEL_SHA512:-7d20387a1f82d7ec63ff06ed05885a2758b39ece0fe95ad559d79216210e342f0df4dfab9f54c1e4016c331516034aa1b6783d63dd7e415d0cb20947301f95ab}"
  "SKIP"
  "${KATA_SHA512:-a44ae0b8dadde922f5283fcb8da55fe960d23cfb6e05a1f0a3fe9ecf72292b2867916211973b29e7c575320a47ff0544c2627b5aa5cca37beb411d3cb3db5fea}"
  "ed3011a9fee8dd2fb16a004305b23e6b79158afcfe6d88ccdf471b177a8fbe4a9da92924e437284de83a69cebdf5cca2312b614906c404c0d22692aeca491510"
  "aca5da45b057e9afda63c6fb15873053ed046f309bbd33f1d88578012613399cc504186b79842ad35ba29af9f3449120eb4d3d29612fe33efb980a8f9785631c"
  "6e1d670dc20c2fbaab781eef09eb7eee2f3e9833371a0bf56dfdd613fb42f5b710728ad47277978828107f1b2459d169e3d388ef194573b44ae2fbaa02d9c455"

  "76c27fe0e2b84a9ae0d4b0e2a96ef0c07777811991b4aae21c88494b91fa2837fb67be335cebf4874e5e3235b5ba4641ec4544f9e055765e2dcf399d9d875e8c"
  #"ccf07f50968a06460d7e84adde9d9599ad287ad4e0e1e1abd074c193c3387171cf987cbe16312723220ccee7a037d85f8f18b41560e6283825a6e612245fa9a0"
)
b2sums=(
  "${KERNEL_B2:-b1f2b1d41070c7fcd50b7a5da730dd45408c0867c1dc2f9c5dcd43057506221207f13b12ede4c4f0fa8256098542b0f90e3b9f96a93c9b18b5c1cf41dbe380b3}"
  #"${KERNEL_B2:-77da2393a31b6c6fed7cdfef61a112ae49fcdfce96968daf8c7a690a6e65025c7238c1fe084d0bfda403dc56db877b6db99def12803e840cacf318da40327d7b}"
  "SKIP"
  "${KATA_B2:-df75cd610fcc314217091cb3da8e350aa3a819d9a8f981a150603c2476f37f8855fdb3f7315c270702bebaaf34077c57a959d93bbf454c6e566dc8734d2f5890}"
  "803eb3483722e7eab50102b8d0f9dc1ea7f38781d1f61e5998137469e019cb49d944a30c97f465c5b03916322955fcf29629af27ac47f2e19210bee3d63c488e"
  "703e925ac842463f17c1fdb5ab4079ef5ef5eff1a39cb300383554f9fb1ae907f8fa4abf3c60962804fbcb88f359b3f43fe1c259aededdd5efe131c3e5728e6b"
  "bc728bf1301d4162d867b7b5f4931027519820d0ce2f9bbc504a2839b28ebf4a8c4c238a5c8457eeb025ef2ba306c7049f44ad64aa783e60c7bddd6f0f4236b2"

  "919319ddcaac3f7c5b1c1998fced9920f3e7e9d4660c83e380495fc3a14d5f4e82736ac9435fdb78512576f1d90f80b1ad017529f2b42e013b844ed3ec4bc99f"
  #"340b4a3fd88255c335b882b1fb0688d505b93d235c9685bf04c477f62d12c263b94fedd7fd02df2dab04d47ea9dc7d5257ba9ea3e12991489c6ba78720d60eda"
)
b3sums=(
  "${KERNEL_B3:-e58c976af4c12b5790cedf5bd7d1203964a9feaf0296097f3ed69789b5f9d449}"
  #"${KERNEL_B3:-e6a980eb5bb4d2c0ea4521cc33df57c87ddb478228a153950ddd4590cb5b58fb}"
  "SKIP"
  "${KATA_B3:-6e6e0f34e34885e9e9b41eda50494a4f241a332ea8cae87fa5fad0d64d062d7a}"
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
  #for p in $(find "${srcdir}/kata-containers-${_kata_version}/tools/packaging/kernel/patches/${pkgver%.*}.x" -type f -name "*.patch"); do
  #  patch -p1 <"${p}"
  #done

  #patch -p1 <"${srcdir}/0001-config-preemption.diff"
  #[ "${suffix}" != "anbox" ] || patch -Rp1 <"${srcdir}/0002-remove-ashmem.diff"

  # kernel config prep from upstream ("${srcdir}/kata-containers-${_kata_version}/tools/packaging/linux-container/kata-linux-container.spec-template")
  make -s mrproper
  rm -f .config

  local _KCONFIG="$(find "${srcdir}/kata-containers-${_kata_version}/tools/packaging/kernel/configs" -type f -name "${_KARCH}_kata_kvm_${pkgver%.*}.x")"
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

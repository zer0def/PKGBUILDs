# forked from https://github.com/archlinuxarm/PKGBUILDs/tree/master/core/linux-armv7

pkgbase=linux-xe303c12
pkgname=(
  "${pkgbase}"
  #"${pkgbase}-headers"
)
_kernelname=${pkgbase#linux}
_desc="ARMv7 XE303C12-platform"
pkgver=6.12.43  # as of 2025-08-22, this version has known nVidia vibe-code-introduced DoS vulns, loel
_srcname=linux-${pkgver}
pkgrel=1
rcnver=6.12.32
rcnrel=armv7-lpae-x7
arch=('armv7h')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'git' 'uboot-tools' 'vboot-utils' 'dtc' 'flex' 'make' 'gcc' 'fakeroot' 'bison')
options=('!strip')
MAKEFLAGS="-j$(nproc)"
source=(
  "http://www.kernel.org/pub/linux/kernel/v6.x/${_srcname}.tar.xz"

  # RCN patch
#  "http://rcn-ee.com/deb/stretch-armhf/v${rcnver}-${rcnrel}/patch-${rcnver%.0}-${rcnrel}.diff.xz"
#  "http://rcn-ee.com/deb/sid-armhf/v${rcnver}-${rcnrel}/patch-${rcnver%.0}-${rcnrel}.diff.gz"

  # ALARM patches
#  '0003-fix-mvsdio-eMMC-timing.patch'  #'https://raw.githubusercontent.com/archlinuxarm/PKGBUILDs/master/core/linux-armv7/0003-fix-mvsdio-eMMC-timing.patch'

  'config'
  'kerninst'
  'kernel.its'
  'kernel.keyblock'                    #'https://github.com/archlinuxarm/PKGBUILDs/raw/master/core/linux-armv7/kernel.keyblock'
  'kernel_data_key.vbprivk'            #'https://github.com/archlinuxarm/PKGBUILDs/raw/master/core/linux-armv7/kernel_data_key.vbprivk'

  # extra patches, these seem broken on 6.12
  'xe303c12_add_atmeltouch.patch'      #'https://gitlab.com/quarkscript/linarm/-/raw/master/xe303c12/xe303c12_add_atmeltouch.patch'
#  'xe303c12_cwifiautosus.patch'        #'https://gitlab.com/quarkscript/linarm/-/raw/master/xe303c12/xe303c12_cwifiautosus.patch'
#  'xe303c12_rsbl.patch'                #'https://gitlab.com/quarkscript/linarm/-/raw/master/xe303c12/xe303c12_rsbl.patch'
)
b2sums=(
  '0606e0486cf7a426484ef6bbaa174d79d00ab2ceb9f6cdf7109a28e0841e8a907c4d78d7c549c82600362d747166c493cbec826138b163f3b62ea5b4561ed0b8'
#  '1ee7a3c5b81e56c0f434972b51d4d36aa7ec40f9d0f5637d5255787d5400e4f320c87ed1d2f087520180df1071e0f8aaba20cb277cf44c96e124016781a9ce9f'
#  'e1a75f4cf1004ac612b9daf774bf07aa29cb6cb7c9c238fc046b6398205845b46445546ce1dc27b64ae25d7d2852809ed2ce536373d2cb9b1fdce078075e73c6'
#  '6219cec826bc543000ab87cf35dcc713f0635519cf79e75888b213a5e2d1f728e59e70df7fd842dda6e40494bf9cafa9f87368cb75b338c5a157a0adcf583512'
  '893bf4ed4da1be0b9a1b0ccda12643fd9d7efb2b23caf83c05eeb49cafed68cf93786923f15913a7eaaa418eec2b32fe51465ccd63c4662672613c1c70138232'
  '3d3bf967cdffcac0528c7d10a5955972359f5f2f01ca2c1530e7cbcbe65adbbf3a49a6223500ead56d599af0e926655691f218f62c78616bc5fdf8062fd939df'
  '00ecc2c34f326cba6c64141b025b02edc17717ee61b8b210533ec8d2172266a210bbd6c1af321c0b926c055c24968e3383ec5cf0ccc71043b62cd9354e5ffc0e'
  'eeed12b2ab60c3d3aad598a1d44b4f23560d818e8fe1ef143f857c8e176652df53501b192ade7d4d915d425fff818b2a232d46bae0d3a0f46b8959e614e0ede2'
  'aaa4e28a31967cc3a7fe25a86ba35fdfa210cd8b1a9cc96298349cbf01d60cdf146ee519d6803d05b175873f1b3367e47194a178db7ed97c802e59b38f8c303c'
  '8158ec57dea7f445d7733397bfa9c789a23ac6e575fd7cc16f8fc20419051c7fc91dcbef62092cdc0135139d2b27883db7d3ab65a9ad1c3a5c16b37b933ad0ba'
#  '6f0a2d5a46a0be18b541fa2cb55ebcc361d23c327729558d5ce6d239c76997e54dd7e531e2b1b146d03f0631cb808a09d188a1da86f02f125f10ac8aa6fa9e9f'
#  '6de1de91f99b2d9d3069e73102386e979b8f8b2107429799efe8f9574081b6a52edea63f90d86326f39d140606308c351f8df43d43115ce9e29bb866c166776c'
)

prepare() {
  cd "${srcdir}/${_srcname}"

  # add upstream patch
  #git apply --whitespace=nowarn ../patch-${pkgver}

  for src in "${source[@]}"; do
    src="${src%%::*}"; src="${src##*/}";
    echo "${src}" | grep -qE '\.(patch|diff)$' || continue
    msg2 "Applying patch ${src}..."
    git apply "${srcdir}/${src}"
  done

  cat "${srcdir}/config" > ./.config

  # add pkgrel to extraversion
  sed -ri "s|^(EXTRAVERSION =)(.*)|\1 \2-${pkgrel}|" Makefile

  # don't run depmod on 'make install'. We'll do this ourselves in packaging
  sed -i '2iexit 0' scripts/depmod.sh
}

build() {
  cd "${srcdir}/${_srcname}"
  make olddefconfig
  #while echo; do :; done | make ${MAKEFLAGS} prepare
  make ${MAKEFLAGS} menuconfig

  #ff="-pipe -march=armv7-a+mp+neon-vfpv4 -O2 --param l1-cache-size=64 --param l2-cache-size=1024 -mfpu=neon-vfpv4 -fno-plt -faggressive-loop-optimizations -fguess-branch-probability -floop-nest-optimize -fomit-frame-pointer -fsel-sched-pipelining -fsel-sched-pipelining-outer-loops -fpredictive-commoning -fprefetch-loop-arrays -ftree-loop-optimize -floop-interchange -floop-unroll-and-jam -fpeel-loops -funswitch-loops -fvect-cost-model=dynamic -fsimd-cost-model=dynamic -fsplit-ivs-in-unroller -ftree-loop-ivcanon -ftree-loop-im"
  ff="-pipe -march=armv7-a+mp+neon-vfpv4 -O2 --param l1-cache-size=64 --param l2-cache-size=1024 -mfpu=neon-vfpv4 -ftracer -funroll-loops -fprefetch-loop-arrays -fpredictive-commoning -fsel-sched-reschedule-pipelined"
  #ff="-pipe -march=armv7-a+mp+neon-vfpv4 -mtune=cortex-a15 -mfpu=neon-vfpv4 -O2 --param l1-cache-size=64 --param l2-cache-size=1024 -fno-strict-aliasing -fipa-sra -fivopts -fomit-frame-pointer -foptimize-sibling-calls -fpredictive-commoning -fprefetch-loop-arrays -frename-registers -fshrink-wrap-separate -fsimd-cost-model=unlimited -fsplit-loops -fsplit-paths -fssa-phiopt -fstdarg-opt -ftracer -ftree-cselim -ftree-dominator-opts -ftree-loop-if-convert -ftree-loop-optimize -ftree-loop-vectorize -funroll-loops -funswitch-loops -fvect-cost-model=unlimited"

  export CFLAGS="${CFLAGS} ${ff}" CXXFLAGS="${CXXFLAGS} ${ff}"
  
  find -type f -name Makefile -print0 | xargs -0r -- sed -i \
    -e "s/armv7-a/${ff#*=}/g" \
    -e "s/vfpv /vfpv4 /g" \
    -e "s/vfpv,/vfpv4,/g" \
    -e "s/-Os/-Os ${ff#*-O2 }/g" \
    -e "s/-O2/-O2 ${ff#*-O2 }/g"
  #  -e "s/armv7-a/${ff#*=}/g" \
  #  -e "s/-O2/${ff#*-pipe } /g" \
 
  make ${MAKEFLAGS} zImage modules dtbs #exynos5250-snow.dtb exynos5250-snow-rev5.dtb
}

package() {
  pkgdesc="The Linux Kernel, flash image, modules and headers for samsung/google snow XE303C12 chromebook - ${_desc}"
  depends=('coreutils' 'kmod' 'uboot-tools' 'vboot-utils')
  optdepends=('linux-xe303c12-firmware: contains the necessary firmwares for the xe303c12 chromebook, takes up 5M or something' 
    'linux-firmware: contains all available firmwares, takes up 500M or something'
    'crda: to set the correct wireless channels of your country' 
    'mkinitcpio>=0.7: not needed for this kernel actually')
  backup=("etc/mkinitcpio.d/${pkgbase}.preset")
  provides=("linux=${pkgver}" "WIREGUARD-MODULE")
  conflicts=('linux')
  replaces=('linux-armv7' 'linux-armv7-chromebook' 'linux-armv7-rc-chromebook' 'linux-armv7-rc' 'linux-armv7-rc-chromebook' 'linux-armv7-headers' 'linux-armv7-chromebook-headers' 'linux-armv7-rc-chromebook-headers' 'linux-armv7-rc-headers' 'linux-armv7-rc-chromebook-headers')
  install=${pkgbase}.install

  cd "${srcdir}/${_srcname}"

  KARCH=arm

  # get kernel version
  _kernver="$(make kernelrelease)"
  _basekernel=${_kernver%%-*}
  _basekernel=${_basekernel%.*}

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make ${MAKEFLAGS} INSTALL_MOD_PATH="${pkgdir}/usr" modules_install
  
  # make INSTALL_DTBS_PATH="${pkgdir}/boot/dtbs" dtbs_install
  # custom builded dtb will be installed manually
  install -D arch/$KARCH/boot/dts/samsung/exynos5250-snow.dtb -m755 "${pkgdir}/boot/dtbs/exynos5250-snow.dtb"
  install -D arch/$KARCH/boot/dts/samsung/exynos5250-snow-rev5.dtb -m755 "${pkgdir}/boot/dtbs/exynos5250-snow-rev5.dtb"
  
  cp arch/$KARCH/boot/zImage "${pkgdir}/boot/zImage"
  
  mkdir -p "${pkgdir}"/boot/reflash
  cp ${srcdir}/kernel.keyblock ${pkgdir}/boot/reflash/kernel.keyblock
  cp ${srcdir}/kernel_data_key.vbprivk ${pkgdir}/boot/reflash/kernel_data_key.vbprivk
  install -D "${srcdir}/kerninst" -m755 "${pkgdir}/boot/reflash/kerninst"
  #chmod +x ${pkgdir}/boot/reflash/kerninst

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname}"
  ln -s "../${_extramodules}" "${pkgdir}/usr/lib/modules/${_kernver}/extramodules"

  # add real version for building modules and running depmod from hook
  echo "${_kernver}" |
    install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_extramodules}/version"

  # remove build and source links
  #rm "${pkgdir}"/usr/lib/modules/${_kernver}/{source,build}

  # now we call depmod...
  depmod -b "${pkgdir}/usr" -F System.map "${_kernver}"

## install mkinitcpio preset file...
echo "# mkinitcpio preset file for the '${pkgbase}' package

#ALL_config='/etc/mkinitcpio.conf'
#ALL_kver='${_kernver}'

#PRESETS=('default')

#default_config='/etc/mkinitcpio.conf'
#default_image='/boot/initramfs-linux.img'
#default_options=''
" | install -Dm644 /dev/stdin "${pkgdir}/etc/mkinitcpio.d/${pkgbase}.preset"
    
## install pacman hooks
echo "[Trigger]
Type = File
Operation = Install
Operation = Upgrade
Operation = Remove
Target = usr/lib/modules/${_kernver}/*
Target = usr/lib/modules/${_extramodules}/*

[Action]
Description = Updating ${pkgbase} module dependencies...
When = PostTransaction
Exec = /usr/bin/depmod ${_kernver}
" | install -Dm644 /dev/stdin "${pkgdir}/usr/share/libalpm/hooks/60-${pkgbase}.hook"

## not needed because kernel do not use initrd
# echo "[Trigger]
# Type = File
# Operation = Install
# Operation = Upgrade
# Target = boot/zImage
# Target = usr/lib/initcpio/*
# 
# [Action]
# Description = Updating ${pkgbase} initcpios...
# When = PostTransaction
# Exec = /usr/bin/mkinitcpio -p ${pkgbase}
# " | install -Dm644 /dev/stdin "${pkgdir}/usr/share/libalpm/hooks/90-${pkgbase}.hook"

## include headers

  #for i in $(ls include/); do
  #  cp -a include/${i} "${pkgdir}/usr/lib/modules/${_kernver}/build/include/"
  #done

  cd "${srcdir}/${_srcname}"
  local _builddir="${pkgdir}/usr/lib/modules/${_kernver}/build"

  :||{  # already present in this package?
  install -Dt "${_builddir}" -m644 Makefile .config Module.symvers
  install -Dt "${_builddir}/kernel" -m644 kernel/Makefile

  mkdir -p "${_builddir}/.tmp_versions"

  cp -t "${_builddir}" -a include scripts

  install -Dt "${_builddir}/arch/${KARCH}" -m644 arch/${KARCH}/Makefile
 # install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 arch/${KARCH}/kernel/asm-offsets.s arch/$KARCH/kernel/module.lds

  cp -t "${_builddir}/arch/${KARCH}" -a arch/${KARCH}/include
  for i in dove exynos omap2; do
    mkdir -p "${_builddir}/arch/${KARCH}/mach-${i}"
    #cp -t "${_builddir}/arch/${KARCH}/mach-${i}" -a arch/$KARCH/mach-${i}/include
  done
  #for i in omap orion versatile; do
  for i in orion; do
    mkdir -p "${_builddir}/arch/${KARCH}/plat-${i}"
    cp -t "${_builddir}/arch/${KARCH}/plat-${i}" -a arch/$KARCH/plat-${i}/include
  done

  install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
  install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

  # http://bugs.archlinux.org/task/13146
  install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # http://bugs.archlinux.org/task/20402
  install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # add xfs and shmem for aufs building
  mkdir -p "${_builddir}"/{fs/xfs,mm}

  # copy in Kconfig files
  find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;
  }

  # remove unneeded architectures
  local _arch
  for _arch in "${_builddir}"/arch/*/; do
    [[ ${_arch} == */${KARCH}/ ]] && continue
    rm -rf "${_arch}"
  done

  # remove files already in linux-docs package
  rm -rf "${_builddir}/Documentation"

  # remove now broken symlinks
  find -L "${_builddir}" -type l -printf 'Removing %P\n' -delete

  # Fix permissions
  chmod -R u=rwX,go=rX "${_builddir}"

  # strip scripts directory
  local _binary _strip
  while read -rd '' _binary; do
    case "$(file -bi "${_binary}")" in
      *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
      *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
      *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
      *) continue ;;
    esac
    /usr/bin/strip ${_strip} "${_binary}"
  done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)

  ## include kernel flash image
  cd "${srcdir}/${_srcname}"
  cp ../kernel.its .
  mkimage -D "-I dts -O dtb -p 2048" -f kernel.its vmlinux.uimg
  dd if=/dev/zero of=bootloader.bin bs=512 count=1
  echo 'console=tty0 init=/sbin/init root=PARTUUID=%U/PARTNROFF=1 rootwait rw noinitrd zswap.compressor=zstd zswap.max_pool_percent=40 audit=0 quiet loglevel=1 ' > cmdline
  vbutil_kernel \
    --pack kernel_image \
    --version 1 \
    --vmlinuz vmlinux.uimg \
    --arch arm \
    --keyblock ../kernel.keyblock \
    --signprivate ../kernel_data_key.vbprivk \
    --config cmdline \
    --bootloader bootloader.bin
  #mkdir -p "${pkgdir}/boot"
  cp kernel_image "${pkgdir}/boot"       
}

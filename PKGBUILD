# Contributor: Chaiwat Suttipongsakul <cwt@bashell.com>

_major=6.12 _vf2_minor=5 _upstream_minor=55 _variant="0def" #6.12-VF2-xxx-x
pkgbase="linux-${_major}-starfive-vf2-0def"
pkgver="${_major}.${_upstream_minor}"
pkgrel=1
_tag="JH7110_VF2_${_major}_v6.0.0"
_desc="Linux ${_major}.x (-${_variant}) for StarFive RISC-V VisionFive 2 Board"
_srcname=linux-vf2  #-$_tag
_3rdpart="soft_3rdpart-${_tag}"
url="https://github.com/starfive-tech/linux/"
arch=(riscv64)
license=('GPL2')
makedepends=(bc libelf pahole cpio perl tar xz gcc)
options=('!strip')
source=("https://github.com/zer0def/linux/archive/refs/heads/vf2.tar.gz"  # 'git+https://github.com/zer0def/linux#branch=vf2'
  #"linux-starfive::git+https://github.com/starfive-tech/linux#tag=${_tag}"  # 6.12.5
  #"linux-upstream::git+https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git?signed#tag=v${_major}.${_upstream_minor}"
  'linux-01-riscv-zba_zbb.patch'
  'linux-02-eswin_6600u-llvm.patch'
  'linux-03-eswin_6600u-cast_null_as_unsigned_int.patch'
  'linux-04-fix_broken_gpu-drm-i2c-tda998x.patch'
  'linux-05-fix_img_gpu_secondary_notintermediate_conflict.patch'
  'linux-06-fix_drm_img_rogue_buffer_overflow.patch'
  'linux-07-fix_starfive_v4l2_for_6.12_kernel.patch'
  #'linux-08-restore_emmc_voltage_switch.patch'

  'config'
  'linux.preset'
  '90-linux.hook'
  "${_3rdpart}.tar.gz::https://github.com/starfive-tech/soft_3rdpart/archive/refs/tags/${_tag}.tar.gz"
  'soft_3rdpart-00-correct_kernel_source_dir.patch'
  'soft_3rdpart-01-use_clang_for_llvm.patch'
  'soft_3rdpart-02-fix_omx-il_build.patch'
  'soft_3rdpart-modules.conf'
  '91-soft_3rdpart.hook'
  '91-soft_3rdpart.rules')

sha512sums=('2871b394c01abe12152322a48034c1200fc89d89379657b6feca024d44440b76758033edb235939e947eb511a38ee0eae9d976ae064e992fd8624ba865303319'  # '803701c967f975a57a378693314738b5d725dddc6c51dee82c732af5c977dc7100ee655158d9b568c2e18481813ac7a893d83a3d166789b16189c2390e57d1c9'
            '63482cbac72197c6c89315f9830d2cb88a3ad68b3414174cb9fbb39cd90ea05dc28ba7a140b015da1df7b5b6bc361dbc15a4fe4ef33573379bf3865515944143'
            '39708babd85c0ef1068c4748661ed2edd7cd3740ca653f9449776b357a76a60fc54ea637e72419421d966533cdda01af794777210175e2326f2d1f92cbccca07'
            '4e0cedab9bc174b0681b6eb0cc2e9c20095b281dd6548090d947b5738ef58764d23b05f0bd951124798f12c1fa8a96d7137a24d7d3147629f62adf48a7239f05'
            '5a2c3c55848a70fd82bc34a79caed88ba3b7ada63aa037d664e55e90c774fa932fb3f9bc35deedd4f6866db47c1da168834d8d2349b42474ec7504ed4422d6f6'
            '306f1198a7e52f17ad6c0ca24c367247a1e3d6506be351e371e8fa37eee26f4ff9e048ea0069887c7f4c312896cdd452347f259cab56564f02569f8c1f983e2a'
            '4fd8d39f8d927d25231cd46f42cbbe1bd9fbf4e8a1024e87f4a1f67c67a64b5837551c16cfa99493de92694a00bd4077233883e1417931dbdac574413918491d'
            'aed3a8cdc3a2d0541ea89658a10ae715e072baabbd9fb63da63aa11762fa46b295c0ad07cda465f721e984e0a1a54c92e062218ee2cd089128d6459a7a132e11'
            #'2bee193229398a1b7570978a27d06bd0d194e4fe18a98e6a7bade1375fe5e0593bb39463fa5f2ebfdda5264687063bd0e9ca77a77f72bf8ce26efa598fe4a463'

            '1d6b89b3029fcebe8ece467b29750880897abd2002df2d776b3b3fb124b9984f46ad854284bdc1e1ad991e1b129f15172222b5d4372b2f44a7380f3ea7b23e79'
            'f2e86c4a8476e9b9c8d981ec25e848fb61709d0e1bd1b9ed8b6cb558fcc7afd695e213a7f9957b24e3cf5de19371d446ddb54f6113c9a6c79c7fada3675aac9c'
            '62a3be680aaee1c0fe63b5fc709b206c444fb776bd1a729b3e8331b3562bfe97a38cf1d557205ad7cc815a6591041af5b0b70adc0f082609c337580782e3afb0'
            'a344392a16ba0cae28d50798ebfbdb001e9927d143b3245a62ef31cfef1a53bfb9a1d362386221232bfa3174651ae3823cc5420f8b09429d6d23e9ce040aa87e'
            '85696fa1a5c2b8e27050e6980f858bbdc910e88346385777bf017ed1fa72c78f7e3567c109049f3fa4cfba4a9c936359ec9a8f864fb486159155e7caf6202693'
            'd062cd23cbbe370b4fc8dc87ba3a0c72887053ab9d37a80ac805cbda7af8639cb4ce73112f486186dcbb64ea87f6f07b1f7fdd9f1564157e1a452cfd385d2a13'
            '3b7097f2640f0c23ea68bfebda5c78b9305ca6ba35e8fb2420dfca1d7777065d0910d11040182831bdc021f4e7bd450b2946d86ff2ec371622a4db73c0fe5e38'
            'c919e48f65c7ec2f865be270a16fe3a386336277822d50a6f1559e26a979da63ca79575eca0822ba42c954ffe218f161b71feffe5232b33b2171d06f824a1125'
            'bbbc6413df6efc3f1e9e305acdcaf4de52acf5caee1317731fc530a109102109f57d5985a534bce57d1790c9a8b8fc9fd40ad8aedb7339c19603064b1f9b67b1'
            'bf9b48e4b2ea792906f2a601b247beb6d6cf64abc369b3fb89d4dbf7af7873b4890f5e5b47c0019433da84467f6c7495dcc36ec772fd02038d9f04e332b54f66')
b2sums=('d5ed107209504e51364247ff87cba68d0a7690ba5eac2d690e42f51448ae60bf6ec3d54a5e3b31de5e7868c79d799a25a23420ac638c4ad7f1c8df6fe3afb287'  # 'dac998e9e3c05c9e9c3b177b5bad73faedff26008bc7fe9be15f082a3be9e0ec5bdf8908bde2d98a3cd3f590ca316a15d5b412be8a5c9fea6a070767978957ed'
        '4bca3f94d7010a4768aeb7699d3c7b82ac345d9aace4e2617daa217402f0538fa859441790b7e2ecb05190214b383a785888923f7a5dccf678217c094c0dd20b'
        'dad8854fff3dca7ab6b04ae64dd7270c251d28df73ed987a1672e83d58951736a0e44942556d795202ef20430374313d749e021ba17735beaf364a6af3a34927'
        '30ac8f7acc48c027db297b759b7bd2679de111733bd2396774cbce9d035c9486828f96d6a992cfe8b52686e297e46d08d4c0925eb6b19fe65d1c9a804a50f0ea'
        'e195ff708549ca474473141597a7247cec5ce9607aec3428368527a9b906701ffd5918f2c55fd3db6bdae3ab1145fc87a322cd6a18324ea882b0e4d411d1c380'
        '4d5bc3ef01fdbb61a88c8e64f5fa1ea5474caa76bd8740217a0055f8ef2067c9996ef262bc7d671651b533870b7be6860ebbf52fe0259fafb0296cdbe8dcdc85'
        '99d4f017a6d65e6d19830c25be94238812f2ceeaf9084a1b98c9f0b270d40889f518f5a158fb81e0cfc13364e10bd7febfe7ac429f87c8228b86858f031611e4'
        '409d74e0790de7f12a862f10bdf3a4ed87ea99fdc503ae1b5f70ad20aa0e56f2212f06429224572211cc36a782897fcc3d9f710a500f440ae4047d83321e83f1'
        #'e847ff43ef059dc1320b2b1957783a0a67ba2e0d13b13c177bf4b195e6ddbb1b11e6f8fb6809783e4f6279b8b45ef5c81eab6430fc62dd878fc6b57eaa5772dd'

        '41751edaab56907af2c5a513037e7c664a0f3977693fabb8227fa4e9804deb85d4af5722de5f05d3c86cb2f2a597d469fb7edcb1f0c3022b1f872eb136345fbf'
        'baee58367325f4046ddca758cb6da82e4ca9d8e0923369125ca89539dc1103a5a00a1fa01dc9a12883c19cec827fae1071642cc0b8a00cf3b5c24f18638ad645'
        'b7f7009090cf8a6cd5e1eb4d841544c10f15bcca44e5c11cd083d618fd5853e427b23ebafea06a839395014624892bf81272feddb53d1baae9f0296e779b7d9e'
        'ae5c0780657201759f27115f3f215f43b0520d1cb30c44805610694cdc947645f782568e9fa02ff1c09afe35606e9e63dc11bdb404c509cc4b5f7645b09142c1'
        '444c5e378bb375fa5365ca7218ab0e60df65c73f3bef38a25fa4e1b69fecd62435987d7ad29dcf1b59b56b4db1c89da057a401e948bf696cc0a06e0892db0b88'
        '6aa6c65ef7e21d20965491fb95c94b16e7e67ffa072f401a70f1570ae5d80b3248523c6ef2ef1f9ba3db0c0371081bdb07b5ecea3429cf47a0f00f727b45bf7d'
        'd5a5ca5ba29f46339504899e9471f3b8eeded8018b26b542802c1f0f612f01ba662f4fad7fa058d2bf7b8ef64b4f70a1a56e3293f644cb7c22d64bab3f04ade9'
        '8bc3c6adf182ff379e34cbb78b727e341e03d2718cf2d411751717dd346987f52e02a7a870fb92d21a176e3f752f06aafbe5e49571ab540951326ab1b25188f5'
        'b0d5645379d4fc46d32ac22cabc054f63d0d8b1bc340d4c6e99e0b41f1a8dbbadd83ce3749cffb6fcf12d622e0ae17cfae4261d7b262a8f962ebe7994127f842'
        'd144a325cb08a4bc5527043f2d402ced6d63997b234d6cab83113944d1ae4d8ddc64ec545222bf7f859e9e37a925b8f3300a568daca7d91bef1f0bb5cfab03c7')
b3sums=('7ebe050d2f24b939f8f0dd70532ab82aacbd02aecd5fa1e18e05bbcc751f80f0'  # '82d1367f2e0c3a110754f0513c856e5e7d98a1ba9adac1f378d49c72caf31de3'
        'cf4fab7c10f440699a4db2c162e24d1c5f6805126b85f47fc3c4763052ec0f0b'
        'd80f4e5a1f3f98d6ff0e966923a8cbf52864bf016afabae1c068ef42d06a29a7'
        '14720522dec9c23872a431cc9ca96592ba6327511f970e6ca1cb5c5f51008b40'
        '01340cab6aebc9d5389194844821cd1a6bf42819de39fbf77f0cb66f6dcd9f4d'
        '890ba1cf6f61eee6f0d5d6950ac6f777ad06d99dccf4156cf452fa79d5378dd2'
        'ec7aa202e65ff00164a8d9200bc32541da289f3ac98246916dcecc8e0b0a12e0'
        '60745f16635c9b2619c4ab59bff65b06b5349a9b7aacfa70cf560df9e506c611'
        #'0c22e50b0fe637dc8219133bd3749fe740a0b06a5c06918732fd78dd5ce9cfa9'

        '797fda2212035bdeff41748ebb783cf40647a1ea942d914358cfe43b386e5914'
        '34783807b21e48feec3a9536fe7f71bffeafc979b079c6b8f7bdfd259082503d'
        'd4a2b0cce86e2b4b22f1561a81dc33c09970ce49c0837fb330022f5858dc4ecf'
        '77d3d6400a9421b363d765a6aef86ad0947ab5c9dc70343abc9ae2e7c8e8732e'
        '741e666124c4cb81733a72f4b5f54fd0023cbbb82a0e3792c6d86bb39e0becaa'
        '119a95f2f95c98275c73b3257f34a60576f189ef2885ffd293f509c94b5aa508'
        'c8ac1436437444bac8d9e28f3cb84bea3e978e77021de64776618a57f635b351'
        '3d6ab5917d319ee4af88e548da79b7b824c10e1b55b6e0bcbda05247455b9822'
        '766c4e7d3f56391f05554d089edfccad2ac710ec72a0f9f825377f66736b074e'
        '5718302d9406d09b2db0dcd8fe2d390e8dd1291ff89748a9a2228a3e7adb4903')

validpgpkeys=(
    'ABAF11C65A2970B130ABE3C479BE3E4300411886' # Linus Torvalds
    '647F28654894E3BD457199BE38DBBDC86092693E' # Greg Kroah-Hartman
)

#for i in $(seq $((${_vf2_minor}+1)) ${_upstream_minor}); do
#  source+=("https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-${_major}.$((${i}-1))-${i}.xz") b2sums+=('SKIP')
#done

prepare() {
  #cd "${srcdir}/linux"  #-starfive
  #git remote add upstream https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
  #git fetch upstream
  #git -c commit.gpgsign=false rebase "v${_major}.${_upstream_minor}"

  cd "${_srcname}"

  local src
  for src in $(ls ../linux-*.patch); do
    echo "Applying patch $src..."
    patch -Np1 <"../$src"
  done

  #for src in $(ls --sort=version ../patch-*.xz); do
  #  echo "Applying patch $src..."
  #  xzcat "../$src" | patch -Np1
  #done

  # generate cumulative patch
  #git -C "${srcdir}/linux-upstream" diff "v${_major}.${_vf2_minor}..v${_major}.${_upstream_minor}" | patch -Np1

  echo "Setting version..."
  echo "-${_variant}" >localversion.10-variant
  echo "-${pkgver}" >localversion.20-pkgver
  echo "-$pkgrel" >localversion.30-pkgrel

  unset CFLAGS
  if command -v ccache 2>&1 >/dev/null; then
    CCACHE=$(which ccache 2>/dev/null)
    gcc="${CCACHE} ${CROSS_COMPILE:-}gcc"
  else
    gcc="${CROSS_COMPILE:-}gcc"
  fi

  echo "Setting config..."
  cp ../config .config
  make -j $(nproc) ARCH=riscv CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series" olddefconfig
  cp .config ../../config.new

  make -j $(nproc) ARCH=riscv CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series" -s kernelrelease >version
  echo "Prepared $pkgbase version $(<version)"

  cd $srcdir/$_3rdpart

  local src
  for src in $(ls ../soft_3rdpart-*.patch); do
    echo "Applying patch $src..."
    patch -Np1 <"../$src"
  done
}

build() {
  cd $_srcname
  unset CFLAGS
  if command -v ccache 2>&1 >/dev/null; then
    CCACHE=$(which ccache 2>/dev/null)
    gcc="${CCACHE} ${CROSS_COMPILE:-}gcc"
  else
    gcc="${CROSS_COMPILE:-}gcc"
  fi
  make -j $(nproc) ARCH=riscv CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series" all

  # JPU
  cd $srcdir/$_3rdpart/codaj12/jdi/linux/driver
  make -j $(nproc) ARCH=riscv CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series" KERNELDIR=$srcdir/$_srcname

  # VENC
  cd $srcdir/$_3rdpart/wave420l/code/vdi/linux/driver
  make -j $(nproc) ARCH=riscv CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series" KERNELDIR=$srcdir/$_srcname

  # VDEC
  cd $srcdir/$_3rdpart/wave511/code/vdi/linux/driver
  make -j $(nproc) ARCH=riscv CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series" KERNELDIR=$srcdir/$_srcname

  # OMX-IL
  cd $srcdir/$_3rdpart/omx-il
  make -j $(nproc) CC="${gcc} -mcpu=sifive-u74 -mtune=sifive-7-series"
}

_package() {
  pkgdesc="The $_desc kernel and modules"
  depends=(coreutils kmod mkinitcpio)
  optdepends=('wireless-regdb: to set the correct wireless channels of your country'
    'linux-firmware: firmware images needed for some devices')
  provides=("linux=${pkgver}" "WIREGUARD-MODULE")
  conflicts=('linux')

  cd $_srcname
  local kernver="$(<version)"
  local modulesdir="$pkgdir/usr/lib/modules/$kernver"

  echo "Installing boot image..."
  install -Dm644 "arch/riscv/boot/Image.gz" "$modulesdir/vmlinuz"
  install -Dm644 "arch/riscv/boot/Image.gz" "$pkgdir/boot/vmlinuz"

  echo "Installing modules..."
  make -j $(nproc) ARCH=riscv INSTALL_MOD_PATH="$pkgdir/usr" INSTALL_MOD_STRIP=1 modules_install

  echo "Installing dtbs..."
  make -j $(nproc) ARCH=riscv INSTALL_DTBS_PATH="$pkgdir/usr/share/dtbs/$kernver" dtbs_install
  make -j $(nproc) ARCH=riscv INSTALL_DTBS_PATH="$pkgdir/boot/dtbs/" dtbs_install

  # remove build links
  rm "$modulesdir"/build

  install -Dm644 ../linux.preset "${pkgdir}/etc/mkinitcpio.d/linux.preset"
  install -Dm644 ../90-linux.hook "${pkgdir}/usr/share/libalpm/hooks/90-linux.hook"
}

_package-soft_3rdpart() {
  pkgdesc="The soft third part modules for the $_desc kernel"
  depends=('img-gpu-vf2=1.19.6345021')
  optdepends=('libomxil-bellagio: to use hardware video and jpeg codec')
  license=('proprietary')

  echo "Installing Soft 3rd Part..."

  cd $_srcname
  local kernver="$(<version)"
  local modulesdir="$pkgdir/usr/lib/modules/$kernver"
  local _mod_extra="$modulesdir/extra"

  #JPU
  cd $srcdir/$_3rdpart/codaj12/jdi/linux/driver
  install -Dm644 jpu.ko "$_mod_extra/jpu.ko"
  $srcdir/$_srcname/scripts/sign-file sha1 \
    $srcdir/$_srcname/certs/signing_key.pem \
    $srcdir/$_srcname/certs/signing_key.x509 \
    $_mod_extra/jpu.ko
  xz --lzma2=dict=2MiB -f $_mod_extra/jpu.ko

  # VENC
  cd $srcdir/$_3rdpart/wave420l/code/vdi/linux/driver
  install -Dm644 venc.ko "$_mod_extra/venc.ko"
  $srcdir/$_srcname/scripts/sign-file sha1 \
    $srcdir/$_srcname/certs/signing_key.pem \
    $srcdir/$_srcname/certs/signing_key.x509 \
    $_mod_extra/venc.ko
  xz --lzma2=dict=2MiB -f $_mod_extra/venc.ko
  install -Dm644 $srcdir/$_3rdpart/wave420l/firmware/monet.bin "${pkgdir}/usr/lib/firmware/monet.bin"
  install -Dm644 $srcdir/$_3rdpart/wave420l/code/cfg/encoder_defconfig.cfg "${pkgdir}/usr/lib/firmware/encoder_defconfig.cfg"

  # VDEC
  cd $srcdir/$_3rdpart/wave511/code/vdi/linux/driver
  install -Dm644 vdec.ko "$_mod_extra/vdec.ko"
  $srcdir/$_srcname/scripts/sign-file sha1 \
    $srcdir/$_srcname/certs/signing_key.pem \
    $srcdir/$_srcname/certs/signing_key.x509 \
    $_mod_extra/vdec.ko
  xz --lzma2=dict=2MiB -f $_mod_extra/vdec.ko
  install -Dm644 $srcdir/$_3rdpart/wave511/firmware/chagall.bin "${pkgdir}/usr/lib/firmware/chagall.bin"

  # OMX-IL
  cd $srcdir/$_3rdpart/omx-il
  install -Dm755 libsf-omx-il.so "${pkgdir}/usr/lib/libsf-omx-il.so"

  # HiFi4
  cd $srcdir/$_3rdpart/HiFi4
  install -Dm644 sof-vf2.ri "${pkgdir}/usr/lib/firmware/sof/sof-vf2.ri"
  install -Dm644 sof-vf2-wm8960-aec.tplg "${pkgdir}/usr/lib/firmware/sof/sof-vf2-wm8960-aec.tplg"
  install -Dm644 sof-vf2-wm8960-mixer.tplg "${pkgdir}/usr/lib/firmware/sof/sof-vf2-wm8960-mixer.tplg"
  install -Dm644 sof-vf2-wm8960.tplg "${pkgdir}/usr/lib/firmware/sof/sof-vf2-wm8960.tplg"

  # Other files
  install -Dm644 $srcdir/$_3rdpart/codaj12/LICENSE.txt "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
  install -Dm644 $srcdir/soft_3rdpart-modules.conf "${pkgdir}/etc/modprobe.d/soft_3rdpart-modules.conf"
  install -Dm644 $srcdir/91-soft_3rdpart.hook "${pkgdir}/usr/share/libalpm/hooks/91-soft_3rdpart.hook"
  install -Dm644 $srcdir/91-soft_3rdpart.rules "${pkgdir}/etc/udev/rules.d/91-soft_3rdpart.rules"
}

_package-headers() {
  pkgdesc="Headers and scripts for building modules for the $_desc kernel"
  depends=(pahole)
  provides=("linux-headers=${pkgver}")
  conflicts=('linux-headers')

  cd $_srcname
  local builddir="$pkgdir/usr/lib/modules/$(<version)/build"

  echo "Installing build files..."
  install -Dt "$builddir" -m644 .config Makefile Module.symvers System.map version
  install -Dt "$builddir/kernel" -m644 kernel/Makefile
  install -Dt "$builddir/arch/riscv" -m644 arch/riscv/Makefile
  cp -t "$builddir" -a scripts

  # required when DEBUG_INFO_BTF_MODULES is enabled
  cp --parents -r -t "$builddir/" tools/bpf/resolve_btfids

  echo "Installing VDSO files..."
  cp -a --parents -r -t "$builddir" arch/riscv/kernel/vdso/*
  cp -a --parents -r -t "$builddir" lib/vdso/*
  chmod -R g+w "$builddir/arch/riscv/kernel/vdso"

  echo "Installing certificate files..."
  install -Dt "$builddir/certs" -m640 certs/*.pem
  install -Dt "$builddir/certs" -m640 certs/*.x509

  echo "Installing headers..."
  cp -t "$builddir" -a include
  chmod -R g+w "$builddir/include/generated"
  cp -t "$builddir/arch/riscv" -a arch/riscv/include
  install -Dt "$builddir/arch/riscv/kernel" -m644 arch/riscv/kernel/asm-offsets.s

  install -Dt "$builddir/drivers/md" -m644 drivers/md/*.h
  install -Dt "$builddir/net/mac80211" -m644 net/mac80211/*.h

  # https://bugs.archlinux.org/task/13146
  install -Dt "$builddir/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # https://bugs.archlinux.org/task/20402
  install -Dt "$builddir/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "$builddir/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "$builddir/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # https://bugs.archlinux.org/task/71392
  install -Dt "$builddir/drivers/iio/common/hid-sensors" -m644 drivers/iio/common/hid-sensors/*.h

  echo "Installing KConfig files..."
  find . -name 'Kconfig*' -exec install -Dm644 {} "$builddir/{}" \;

  echo "Removing unneeded architectures..."
  local arch
  for arch in "$builddir"/arch/*/; do
    [[ $arch = */riscv/ ]] && continue
    echo "Removing $(basename "$arch")"
    rm -r "$arch"
  done

  echo "Installing RAS from x86..."
  install -Dt "$builddir/arch/x86/ras"  -m644 arch/x86/ras/Kconfig

  echo "Removing documentation..."
  rm -r "$builddir/Documentation"

  echo "Removing broken symlinks..."
  find -L "$builddir" -type l -printf 'Removing %P\n' -delete

  echo "Removing loose objects..."
  find "$builddir" -type f -name '*.o' -printf 'Removing %P\n' -delete

  echo "Stripping build tools..."
  local file
  while read -rd '' file; do
    case "$(file -bi "$file")" in
    application/x-sharedlib\;*) # Libraries (.so)
      strip -v $STRIP_SHARED "$file" ;;
    application/x-archive\;*) # Libraries (.a)
      strip -v $STRIP_STATIC "$file" ;;
    application/x-executable\;*) # Binaries
      strip -v $STRIP_BINARIES "$file" ;;
    application/x-pie-executable\;*) # Relocatable binaries
      strip -v $STRIP_SHARED "$file" ;;
    esac
  done < <(find "$builddir" -type f -perm -u+x ! -name vmlinux -print0)

  echo "Adding symlink..."
  mkdir -p "$pkgdir/usr/src"
  ln -sr "$builddir" "$pkgdir/usr/src/$pkgbase"
}

pkgname=("$pkgbase" "$pkgbase-soft_3rdpart" "$pkgbase-headers")
for _p in "${pkgname[@]}"; do
  eval "package_$_p() {
    $(declare -f "_package${_p#$pkgbase}")
    _package${_p#$pkgbase}
  }"
done

# vim:set ts=8 sts=2 sw=2 et:

# $Id$
# Maintainer: zer0def <zer0def@github>
# Contributor: Kaushal M <kshlmster cat gmail dog com>
# Contributor: Stefan Zwanenburg <stefan cat zwanenburg dog info>

pkgbase=kata-containers-bin
pkgname=(
  kata-runtime-bin
  kata-containers-image-bin
  linux-kata-bin
  #kata-containers-static
)
pkgver="2.4.1"
_pkgver=${pkgver/\~/-}
pkgrel=1
pkgdesc="Lightweight virtual machines for containers (version 2, binary packaging)"
arch=(x86_64)
url="https://katacontainers.io"
license=('Apache')

source=("https://github.com/kata-containers/kata-containers/releases/download/${_pkgver}/kata-static-${_pkgver}-${CARCH}.tar.xz")
sha512sums=(143609e0eee756dff86caf15a028e54fc737610bd6abf43edf6e8f850e30413f4604cd342ae86e70f0fd4e2adb98c6d489dc73f2fdfb4c5202fe0bb758bd2d8d)
b2sums=(    c2c566614dd75ba2ffa8b4af77c88426a379d0444332c29b80086bdf0a6163c27a3e47ea5bff61b474cd959568e9447612eeabb0075bb64a3ab2d7c11bbd89f4)
b3sums=(    dd97e2044080b2f3d98826cd6bead860e284d1896fbd9396182c3fef288db50c)

package_kata-runtime-bin() {
  optdepends=(
    'kata-containers-image: Disk and initrd images for booting Kata VMs'
    'linux-kata: Kernel images for booting Kata VMs'
    'qemu-headless: QEMU-hypervised Kata VMs'
    'cloud-hypervisor: Cloud-Hypervisor-based Kata VMs'
    'firecracker<0.24.0: Firecracker-based Kata VMs'
  )
  conflicts=('kata-runtime' 'kata1-runtime' 'kata2-runtime')
  provides=('kata-runtime' 'kata2-runtime')
  install=kata2-runtime.install

  install -D -m 0755 -t ${pkgdir}/usr/bin \
    ${srcdir}/opt/kata/bin/containerd-shim-kata-v2 \
    ${srcdir}/opt/kata/bin/kata-runtime \
    ${srcdir}/opt/kata/bin/kata-collect-data.sh
  #install -D -m 0755 ${srcdir}/opt/kata/libexec/kata-containers/kata-netmon ${pkgdir}/usr/lib/kata-containers/kata-netmon
  install -D -m 0644 ${srcdir}/opt/kata/share/bash-completion/completions/kata-runtime ${pkgdir}/usr/share/bash-completion/completions/kata-runtime
  install -D -m 0644 -t ${pkgdir}/usr/share/defaults/kata-containers ${srcdir}/opt/kata/share/defaults/kata-containers/*.toml
  #install -D -m 0644 ${srcdir}/opt/kata/share/kata-qemu/qemu/pvh.bin ${pkgdir}/usr/share/qemu/pvh.bin

  sed -i -e "s;/opt/kata;/usr;" -e 's/libexec/lib/' -e 's/kata-qemu/qemu/' -e 's/qemu-lite/qemu/' -e 's/qemu-vanilla/qemu/' ${pkgdir}/usr/share/defaults/kata-containers/*.toml ${pkgdir}/usr/bin/kata-collect-data.sh
}

package_kata-containers-image-bin(){
  conflicts=('kata2-containers-image')
  provides=('kata-containers-image' 'kata2-containers-image')
  install -Dm644 -t "${pkgdir}/usr/share/kata-containers/" \
    ${srcdir}/opt/kata/share/kata-containers/kata-clearlinux-latest.image \
    ${srcdir}/opt/kata/share/kata-containers/kata-alpine-*.initrd
  cd "${pkgdir}/usr/share/kata-containers/"
  ln -s kata-clearlinux-latest.image kata-containers.img
  ln -s kata-alpine-*.initrd kata-containers-initrd.img
}

package_linux-kata-bin(){
  provides=('linux-kata' 'kata-linux-container' 'kata2-linux-container')
  conflicts=('linux-kata' 'kata-linux-container' 'kata2-linux-container' 'linux-kata1' 'kata1-linux-container')
  install -Dm644 -t "${pkgdir}/usr/share/kata-containers/" \
    ${srcdir}/opt/kata/share/kata-containers/vmlinux-* \
    ${srcdir}/opt/kata/share/kata-containers/vmlinuz-*
  [ "/opt/kata" = "/opt/kata" ] && install -Dm644 -t "${pkgdir}/usr/share/kata-containers/" \
    ${srcdir}/opt/kata/share/kata-containers/config-*
}

package_kata-containers-static(){
  cp -dr --no-preserve='ownership' "${srcdir}/opt" "${pkgdir}/opt"
}

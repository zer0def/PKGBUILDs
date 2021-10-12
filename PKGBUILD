# Contributor: Robert Csordas <xdever@gmail.com>
pkgname=arch-efiboot
pkgver=1.1
pkgrel=1
arch=("any")
url="https://github.com/xdever/arch-efiboot"
depends=("binutils" "pacman")
license=('Apache')
pkgdesc="Builds bootable UEFI blobs (including kernel, initrd, ucode, cmdline) in /boot directory "
install="${pkgname}.install"
source=(
  "build_kernel.sh"
  "install.sh"
  "kernel-update.hook"
)
sha512sums=(
  "278c32c7be7190adf1e0a08acd0310d93b8308b4c016eb42040a9aa59fc7d21aac5ecce2aff5477daab7f564f80b54c626b7b043eda59282f0e4655efc0e6270"
  "e2c28ed08ea2c85c27e9a64e177d1652d4975f22c33850b0622099315f06b9a0d5c2d16191be6ed168d1a06873fa99b4b74d71177755433da80310d4966d4212"
  "920aa8f696395672f1c5b8c282790df091d81eb8fc8be8bcc49bbb78c56485d721b920b383a73b6f22bd38a321753ced329aa3639e6b9264271d005fa78996d8"
)
b2sums=(
  "4b88e1b07205dc6c374532a4a2174de2d40fd40f08c280685599a9505bc38e8e9e90d0c942f0443ca71e194344cdb5bad4eae4dc202d897d5177e183b27cf5d9"
  "37a47b18ce0a51c066de1acaa55d4900de8fc22871b474008356d5ff17234cf177d57107672c8b80319f374c1694bc6bce0853e326bf3a0be29e5d8a72f12d5b"
  "694a347d191debb85d485b95de1cb56eb0fe0452922fcf5a1e101f9d318f834c14e8f1ac0acd36cfd59d4648b6efb77dd6770522fba727479ebccc4a746b3113"
)
b3sums=(
  "cccbb8b6a2ff528809bfbb89e0de12dd23b8667e3126433600e542447e1eadcf"
  "58c3c7f5b496a39782ae79eb443dc1d4e5b1bc843e66f65e97d1226affe96a86"
  "6cd96c7422571bd22ef9e1863e420737ba2ca6a6fd7b174152cd9f11c31efeae"
)

package () {
  install -Dm755 "${srcdir}/build_kernel.sh" "${pkgdir}/usr/bin/build_efi_kernels"
  install -Dm644 "${srcdir}/kernel-update.hook" "${pkgdir}/etc/pacman.d/hooks/efi-kernel-update.hook"
  sed -i 's/\/opt\/build_kernel\.sh/\/usr\/bin\/build_efi_kernels/' "${pkgdir}/etc/pacman.d/hooks/efi-kernel-update.hook"
}

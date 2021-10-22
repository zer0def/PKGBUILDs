# Maintainer: Andrey Vihrov <andrey.vihrov at gmail.com>

pkgname=sbupdate-git
pkgver=0.r114.dd5a77d
pkgrel=1
pkgdesc="Generate and sign kernel images for UEFI Secure Boot"
arch=('any')
url="https://github.com/andreyv/sbupdate"
license=('GPL3')
install=sbupdate.install
depends=('bash>=4.4' 'systemd' 'binutils' 'sbsigntools')
makedepends=('git')
conflicts=('sbupdate')
provides=('sbupdate')
backup=('etc/sbupdate.conf')
source=(
  sbupdate
  sbupdate.conf
  50-fwupd-sign.hook
  50-sbupdate-remove.hook
  95-sbupdate.hook
  sbupdate.tmpfiles
  README.md
  LICENSE
)
validpgpkeys=('96F281C741F4F2693E96885BF6532C30466E8B3E')
sha512sums=(
  97b40b16c2d96e3a89d2a8d45fa58c948b5cafe754ced9a78259792dd9f2e46405e216597d524b2fe679465eb73340f6587b8898e0f56b424292274e9bfb4ea0
  8448ff6a881f2c397570261f195e4184c9d3934f78c6daf35a54c2e53ed9a59b21ca8cd65852123547b8e3aa65278961d0ffa260f3040b7b1e90da6547328517
  1ce02da972c6fb25a55de93d08cf81950ec2ee1c2652da1ab3f75507fc01e9a670caf1e1e26d43aa1cc16cafe0c35a7f72ce58f47687494b7fb0ded28b1dcd73
  101bb4ce14582ce774df663cfae3ea763a97a55add6a429205a4dbe2ee57613762e827c5992c09f67c4559209291dd7c22aca22e3dec2165a9a4303b9a85670d
  d8520f872888168f4b5ffdaa698f352af01ec66f1a0a70bf76b5972de4cf07fd78a4ad530bd6ca0f2ff30e905f3e6e6c75b6cb0df0ebc77d14f205a2dc939f6c
  06f3306259eb6458a593cdfc1d30a857502912c6ebdb49a05b7542ac87fa6618aa187e2b38083a5d3c2945a1b152e26d0e80469aae9d556d16022fc7ad758e83
  96a6542e6f59f1f8154eff391755714ca2280808a507ccd47bfa2fbd1dc7b74485ad9b32308517d34f3d1fd96f9a39f6503848aab84c03b46cac53ea9c2aac29
  552aec8d120c9d931769f6a6b794716fce978d0055715de21746dc0f064f4a0f72b6be42d4828b98a56715b23fa427c1f66fd20aca0ef1751cc384c420db1605
)
b2sums=(
  d9a2f696926c366839a5eaba45126f2e93610d51d0b4a5da05c3a81db405c75293ba6783d4e8bbfbfde636b7bac2e3bbd761bf1f7cc21b395e340c165a4c6597
  74602bf86c4f33d52667eeea99288f0faad692cd039d47f389092d71839574ed79919c19a09662163ccfd3c8fe9db56bf54dd27c6b605430778c71ba97d285cb
  349544a1e4c4a044bdbd5755088e1158cf3795e437c01bf77a7684946e84bffd9be9c9bb46ac670c1ebfaeb665f5af94bec8bbef92266a872f823721ac1495eb
  50ab02318ed0a2626399933d526e7d83d1e9ada9f53ca8b8d1fbf6f388b73c5366231967af92da5fdf6264c1dfe01a676d089cc6de86487445f90b43a35a2c00
  938eb04b8a39b4920e456dcd7fccfd6e7b2927d39f994e516a2c05bcd1d31e8b2955fd95babc0643716996bf112464fbb12e14def8b689e6d0040f0123598c58
  307a670370f490fd86b7c6fca57016d59c9c04401b73c6071dea0e578c0d2547d9eaaacd35d26a373c6968e4d3961b831683eaace8081ad5b0466ec1bf8bf5cf
  9587b3a975bdebca006175047b342821a57cc2b08abefcaa89b0793fe11fcf06f70d8c8206ef590c2ca6959d33677cd88b69fdf5be110392783138e04f6d168d
  399283bc59e70998486f2ae7b0af9f2f241206dd660e50808be3cef500adef2a9e8d449304f506d93bd2281e6b0729b16145173591deeb105ef545b769453e10
)
b3sums=(
  9a344fcb56a3e81ee32354482da84cb590106efac323cbc07307097fe6d5ccbd
  37d796e461ee006618a8b319584c19b1a64ca8fc9c4a1b3e5eb668144f36f222
  9cc8e1d4ff5e550a4fcb4b02f05abc6b2e86d304d638aa40c18a72ae39be6b85
  28fa604fffb3119d03e9ded07006f794bc560f622404fcef23d346b1413ddab3
  e15581ef1010db6d343d5bd6d44504735e44051fe67fd92399a862a00ed4860a
  d0b3da222d73f2ef4980bd450458d5b8f92f77d819b36f6456f6dc5b7708a015
  84af6e1bd4d687a87c9bc4de2bff38893f6ae0baa823a66b915ed2757b45c27c
  e56c075bc9f40d3299f23504f5e36816662413d4878e0ca866f38e83cbd0864c
)

pkgver() {
  printf "0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  install -Dm0755 -t "${pkgdir}/usr/bin" "${srcdir}/sbupdate"
  install -Dm0644 -t "${pkgdir}/etc" "${srcdir}/sbupdate.conf"
  install -Dm0644 -t "${pkgdir}/usr/share/libalpm/hooks" \
    "${srcdir}/50-fwupd-sign.hook" \
    "${srcdir}/50-sbupdate-remove.hook" \
    "${srcdir}/95-sbupdate.hook"
  install -Dm0644 "${srcdir}/sbupdate.tmpfiles" "${pkgdir}/usr/lib/tmpfiles.d/sbupdate.conf"
  install -Dm0644 "${srcdir}/README.md" "${pkgdir}/usr/share/doc/sbupdate"
  install -Dm0644 "${srcdir}/LICENSE" "${pkgdir}/usr/share/licenses/sbupdate"
}

# vim:set ts=2 sw=2 et:

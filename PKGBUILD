# Maintainer: Corey Hinshaw <corey(at)electrickite(dot)org>

pkgname=mkinitcpio-tpm2-encrypt
pkgver=1.6.1
pkgrel=2
pkgdesc="mkinitcpio hook that decrypts a TPM2-sealed LUKS keyfile"
url="https://github.com/electrickite/mkinitcpio-tpm2-encrypt"
arch=(any)
license=('GPL3')
depends=('mkinitcpio' 'tpm2-tools>=4.0')
source=(
  'hook_tpm2'
  'install_sd_tpm2'
  'install_tpm2'
  'README.md'
  'tpm2-cleanup.service'
  'tpm2_encrypt_hook'
  'tpm2-unseal.service'
)
sha512sums=(
  'e76f219a19a5e567726adf9e7d6925b718e42866a7806ffc55174a10bf1474d58dfe8f820bbbf94b8aef99983b2813901b564dc150f1e743601fac6f8b216ccf'
  '5422ee6ce0ac2172874e92d37e60b5314a72c46d46c46d0c6205b2a1278c3e3617c5d98e18f8f1415d4836ae1a8a7d9fd0021808b684374990ec0b4efd4a7333'
  '6795b10a7ee58e38e335f1f01a5ba0b16092cd3640fa2d319f9f7c3d1fafdfb34897fe04157b5337cdbe09b2a1ceef4fa3c1c4aeab4e75f68facef876da5bf08'
  'b60d4350b936b847031b93064edaf4def4a497cf0edd839b26404c0c22025efa86e6410e308d2bcc148bf0a50c9cf2690da711fdf9a2c96d75ed518f4cbac7a3'
  'ad45b7ff30c290e698cd53122f0dfa3bf4a7441fb30d9c8878497a3adec0dfc7dc4344aa286fedc760c0ff58ff291898b6f6e027a790346c620ab28739b62e25'
  '4d788d8491d4e2ec44466e1de255a10f6d183ef087463d0089bada013f06608cbabfe5f553fe5871e72dd293b8d9a5aea6f896da446dfeca2767bdaa728470d1'
  'e8647c990ee8be41942a2a1d472b8529fd1b2cba3d48fdf0f1333908d4ac9ff1895148a219e3a9400178e3a488089ea4e1ccfe2cf24ef78f69ce5607488eec12'
)
b2sums=(
  '30d0bff1ac2b2445fe961c0132753cb39f0e784f13ee95f9f06e3c1a323c36f4ae1367cfaf30be22697b55803e21013fb2d406f7eaf3ef376dd934e039636fe1'
  'a4ea08a466989f340382329251a043a37bed3c03d9dbe8eaf04a8f790182c580fe7ad3ad375f075f906d687a63991cc4220b21f637ee974351b351e1e3284172'
  '85ce42453ca1a88c8cd2d4c714bf1673c640777688bffc91579fc7befa3d5d6218548a78c6ddacecb005ff5ead630e7befd15b3e4c0870912f69ea33d2ea6c10'
  'cea703a0260e4a82b9cf4b167f567ba59f74be332fadc53e5d9ce7e6a7116725ee2255eab74ef348c629080bd335c60b7e260d670824b12b83668a34cb5f79c0'
  '7a58ce0cf59830130d89b68e675f726efd9e7a7b620b06170a32f8cacfce8ccf7793e1b4fdcc03a365d2bf57c07b939ab7cfa84bacc576440e5852ad55b9d458'
  '7d39f674a9ea816e485a5f5ad9b67bd8bc4099db92085940f432e5f6c9c1c16c79650c93863bbbaafd05198e266a85b48c4b8273f7431e38a8c80056f15cf40c'
  '65f9f3c3ce9a6b372aaf2c6204e22ca9ffe615f7248231c494df1be4360eb5b3f76f644ea9eb552a30287182debfcb3122f7946b7820fe748929b12f6a5ac5c4'
)
b3sums=(
  '9a63f3410443093328edd49e89bf73286cc8ef7eff4fc1dc41707f40a772bbad'
  '72ff731d1da2c2df2e08790817b31920b725516bdc820a4d1561b460ca419ab6'
  'd67c58f456646f8b3c29c4626500ca402551242b657a650b7583cf3032606b24'
  '179333e204cbdb6eb5e14c799bce60e672979a0db2be56bd6e79f07b864810db'
  'b5bff61a8d98313576e40dd0c572f7073599b681f747cee894f661e146a69ef4'
  '603892837f214a736050b92c1805dd582e2d89e25a060913eb415be642be3ccf'
  '72d4d3634a4ebf63c330e348ec12e73b809190f0bd38d72b0fe11eca256d48c6'
)

package() {
  install -Dm644 "${srcdir}/install_tpm2" "${pkgdir}/usr/lib/initcpio/install/tpm2"
  install -Dm644 "${srcdir}/install_sd_tpm2" "${pkgdir}/usr/lib/initcpio/install/sd-tpm2"
  install -Dm644 "${srcdir}/tpm2-unseal.service" "${pkgdir}/usr/lib/systemd/system/tpm2-unseal.service"
  install -Dm644 "${srcdir}/tpm2-cleanup.service" "${pkgdir}/usr/lib/systemd/system/tpm2-cleanup.service"
  install -Dm755 "${srcdir}/hook_tpm2" "${pkgdir}/usr/lib/initcpio/hooks/tpm2"
  install -Dm755 "${srcdir}/tpm2_encrypt_hook" "${pkgdir}/usr/bin/tpm2_encrypt_hook"
  install -Dm644 "${srcdir}/README.md" "${pkgdir}/usr/share/doc/${pkgname}/README"
}

# Maintainer: Corey Hinshaw <corey(at)electrickite(dot)org>

pkgname=luks-tpm2
pkgver=2.1.1
pkgrel=2
pkgdesc="Utility to manage LUKS keys sealed by a TPM 2.0"
arch=('any')
url="https://github.com/electrickite/${pkgname}"
license=('GPL3')
install="${pkgname}.install"
backup=('etc/default/luks-tpm2')
depends=('tpm2-tools>=4.0'
         'cryptsetup'
         'bash'
         'coreutils'
         'util-linux'
         'grep')
optdepends=('tpm_futurepcr: To pre-compute kernel PCR values')

source=("default"
        "${pkgname}"
        "${pkgname}.hook")
sha512sums=(
  '335460b5aeb2e30c39ddc7d666da81bdd3ffe59f6423934bbc5b62734acae624d1120e509ea5123038a70007f221a3cefa2daa6edc33883a04c16dd3fa51db9d'
  '1e0fde046474086490106e573080b72f41af2fbd4be66ac6d1fcae80fe0f1dc635b844c9abb5bb611cda37a2c85d13c58aa5d87c004e1caa7d4523b6f10eb979'
  '042940b9e330f69f25e30fb4b91340d35993419c898a47129ee8dd6aac66ae5ddae6d8511d665d2953dd56de2aeb053e7408b72872f41de4cd865e6420b2f7c7'
)
b2sums=(
  '52fa33157f6b0c62eba9b38f4fabf1ebf7ce3a14ce2913903ef39be6289994db335c59bbd1fcf5e515bc2060fa927281a257edbfd502454ce3031f2352777fc9'
  'a23f2ad518e5d74c1ef349559dfbfe6c7a002b1467a40fdbf1639a2f555a7235d69806c96d7e03b7cf1d329e3b6716970f76ff83fd3d168d5c8f0323a99f3ddc'
  '7ae37e24afb7eb65a25fdc1519087adbc8b73774016887ce2086e91a5ca9512231d0955673c21bb04504051dbd7c7a9d9b76b204998bd0179022dcbf835e0f07'
)
b3sums=(
  'ade96b30dc361232a2f1b2b128fc2218a23935f4bda904f1fcba68ba4fec0ff3'
  '32a638f1e205af0dbea54871329b69bd3b342812565c28110368895f2eb48085'
  '0fcbd2033544da4443611822f3ff0d440e4a4b1b7d820f4eb4e030d766c16840'
)

package() {
  install -Dm755 "${srcdir}/luks-tpm2" "${pkgdir}/usr/bin/luks-tpm2"
  install -Dm644 "${srcdir}/default" "${pkgdir}/etc/default/luks-tpm2"
  install -Dm644 "${srcdir}/luks-tpm2.hook" "${pkgdir}/usr/share/libalpm/hooks/luks-tpm2.hook"
} 

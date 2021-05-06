# Maintainer: Anatoly Rugalev <anatoly.rugalev gmail com>

pkgname=kubernetes-helmfile-bin
pkgver=0.139.9
pkgrel=1
pkgdesc="Deploy Kubernetes Helm Charts"
url="https://github.com/roboll/helmfile"
license=('MIT')
arch=('x86_64' 'aarch64' 'i486' 'i686')
depends=('helm')

case "${CARCH}" in
  x86_64) _CARCH=amd64; sha512sums=('fd2134976eab19c4ec4e1852e2753292116f1075fa5b40841c539ecbeb171cc22016d8b5ad1c8596af938dfb2e3acfd7a54bec5dbc812f0fead1df39aa9510d9'); b2sums=('8133f15f8d1e86df66f1ae167ae45cb44bde51309d30763469eff016edfcdf2a8526a75e141c43359caf7c433fa51f72a2db71383f7eb51f6c1f97327d597126');;
  i486) _CARCH=386; sha512sums=('9dffcdb2834020ad2664f7420f4d4bf90d96cd027f84ec9c8adadf04f83a935c4b0bb6a95a1ebc247b950a2c5534db44e9f042aa964348849ebc58ca2b7c0c38'); b2sums=('d39b9094d3ec236715c312de1270178c8a87ef3cd2d3892729ce1652e1a596d1c8b3e06454e8fd4b7cd7c282a60b3c6afb17bfefe43b9b231b5b160160a3027e');;
  i686) _CARCH=386; sha512sums=('9dffcdb2834020ad2664f7420f4d4bf90d96cd027f84ec9c8adadf04f83a935c4b0bb6a95a1ebc247b950a2c5534db44e9f042aa964348849ebc58ca2b7c0c38'); b2sums=('d39b9094d3ec236715c312de1270178c8a87ef3cd2d3892729ce1652e1a596d1c8b3e06454e8fd4b7cd7c282a60b3c6afb17bfefe43b9b231b5b160160a3027e');;
  aarch64) _CARCH=arm64; sha512sums=('9b548377c4e69931611b62d77774276b7e4088ede1d82d8302c316ed18c709942208ef647a15c3e1fd5593a972673e605ea370c561b613297926448c082d019f'); b2sums=('7eb424ff2bcf133245c22e7fb2fbdbd3d9c06cbe71a3aea5ea3c314d709981eb1fcc2dbcd40889ec45a4e5c72d52a3427e4f809c341d24752888b2386695a062');;
esac

source=("helmfile_linux_${_CARCH}_${pkgver}::https://github.com/roboll/helmfile/releases/download/v${pkgver}/helmfile_linux_${_CARCH}")
package() {
  cd "${srcdir}"
  install -d "${pkgdir}/usr/bin"
  install -m755 helmfile_linux_${_CARCH}_${pkgver} "${pkgdir}/usr/bin/helmfile"
}


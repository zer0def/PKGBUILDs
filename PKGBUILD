# Maintainer: Chih-Hsuan Yen <yan12125@gmail.com>
# Contributor: Alexander F Rødseth <xyproto@archlinux.org>
# Contributor: Daniel Micay <danielmicay@gmail.com>
# Contributor: frownlee <florez.brownlee@gmail.com>

ndkmajor=26
ndkminor=0
ndkmicro=10792818
ndkversion="${ndkmajor}.${ndkminor}.${ndkmicro}"
pkgver="${ndkmajor}"
pkgname="android-ndk-${pkgver}"
pkgrel=1
pkgdesc='Android C/C++ developer kit'
arch=('x86_64')
url='https://developer.android.com/ndk/'
license=('GPL' 'LGPL' 'custom')
options=('!strip' 'staticlibs')
backup=("etc/profile.d/android-ndk.sh")
install="android-ndk.install"
replaces=('android-ndk64')
depends=('glibc')
provides=('android-ndk')
#conflicts=('android-ndk')
optdepends=(
  'ncurses5-compat-libs: for using gdb'
  'python2: various helper scripts'
  'python: various helper scripts'
)
source=(
  "android-ndk.sh"
  "package.xml"
)
source_x86_64=("https://dl.google.com/android/repository/android-ndk-r${pkgver/./}-linux.zip")
# SHA1 sums is kept to follow upstream releases https://github.com/android-ndk/ndk/issues/673
sha1sums=(
  94ed56b4a1edf4145adeb7c63729d03e7df8fb51
  5497b9fa913de31a71ec4de98d94a882c50d7433
)
sha1sums_x86_64=('d3bef08e0e43acd9e7815538df31818692d548bb')
sha256sums=(
  493513d6b858645c8e5f92ce7476dafaab28fc95ebe9149f8905fad01499c32d
  451c4b80d3332f5175ca864e12709201ab0d1f8415329cc933bd7c267f31f79b
)
sha256sums_x86_64=('1505c2297a5b7a04ed20b5d44da5665e91bac2b7c0fbcd3ae99b6ccc3a61289a')
sha512sums=(
  7271d0dedba9c2c95f3ff6a7f4d5bae0693940d90291ad9dcbc8343d2b5a11a5da52c6750c012d6d971b266f3a30e248d2afcf8bdc206cd64f6e6487c6b2c40f
  66004f6ecaf6ae2c6a6ea92392b80280281cced620f49a23734fe779be2aede29ae7e7b4315e9b8c36612659eb326519ce11c878884d672ba5d943a50ffd9f06
)
sha512sums_x86_64=('dbbb22732502622b258d288352f04765c7f59c16531f173cc37e78a5f5c10f9b3ff90a5ac1a942a5a5b3bbebf5c8c29f94460718f02162b386f531efeab56705')
b2sums=(
  60a1d5ad85b186b1c942902425b82794d62ac3ec06e39a2de30157a7d76ee0a6a6e93790482cdd6914161eaa9a29d2b97440768150e9a62b9d060c5b6b755d6f
  31bcce4d569918e5658a920f23357a89e4d450713866204b670e5ebd5fac204895e94277dd752ef20c5e16275a6b0c6f14d1eb691593d7b722d7f9a9b168856f
)
b2sums_x86_64=('54675457c8270de3123ebb499153377be32f35c7aecea597e82c182ee0194dc48aec96e01c23e76315d3e5e1095947e717801fde2bb9ff49cecbcc84b5d2f820')
b3sums=(
  71d20e292307a5eb55f6c6f31ddbfb98633799a99e96318d420515d7c27795d9
  3bcbe8fc3bf69f7539740550a5ba762b5d806e06c3cd9f162d573532bd902778
)
b3sums_x86_64=('14fac616752da8949003e153188dbf20991d8416bc13f86672a5e45aa1d65720')

package() {
  install -dm755 "${pkgdir}/etc/profile.d" "${pkgdir}/opt/android-sdk/ndk"
  mv "android-ndk-r${pkgver}" "${pkgdir}/opt/android-sdk/ndk/${ndkversion}"
  #ndkversion="${ndkversion}" envsubst <"${srcdir}/android-ndk.sh" >"${pkgdir}/etc/profile.d/android-ndk.sh"
  ndkmajor="${ndkmajor}" ndkminor="${ndkminor}" ndkmicro="${ndkmicro}" envsubst <"${srcdir}/package.xml" >"${pkgdir}/opt/android-sdk/ndk/${ndkversion}/package.xml"

  # make sdkmanager and gradle recognize NDK
  #ln -s "/opt/android-ndk/${pkgname}" "${pkgdir}/opt/android-sdk/ndk-bundle"
}

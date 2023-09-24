# Maintainer: Jiachen Yang <farseerfc@gmail.com>
# AUR Maintainer: Vlad M. <vlad@archlinux.net>
# Contributor: Håvard Pettersson <mail@haavard.me>
# Contributor: Kevin MacMartin <prurigro at gmail dot com>

pkgname=qtox
_pkgname=qTox_enhanced
_toxextver=0.0.3
_toxcore_commit=18c170b5210c50f402525c56fa02ad17ba04e399
_toxcore_prefix="/usr/lib/${pkgname}"
pkgver=1.17.6.023
pkgrel=1
pkgdesc='a chat, voice, video, and file transfer IM client using the encrypted peer-to-peer Tox protocol'
arch=('x86_64')
url='https://github.com/Zoxcore/qTox_enhanced'
license=('GPL3')
depends=(
  'desktop-file-utils'
  'libxss'
  'openal'
  'ffmpeg'
  'qrencode'
  'qt5-svg'
  'sqlcipher'
  'libexif'
  #'toxcore'
  'libvpx'
  'sonnet5'
  'snorenotify'
  'libgl'
)
makedepends=('qt5-tools' 'git' 'check' 'cmake' 'mesa' 'libglvnd')

source=(
  "git+https://github.com/zoxcore/qTox_enhanced#tag=v${pkgver}"
  "git+https://github.com/toxext/toxext#tag=v${_toxextver}"
  "git+https://github.com/toxext/tox_extension_messages#tag=v${_toxextver}"

  "git+https://github.com/zoff99/c-toxcore#commit=${_toxcore_commit}"
  #"undo.patch"
)
sha512sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')

validpgpkeys=(
  'DA262CC93C0E1E525AD21C8596775D454B8EBF44'  # sudden6 <sudden6@gmx.at>
  'BA7883E22F9D35945BA3376053137C3033F09008'  # Zetok Zalbavar <zetok@openmailbox.org>
  '1157616BBD860C539926F8139591A163FF9BE04C'  # - antis81
  '31039166FA902CA50D05D6085AF9F2E29107C727'  # - Diadlo
  'C7A2552D0B250F983827742C133203A3AC399151'  # - initramfs
  '2880C860D95C909D3DA45C687E086DD661263264'  # - tux3
  '74ADB7A7F8ECC1009916C4E42AA8E0DA1B31FB3C'  # - AnthonyBilinski subkey
  '7EB339FE881747E701B7D472EBE36E66A8429B99'  # - AnthonyBilinski
  'CA9221C5389B7C50AA5F779352A50775BE13DF17'  # - noavarice
  '141C880E8BA25B198D0F850F7C132143C1A3A7D4'  # – tox-user
)

prepare() {
  pushd "${srcdir}/c-toxcore";
  patch -p1 <"${srcdir}/qTox_enhanced/buildscripts/patches/tc___ftv2_capabilities.patch"
  popd

  pushd qTox_enhanced
  sed -e 's|-Werror||' -i CMakeLists.txt  # disable -Werror for release packaging
  popd
}

build() {
  mkdir -p "${srcdir}/c-toxcore/build" "${srcdir}/c-toxcore/pkgdir"
  pushd "c-toxcore/build"
  cmake .. \
    -DCMAKE_INSTALL_PREFIX="${_toxcore_prefix}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DBOOTSTRAP_DAEMON=OFF
  make
  #make test
  make DESTDIR="${srcdir}/c-toxcore/pkgdir" install
  popd

  sed -i "s#${_toxcore_prefix}#${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}#g" "${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/lib/pkgconfig/"*.pc
  export PKG_CONFIG_PATH="${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/lib/pkgconfig"

  local pkgroot cmake_prefix_path="${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}${cmake_prefix_path:+;${cmake_prefix_path}}"
  export CXXFLAGS="${CXXFLAGS} -fpermissive"
  export CXXFLAGS="${CXXFLAGS} -I${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/include -L${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/lib"
  for i in toxext tox_extension_messages qTox_enhanced; do
    pushd "${i}"
    pkgroot="${srcdir}/${i}"; mkdir -p "${pkgroot}/build" "${pkgroot}/pkgdir"; cd "${pkgroot}/build"
    cmake .. \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_PREFIX_PATH="${cmake_prefix_path}" \
      -DDESKTOP_NOTIFICATIONS=ON \
      -DGIT_DESCRIBE="v${pkgver}"
    make
    #make test
    [ "${i}" = "qTox_enhanced" ] || make DESTDIR="${pkgroot}/pkgdir" install
    cmake_prefix_path="${pkgroot}/pkgdir/usr${cmake_prefix_path:+;${cmake_prefix_path}}"
    export PKG_CONFIG_PATH="${srcdir}/${i}/pkgdir${_toxcore_prefix}/lib/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"
    popd
  done
}

check() {
  cd "${srcdir}/qTox_enhanced/build"
  export LD_LIBRARY_PATH="${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
  make test
}

package() {
  pushd "c-toxcore/build"
  make DESTDIR="${pkgdir}" install
  popd

  pushd "${srcdir}/qTox_enhanced/build"
  make DESTDIR="${pkgdir}" install
  popd

  mv "${pkgdir}/usr/bin/qtox" "${pkgdir}${_toxcore_prefix}/bin/qtox"
  cat <<EOF >"${pkgdir}/usr/bin/qtox"
#!/bin/sh
LD_LIBRARY_PATH="${_toxcore_prefix}/lib\${LD_LIBRARY_PATH:+:\${LD_LIBRARY_PATH}}" "\${0%/*}/../lib/${pkgname}/bin/qtox"
EOF
  chmod +x "${pkgdir}/usr/bin/qtox"
}

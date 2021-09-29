# Maintainer: Markus Hovorka <m.hovorka@live.de>
# Contributor: Felix Yan <felixonmars@archlinux.org>
# Contributor: Andrea Scarpino <andrea@archlinux.org>

ANDROID_PLATFORM="${ANDROID_PLATFORM:-30}"
ANDROID_NDK_VER="${ANDROID_NDK_VER:-21.3.6528147}"  # min?
#ANDROID_NDK_VER="${ANDROID_NDK_VER:-22.1.7171670}"  # max?
case "${ANDROID_ARCH:-${CARCH}}" in
  x86_64)
    ANDROID_ARCH=x86_64
    ANDROID_ABI=x86_64-linux-android
    OPENSSL_ARCH=x86_64
  ;;
  i*86)
    ANDROID_ARCH=x86
    ANDROID_ABI=i686-linux-android
    OPENSSL_ARCH=x86
  ;;
  arm64*|aarch64)
    ANDROID_ARCH=arm64-v8a
    ANDROID_ABI=aarch64-linux-android
    OPENSSL_ARCH=arm64
  ;;
  arm*)
    ANDROID_ARCH=armeabi-v7a
    ANDROID_ABI=arm-linux-androideabi
    OPENSSL_ARCH=arm
  ;;
esac
_qt_ver=5.12.5
_openssl_ver="${ANDROID_OPENSSL_VER:-1.1.1n}"
pkgver="${_qt_ver}_ssl${_openssl_ver}"
_prefix="/opt/qt${_qt_ver%.*}${ANDROID_TOGGLE:+/${ANDROID_ARCH}}"

pkgname="qt${_qt_ver%.*}${ANDROID_TOGGLE:+-${ANDROID_ARCH}}"
pkgrel=1
arch=('i686' 'x86_64')
url='http://qt.io/'
license=('GPL3' 'LGPL' 'FDL' 'custom')
pkgdesc='A cross-platform application and UI framework'
options=(!strip !buildflags staticlibs !emptydirs)
depends=('libjpeg-turbo' 'xcb-util-keysyms' 'xcb-util-wm' 'xcb-util-image'
         'icu' 'tslib' 'libinput' 'libxkbcommon-x11' 'jasper' 'libmng'
         'libwebp' 'libpulse' 'openal' 'libxcomposite' 'pciutils'  'libxss'
         'libvpx' 'opus' 'libevent' 'jsoncpp' 'snappy' 'nss' 'libxslt'
         'gst-plugins-base-libs' 'libxrandr' 'libsrtp' 'protobuf' 'libxdamage'
         'minizip' 'ffmpeg' 'openssl')
makedepends=('mtdev' 'libfbclient' 'libmariadbclient' 'unixodbc' 'alsa-lib' 
             'postgresql-libs' 'gtk2' 'cups' 'freetds' 'bluez-libs'
             'libxcursor' 'git' 'gperf' 'python' 'python2' 'git'
)
optdepends=('qt5-svg: to use SVG icon themes'
            'postgresql-libs: PostgreSQL driver'
            'libmariadbclient: MariaDB driver'
            'unixodbc: ODBC driver'
            'libfbclient: Firebird/iBase driver'
            'freetds: MS SQL driver'
            'mtdev: evdev plugin'
            'gtk2: GTK2 plugin'
            'bluez-libs: for sdpscanner')
source=(
  "https://download.qt.io/archive/qt/${_qt_ver%.*}/${_qt_ver}/single/qt-everywhere-src-${_qt_ver}.tar.xz"
  "https://www.openssl.org/source/openssl-${_openssl_ver}.tar.gz"

  '0001-gcc11.patch'
  '0002-qt5.12.5-jp2.patch'

  # https://github.com/qt/qtwebengine-chromium/commit/ac7ecedc9d8538d595b6f11d141bf128ecc9aefb
  # https://bugs.gentoo.org/show_bug.cgi?id=694960#c7 # https://codereview.qt-project.org/c/qt/qtwebengine-chromium/+/274842
  # https://bugs.gentoo.org/show_bug.cgi?id=734356#c16 # https://codereview.qt-project.org/c/qt/qtwebengine-chromium/+/310361
  '0003-qt5.12.5-qtwebengine.patch'
)
sha512sums=(
  '69544e3aa3419a85fd5f7a31625d2f2267eeb35c76dfdebc7fd004aa58d91e441305be0ecfca8b96b6d4594938c1ffcdc093cc7901c9ddf69c49d4fa91e065e2'
  '1937796736613dcf4105a54e42ecb61f95a1cea74677156f9459aea0f2c95159359e766089632bf364ee6b0d28d661eb9957bce8fecc9d2436378d8d79e8d0a4'

  '37da2b705f5ed37c771f93ae36f523f5dab280e6df4ce157c99ab072ecad3994696ea7388c0525871f9385c3ed3b2186e21bd8de962bdaef71bc3b1d7880ceb9'
  '0f24b01bb261f5d8cf9ec3cf775d050c253fe5135ffaf970b6e512d9b87a6115aaff94eae4248a901ccb3b81f10cd9491ef5a3ecb740bcf5122f719555f6053b'
  '76063687ef3dfd2aecc5ea4f0a11e666b44cc630534ab149a17457ca1aeabba99aadf481e1b321d799817626da7eadb39a4f118dbbc610e01adac0d50ea63e20'
)
b2sums=(
  '3a37de7ee68138683984b3d94fa65e19e720570ca5efcda8fcf679514b79d8efe27c8aec8cfe91bc9056ca411355ecd35def371b9e3228bf9d923094723503b2'
  'af530258d9f7ca4f1bd1c6c344eb385e766e465c9341dd08797676165f67bbb82d3fd549ed7559dc12fb8c9c4db5e04fa6ec7ab729ec1467f5e8bce469ff5398'

  '07b29ba37a4c5818c2c233ccde7cc688ac7ae0347fa93dce6da2b12be09a7cd105136c8a4dbbc7ce48800cfa21fd154457437ae0ca454db4d57b021cf5332c83'
  '1aa8940ab886818c7ed08f2d02de04b2aff6f8c05b24d6dbb777b8ae95121e025b434acdab1faea279e26a130b8fa8d6224de3283af55cf1a2299faab319f7a5'
  'abb816246de2cb1794aef473a3e17857e73dfe0ec37d24afe6db181f7bf1f4ed2f7478e9c8a6c422f27dcc33e13990a8fb9031ce78ea26c22d3b787539cab9c2'
)
b3sums=(
  '03dbfc92287d30dd8d593a1cd3e89686e81899ce71e87a0c0011d52af498d975'
  '2540b77a7abd0f4b4ff2301e5bbdc15a12b7629c9a3b09549d997ae04fc18dbf'

  'b6a3cbf2da2fb4de3da52e3d25d8f9aced80bb6f706deff5b28afd29b6b1c699'
  '193f37b229cce0d9deb6afe376137413b5489c8a3f42c93a9c01868d8482d8c8'
  '34fbe69335cbae13eea322f84d76ecd8eccc1ff99d1af2a0184769eeddf7fb99'
)
_nomake=('tests')
_skip=(
  'qtwayland'  # linker breakage? either QtWayland or QtWebEngine (through old Chromium 69's Ozone UI)
)
_disable=()
# arch-dependent?
[ "${ANDROID_PLATFORM}" -lt 21 ] && _skip+=('qtconnectivity' 'qtspeech') && _disable+=('feature-geoservices_mapboxgl') ||:
if [ -n "${ANDROID_TOGGLE}" ]; then
  makedepends+=('android-ndk' 'android-sdk' 'android-sdk-build-tools' 'perl')
  _config_args=(
    # useful: https://wiki.qt.io/Qt_5.12_Tools_and_Versions
    '--disable-rpath'
    '-xplatform' 'android-clang'
    '-android-sdk' '/opt/android-sdk'
    '-android-arch' "${ANDROID_ARCH}"
    #'-android-abis' "${ANDROID_ARCH1},${ANDROID_ARCH2}"
    '-android-ndk' "/opt/android-sdk/ndk/${ANDROID_NDK_VER}"
    '-android-ndk-host' "linux-${CARCH}"
    '-android-ndk-platform' "android-${ANDROID_PLATFORM}"
    '-no-xcb-xinput'
    #'-no-qpa-platform-guard' '-no-sql-mysql' '-no-dbus'
  )
  source+=(
    'android-configure.patch'
  )
  sha512sums+=(
    '00a08a1af81413eb2224f763ddbe22290d29aa5c1bd9ea199864f193b8f7b7bf8a74797cad26041a71479f0a45416a253b1d9ad0759ccfd018c640e9bcd99f3b'
  )
  b2sums+=(
    '536026bc086bf158aca461854ad374a2628712d3dd523c6f72001de13b47f5eeb106f2d3f8675c33035669877264ca7e479e8d6d018c7c31be0949ed072560ca'
  )
  b3sums+=(
    'e2920178b6b183fe21f12a110c34c2b0024da948464c0d1727547b5b0280fdb6'
  )
else
  _config_args=(
    '-plugin-sql-psql' '-plugin-sql-mysql' '-plugin-sql-sqlite' '-plugin-sql-odbc'
    '-plugin-sql-ibase' '-system-sqlite' '-system-pcre' '-system-harfbuzz'
  )
fi

prepare() {
  cd "${srcdir}"

  local _openssl_dir="${srcdir}/openssl-${_openssl_ver}"
  #cp -r "${_openssl_dir}" "${_openssl_dir}-orig"
  cd "${_openssl_dir}"
  #[ -z "${ANDROID_TOGGLE}" ] || for i in "${srcdir}/openssl-"*".patch"; do patch -p1 <"${i}"; done
  sed -i 's/-mandroid//' Configurations/15-android.conf

  #cp -r "qt-everywhere-src-${_qt_ver}" "qt-everywhere-src-${_qt_ver}-orig"
  cd "${srcdir}/qt-everywhere-src-${_qt_ver}"
  for i in "${srcdir}/0"*".patch"; do patch -p1 <"${i}"; done
  [ -z "${ANDROID_TOGGLE}" ] || for i in "${srcdir}/android-"*".patch"; do patch -p1 <"${i}"; done
  sed -i "s/android-21/android-${ANDROID_PLATFORM}/g" qtbase/configure.pri \
    qtconnectivity/src/android/bluetooth/bluetooth.pro \
    qtspeech/src/plugins/tts/android/jar/jar.pro
}

build() {
  if [ -n "${ANDROID_TOGGLE}" ]; then
    local _openssl_dir="${srcdir}/openssl-${_openssl_ver}"

    # https://doc.qt.io/qt-5.12/android-openssl-support.html
    cd "${_openssl_dir}"
    export ANDROID_NDK_HOME="/opt/android-sdk/ndk/${ANDROID_NDK_VER}"
    PATH="${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-${CARCH}/${ANDROID_ABI}-linux-android}/bin:${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-${CARCH}/bin${PATH:+:${PATH}}" \
      ./Configure -D__ANDROID_API__="${ANDROID_PLATFORM}" shared "android-${OPENSSL_ARCH}"
    make include/openssl/opensslconf.h
    #make SHLIB_VERSION_NUMBER= SHLIB_EXT=_1_1.so build_libs

    _config_args+=("-I${_openssl_dir}/include")
    echo "INCLUDEPATH += ${_openssl_dir}/include" >> "${srcdir}/qt-everywhere-src-${_qt_ver}/qtbase/src/network/network.pro"
    if [ -n "${ANDROID_OPENSSL_LINKED}" ]; then
      _config_args+=('-openssl-linked')
      #export OPENSSL_LIBS='-L/usr/lib/openssl-1.0 -lssl -lcrypto'
    else
      _config_args+=('-openssl-runtime')
    fi
  else
    _config_args+=('-openssl-linked')
  fi

  cd "${srcdir}/qt-everywhere-src-${_qt_ver}"
  # https://bugs.gentoo.org/show_bug.cgi?id=810343#c12 suggests adding `-DUSE_X11`
  ./configure -confirm-license -opensource -v \
    -no-use-gold-linker \
    -optimized-qmake \
    -recheck-all \
    -prefix "${_prefix}" \
    ${_nomake[@]/#/-nomake } \
    ${_skip[@]/#/-skip } \
    ${_disable[@]/#/-no-} \
    ${_config_args[@]}

  #echo -e '\nCONFIG += install_ok' >> "${srcdir}/qt-everywhere-src-${_qt_ver}/qtdoc/examples/examples.pro"
  #echo -e '\nCONFIG += install_ok' >> "${srcdir}/qt-everywhere-src-${_qt_ver}/qtdoc/examples/demos/demos.pro"
  echo -e '\nCONFIG += install_ok' | tee -a "${srcdir}/qt-everywhere-src-${_qt_ver}/qtdoc/examples/demos/"*/*.pro >/dev/null

  make ${ANDROID_TOGGLE:+-j1}  # race condition in assimp/qgltf
}

package() {
  cd "${srcdir}/qt-everywhere-src-${_qt_ver}"
  make INSTALL_ROOT="${pkgdir}" install

  sed -i '/QMAKE_PRL_BUILD_DIR/d' "${pkgdir}${_prefix}/lib/"*.prl

  #find "${pkgdir}${_prefix}/bin" -type f ! -name '*.pl' -print0 | xargs -0 -P0 -- strip -s
  #find "${pkgdir}${_prefix}/lib" -type f -name 'lib*.so' -print0 | xargs -0 -P0 -- ${ANDROID_STRIP} -g --strip-unneeded
#  find "${pkgdir}${_prefix}/lib" -type f \( -name 'lib*.a' ! -name 'libQt5Bootstrap.a' ! -name 'libQt5QmlDevTools.a' \) -print0 | xargs -0 -P0 -- ${ANDROID_STRIP} -g
  #find "${pkgdir}${_prefix}/plugins" -type f -name 'lib*.so' -print0 | xargs -0 -P0 -- ${ANDROID_STRIP} -g --strip-unneeded
  #find "${pkgdir}${_prefix}/qml" -type f -name 'lib*.so' -print0 | xargs -0 -P0 ${ANDROID_STRIP} -g --strip-unneeded
  cp -rvf qtbase/src/android/jar/src/org/qtproject/qt5/android/* "${pkgdir}${_prefix}/src/android/java/src/org/qtproject/qt5/android/"
}

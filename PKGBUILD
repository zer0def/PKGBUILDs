pkgname=nvidia-fabricmanager
pkgver=555.42.02.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_dash='-'
_ver_prefix=''
_ver_suffix=''
_devel_dash="$(echo -n ${dash:+-}${_ver_suffix:+-}|head -c1)"
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/nvidia-fabric${_dash:+-}manager${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/nvidia-fabric${_devel_dash:+-}manager-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/nvidia-fabric${_dash:+-}manager${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.aarch64.rpm"
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/nvidia-fabric${_devel_dash:+-}manager-devel-${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.aarch64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/fabricmanager/linux-${_archdir}/fabricmanager-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/fabricmanager/linux-${_archdir}/fabricmanager-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
fi
if [ "${_arm64}x" != "x" ]; then
sha256sums_aarch64=(
  '931ccdc0a60c6e170bf0fe98f256445a0c70656116dbca75d543ac9fe9f0fbf0'
  '3cce7fada90cc09a28f62364b69ff1f83b578e491dc8ef289d055c30d557745d'
)
sha512sums_aarch64=(
  '4cf5291c40ce55824fc95305485c008807ca82f703b090176bb6c4d8a386260732c8bfb15e6eb5b1be0e57572a1928f61c88d7934928df007c9d9b6c95baabb2'
  'cbbe5618d0bd84cb500b064b28ac24a936bd43eac1548f2a201d8586f0248602936535e0d4ae64fbd4aa8516ec895b1c37705ec77b58b150ae0c3b85990940de'
)
b2sums_aarch64=(
  '20740edc12b830caf1bde2f779b26416ab912281dfb0041896082b8920e80c7958411713d60a9b02ab963c58ec85b774fdbdfc3894e76346484287f8f56899dc'
  'bf2e27a53f35d79903a1e63220523c8417d89cfe9105b2660a634ebbb6068c1d7aad26ee2069bd4d98a9c11f4f53f1654e4b1e3db4ec163ccc26da0870655492'
)
b3sums_aarch64=(
  '4c94ac57c781695636a5ad8a63d865aad13fa938f1fb5a1e5b2836c8af3e6535'
  'cf82fd09770df87e8fd0da54ce247d508c329366b0352d84bb685104cbc7ff43'
)
fi
sha256sums_x86_64=(
  '852e58fce0521cf94c033444effccc9071fa5df7187b926105fbaf7f716cc5ce'
  '3cd42bd3e5e234912a134bd8d3711cb0b08ad36bbc45e6de0190804c4414fb1e'
)
sha512sums_x86_64=(
  '4191d965b0ab4554101738a43713f84317473aaf0ee41184525a6a2cc4a513d2de34f45516063f722e6a9b96037bc245c8f9f9ca2d47826ab5bbca0152d934f0'
  '84f3e1df9323051a12354bb2c64aebfb65df5dea2077c65b405437afbff72f378efc98de19fd54e284fd6eb0d34a72bdb5808cf51a48e65704716975922d5fe6'
)
b2sums_x86_64=(
  'ef3e3d1b6f7ea79276b9e298668acdf7f22751f5dfe19fe499ef523f29e0156d7d13106474d9c8cf93031b20cd87010fafca2280288c2e082cfce6a2edb330e6'
  'b9f088e78c8f6d93e1d342ed3a8b1c45007e26e0990da2288670cd0b80cf9005a59e9af9d5a4dcde7d22ffcbad3966402a091bd81a6cc53f638c9ebdce2e2501'
)
b3sums_x86_64=(
  'a334d5dd7e3798190f74f678e623b9b9e050d3f41925afce75f2286d39372a8a'
  '90fa73c762dd3974108dce20433b36c9d80895d872c36b1398776806ea040edd'
)

package(){
  [ ${#source_x86_64[@]} -gt 1 ] && {
    bsdtar -C "${srcdir}" -xf "${srcdir}/nvidia-fabric${_dash:+-}manager${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"
    bsdtar -C "${srcdir}" -xf "${srcdir}/nvidia-fabric${_devel_dash:+-}manager-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"

    mkdir -p "${srcdir}/usr/lib" "${srcdir}/usr/share/licenses/${pkgname}"
    mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"
    [ ! -d "${srcdir}/usr/share/doc" ] || mv "${srcdir}/usr/share/doc/${pkgname}/"* "${srcdir}/usr/share/licenses/${pkgname}"
    #mv "${srcdir}/usr/share/nvidia" "${srcdir}/usr/share/${pkgname}"
    rm -rf "${srcdir}/usr/lib64" "${srcdir}/usr/share/doc"
    mv "${srcdir}/usr" "${pkgdir}"
  } || {
    _srcdir="${srcdir}/fabricmanager-linux-${_archdir}-${pkgver}-archive"
    mv "${_srcdir}/etc/"* "${_srcdir}/share/nvidia/nvswitch/"
    mkdir -p "${_srcdir}/lib/systemd"; mv "${_srcdir}/systemd" "${_srcdir}/lib/systemd/system"
    mkdir -p "${_srcdir}/share/licenses/${pkgname}"; mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${_srcdir}/share/licenses/${pkgname}"
    rmdir "${_srcdir}/etc"; rm -rf "${_srcdir}/sbin"
    mkdir -p "${pkgdir}/usr"; mv "${_srcdir}/"* "${pkgdir}/usr"
  }
}

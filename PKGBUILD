pkgname=nvidia-fabricmanager
pkgver=525.105.17
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_dash=''
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
  'd79cb5900769e1bbad071221e1fb278d38dce09a072bddadf57c0122cbd256d5'
)
sha512sums_aarch64=(
  'b777109f76741052f001bd5a962758fa6745bffab1513fb50080ccb5136fd149a24705a53e390186aa381842f08724e21303cba810cc80d1f667dcd4fab68e27'
)
b2sums_aarch64=(
  'aaf912f58d297d9c4524821a9fbc1681e65ad4089f8dcdf93003acd7a9d2f697a25d75f98422d2d73639e3f4a75f5e77351e186135f18a375f11b70759a77c96'
)
b3sums_aarch64=(
  'd8e04b24ed45a73fa41264f795dbf03df37ab2792baf7224a54dfc9204e049ce'
)
fi
sha256sums_x86_64=(
  'fb48fcb427ff111065345654d8da3ad71322148541045be4e00bc7c93de8371c'
)
sha512sums_x86_64=(
  'e143a6405b1452257b2aafea7f9dc2400fb7199df2296d841f913c68a073c869f6468aca6057dc30741ec0d66b6bae56b284692046f38f5fe8d0e7cfdf5fa93b'
)
b2sums_x86_64=(
  'e4e30a1ff571f4d2d2536425af36dc03b2dd08cd0865efb9218f4b17a6572b705ff4cd46b6802894c4c158d0bc0b67aad9d7fd0540ef1350525fef67a464557c'
)
b3sums_x86_64=(
  'a4a2a7f39293f70b79fb6448899139db3ad1ddd05fdc8646d082dad9ac639cd5'
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

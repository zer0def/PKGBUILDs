pkgname=nvidia-fabricmanager
pkgver=515.86.01
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
  '1b4daa53bcc033373f119cd10e3f80b39eada62156886407f13ea5508135c24e'
)
sha512sums_aarch64=(
  '0b68aa0a15437cd2a89e4a3229f482f99d238629769f030e75b0dfdaef3c009c0cfa6c11e279444c420778a766c7062fcaea495a74504f612559f95ef8abd7ab'
)
b2sums_aarch64=(
  '52362ec8946792957053d9b7a63ef7e8c4351c09e618dd7a2d721f7042eab8e0a90d134b29b3baae0f50f0808ad900a8468b1c2fe369a7362835870677825418'
)
b3sums_aarch64=(
  '0e593a60f6e9e9ecddf302f7d2a058cb7eb7a5902c99f0f99e074169afdae0f4'
)
fi
sha256sums_x86_64=(
  '89ea847148cb44ed6a1ee138a32f48583b4725f95b4f4d2496953c6d150e2876'
)
sha512sums_x86_64=(
  'bed0cea84431e785f18471bfa5e329bdb387692aeaf6e3b2dac2ae0a90563c7d0cefa2896dff60784c28055822b4fd628b7c6437db41a7662fb321c3e6850a6a'
)
b2sums_x86_64=(
  '5d0f12de7b96ad1fb02e0a28fd47259f14a184325c302a0724d008ee388224b2a45e0864de398f1f19f7a461e9cc47215f76d63f1cd48743b6034e61f37daf69'
)
b3sums_x86_64=(
  '45d720a573cb8d19851c4df0c41e12ba2f86f2eb138b239cff928a5015f3ba23'
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

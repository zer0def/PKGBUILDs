pkgname=nvidia-fabricmanager
pkgver=550.54.14
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
  '0014ae3ea1d8ba4d8a0feb60b53099dce68d12acdaba5e595fce48a689ac581f'
)
sha512sums_aarch64=(
  '81b9af7ce665c72cfd54636e6c108b3a2694cc9077f9c17b68516255ae6d3a6a33d959630126ab5004aaa0174cb591c1ef4e38521d950fe04b6c5b32c762719d'
)
b2sums_aarch64=(
  'e151de264e527f381420c37b1b99c1245268f1da4f7670724d337c0b7f82322ff26cb65722e6667b3bb085d8b6bd9e96cdf95ef9ab5a97c6cf2d661d949236ff'
)
b3sums_aarch64=(
  'f20dac91f95f38747c6e1a56733f92f2c99f6332d35f925c8b2c3bcc966e273a'
)
fi
sha256sums_x86_64=(
  'e8637797d0aabf705583c8156131030b37d814eacf0a525d0bc8fdac4ae9db5d'
)
sha512sums_x86_64=(
  '24a9fcd1e7aa1fcfb881748b00a33b4efe0d988f7f11de1ec750c15dd067a5da512a70a4dd95b9a921c7b5ab3cd86fbbea415e404e47cbaf023328c4d7335469'
)
b2sums_x86_64=(
  '6dea08d464287a4a1c57159d5d92dfe79ceea7f68a7d51befcd5c3a69abba639bd952f7842cfbbe3a88a2d02ed53fdbb49e2a17d62ff0f642742df79ea0f19c3'
)
b3sums_x86_64=(
  '2c02d74cd6afd6f2f33cc89c1a6b42988017739afa35f375012b2debdcfac044'
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

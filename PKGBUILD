pkgname=nvidia-fabricmanager
pkgver=560.28.03.1
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
  '891f58826dd0b571bc9684bbc43698000cd4c78fc3fd35b5685b6660ef3c0486'
  'eb3a49e712e68130ac72f72fab9df71c12efe8a1abad174333a8c08c040ffe40'
)
sha512sums_aarch64=(
  '6f40877284485fddac3073fa755e8448b8f6232cfcaacb914fd883dcb4a98cb176cabc7c134cac8acdfa733ad799c180e566f7bdc5beefa98a4b5436c294b92d'
  'a9e0ec2c4ad1ab28354e600b5b51b27c7878867bb21ef5303be5cc56087a5645ad51098f48be5fcf727fcf7619edb1b7019cedf4144913360760c5781456e2e5'
)
b2sums_aarch64=(
  'a6092272359ac49c6929079685c8a515133851ae15e57b01f94de86186274a61f2a965495bc012c175c96b7767bffbfdfae3a8fa1aa4e8bff14c85803fbb36d1'
  '3b3a45051da3ccbf216c1c96fa667ccde2b4d737c1ed00fcad35f6499603057907e1def2f147ff65f3761a7fbeebfa7632b9ac6149517a4edcad0919a5e9dbd3'
)
b3sums_aarch64=(
  'eebd3c72cb8964099f65928ead7adb5480e66be83659a3753a6c2c9e976edbef'
  '4444f53c68c046d0e5e0c2d13e39f1ecdf40811d944c6c337c1b9932fbea7c34'
)
fi
sha256sums_x86_64=(
  'c273fac6bb7d400d80584572ae6e178563790b2bf5cb187fb4b829411fdf2d55'
  'ddac9215294b4064edf287261ef6829b39da2f3a3567f2d4778cdeac95b26081'
)
sha512sums_x86_64=(
  'a842ebc906375a4a268cb3deb4a10c11de559cd0c4a403294f2faec672a15c8714a93aea1bcf62ee721891755721d0ac47f16cce339ac6c1bbc19efa7eff9110'
  '0b513a7f92b5b56c212523ffe72c9cfc58328d0fcff8592b1d9707410bac299a0d974a9fc3caed62010133f899f245b26985aec266de3c69fe21536e4a905dcc'
)
b2sums_x86_64=(
  '6fb753da0da2e52c07026d60506b3bb78daab1caaaef567ff0dd5d9fc0798660c8b0fda6616d34612d0ed853d40f10d9ed045c85d81499b43b78339c8ff13925'
  '00632cd548b0050ffa7badb09258d454d4a9a46f9cb9790e3f4093da479b01bba905a31dfc0a070a4288c9b1c1aa6ae4c26d375ace234997dd0b7a226abbb5d0'
)
b3sums_x86_64=(
  '1beb7c196d91f9451b34f5a7882b91688ded9e9d93316e847ba0c0ad3a2a3fac'
  '1cad0bd02a08c7fd14a484d6b6b91fee51a898dc11ac2a7dc2b93e465d9c52ee'
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

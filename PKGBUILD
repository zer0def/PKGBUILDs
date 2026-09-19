pkgname=nvidia-fabricmanager
pkgver=595.45.04.1
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
_ver_suffix='-'
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
  '95dec38cea993627e6c6a858a03322e1217abf4c459cd0232a57a5c4d50fb9b8'
  'fbb2de5399788fccdd3780d232a81c94d8c4f87930389c5e9a13cd3632131156'
)
sha512sums_aarch64=(
  '20d228a63a90e17dea040365969ee5b3c299164506cf646d45b65ba6d31fb76b7223b6b1e35f2bdbcd128fe68ab2324caac573d52291365012706d74420edb49'
  '8a9e2c99b15889c6e198386a1d290fa79c1276580cc36c4f5b85670e7c3a695eb080bb07d1bfb4419fe8d426eb7a2bb184eb30cd675df1f620eb3f57dd2cac4c'
)
b2sums_aarch64=(
  '4cb61c67e14616fe968f1a8c179856b9c270c0ba5dc2ba6b6aa91fa9cf928d1ff9e51e512bf13b11598caa0a1de57f391f934046521758898f52d67981c686be'
  'b2afa71b2541642035a4061c51df4323e9edc2fb4f407e3a38f84900afd7398f21e5d31cbd813dfc42eb9974f962da933e54451d923acfef91081cf804290cfa'
)
b3sums_aarch64=(
  'bec6ac413b6e37a510072321c54741e4c9d0d4f5d3617255162e108d9fc59f1a'
  'baaa5e55724557fb59cd0f0fe97a1709a86ae86b5591b9944c1125315505e4ae'
)
fi
sha256sums_x86_64=(
  'e528512907b920c4d2c55e4ce20d990eb10fe0d0ecb5d8926a77a9a6561092bd'
  '27ab2207b57d4bb2c3455f9c573633b7ac3355f9d740637a77c2c71146ae7cf6'
)
sha512sums_x86_64=(
  '5dc4ace1d6b82f36166f9f2c25b5914c5f84698571475ae894210eb7a15d308ffa9380d6f839fda1d6345e2635b1c3781cbf066fde6bba1c2248f0408edd10b4'
  'b42de8fde00134ca717d0bbf6bfba8973e09f554d1643b48856652e9968a9f5e445bf1829c5687440274aca192c5035ff61a5b465292eeab19619623e5686aac'
)
b2sums_x86_64=(
  '9600d47f57b86d5e9cab489a1fd71c77e984b08775928978676a7e2c4a24f91325da9868bc556af57c58dcf25c50967e63adac0c2085f6d662c2d7d586f6be5a'
  '7b47fa5e5ef8aada280a7bca669fb449c4246ebe643066ec4b864b01f3130523dc7ae801b3fdec24fae32d9fbd3176587fa126c93fe196c07558d85bf41f089f'
)
b3sums_x86_64=(
  'ce2c11f72b50901ecf50e8aac5256b55438301707b5ea0a6f40d590d2e87c787'
  '476e1979970bc75312978566bb58120ae3a42c025684c28f02aa7ed349fa30bf'
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

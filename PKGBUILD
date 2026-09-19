pkgname=nvidia-fabricmanager
pkgver=545.23.06.1
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
  '98eb7eae708cbdc05b2e8bcfe7b759fe088c9500edbd028291a39fba414ef9a3'
  '53ee9d4610cb9fda08c348a8b7463fa2d61a0364e25df24561914e2c9bf54ad4'
)
sha512sums_aarch64=(
  'fa623f4186bbe7b955b444a44c81b2eb29f0c83351f70ea87db709dd4d92a356dc38559e7b4b9cf4aa2b46189be52e58906694ec6c77f1588e6cb438cbc4b651'
  'd53cf92d5cc8c099520e66a0215fbf44775d798a7a3cd8ca97c786b0b64cdffd8f5952e78476f66f0a277ebe538ada92807ecdfc129647d5b7b2fff84031b22f'
)
b2sums_aarch64=(
  'be7b68f0671cb2772b1abff2cedc4e9fe39875348c483eb1b9d12ee72d2e3cdb21a6ee5823d174b7f7d4dbb16db308e1bb1f62de494f8f4e79ce95e3413653e0'
  'ad92473b43330ae13a3ae1b656a5739275aa7653ff4acd539b595cfe4a24298ffc053be55a0de3e16ed6ac9cfb812144c219da316eba1abd1d12e17235e60f5c'
)
b3sums_aarch64=(
  '20073a4b8c1f074e2747b8ad644be02b2c8230cfc4bd484b1869b50d0348ad29'
  'e6796bc1f316703a6cad19533ad10744695c27e9dd28a7842d2dea0126b86e60'
)
fi
sha256sums_x86_64=(
  '24cc1a9e25bcf605f28ae47a6faf35458461660de3f2e9397ced4b15e0b20c54'
  '83a3432ef414c06d0695e99d30b419380763ed33eaa1ae20fbcf000919be9c92'
)
sha512sums_x86_64=(
  '48c57bb920f04c7a7a19265c155887e8e769ff8e4fdae6dd6d8d4b26d447b3f52e9ed7272bf4ee8d7789860b80390b771378b4bf69645d3fb4883b9ae03e8332'
  'c65c14676747847ed474b4d6864e8741d139019f0bc3ba8d4f8272a68e42aab5192f78ba7ba8dca335c7591f3e72c5e3f9177a9d39cef3289a670e492ad6a9c5'
)
b2sums_x86_64=(
  'b41afa0ad89bb01bbba104575d14c39fb6ecc2ae982c25dc73f4edec83fce4af114367e7faa5d6df022aad0414c03313c0cb80f2d8df5a3d6c97e531a245d2b0'
  'f22e84810d4312a2d71ec4d25929cf066ae352d3cba6c610f6076366672a786ddfbbbb73a31d93c57a1022c017f0690e732bcf9459a24c6f7cf35448032df74f'
)
b3sums_x86_64=(
  'ef2aea7298254e944564a984f5c990630f22da9104234be75e304c3cc964b7ce'
  '78e436a281d91df502225d92536d614791f2235bfb2c0b92865b9e2f0ca05a35'
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

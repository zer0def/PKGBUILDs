pkgname=nvidia-fabricmanager
pkgver=530.30.02.1
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
  'dab848e029ed852bbb0e00d21a730b9583dda5a47f1a3986889914822521cf75'
  '9952f4e5b8550f387a4cc89803391b899184682c1daede36166f3ecaba0cd8ae'
)
sha512sums_aarch64=(
  '785e29f697e4aa1026e0469ff0edf96ebfe5abc6da2fcf8e3d3117bb89cba44658199018ad91fa5e90d7187891cb98a47181c8370e74878a0dec2be87fb3b92d'
  '2c9a4b0cde00056019b1a290117810e2f1590235f8600d1246ce29045657ff5be5a3fbc6c7f459e25f97d057c4fa3c4b19bea8e8af0e6c29547e18229b20737e'
)
b2sums_aarch64=(
  'fc1dbe50b9c8568179b0d5d9b7f1b10f576a9ddd89816940808821f0143523bd5017620c03e3bbd9dd55fa27a72654e977b009a1e94d660699d671898caa6f66'
  '7ddd96eaeff2bd286c7d046dc8abd9406aec13e9e8a2695523b8d383805560726e943b84c20dcf0f2c5a19065cb6c3103c05dbf156ef85fc3844f73a588a0107'
)
b3sums_aarch64=(
  'c7d789f8c768a86870ff21e66641c92abd4bdc672f10abdf1dd0c6e9ad618072'
  'a2e52b75f2d215f401351e20fecc6a771f07758d3ab1fe36ffb1ff4f92069f59'
)
fi
sha256sums_x86_64=(
  '209df55eefbdec0e0fd03e36b761374bb38d4f3fb7f043ad67cf291428aea003'
  '286a44df1fff7fc6be5239291f954141de241dad17977a5af55f0ec47fb545ec'
)
sha512sums_x86_64=(
  'b9528e1b093ffa13fe5d2158e7236ccd211e410026cb0af55300d106a846bacd16a843d63c87a2be2bc0a4304720f8f488e9de85a0e5bad496c2287ad2f17bd5'
  'bc8323e9fc23805bfa395b58d17cdbd593ab8e64933268d2db40ee5f3c88a68b77eec02f8c780ef0de4822fdac9f74155068ef584afe246f51bf86da0febd387'
)
b2sums_x86_64=(
  '568f4ba9884333425874e67792de52c064d924ed9bee9b0b450b1359324837a3bce9f91e8f7d7840f3b90ed76b284e888e74166f7986ae514abcd7b3342e6631'
  '37c3d72e9ef60f438597849ef57220d8426993336a924a72930254cfe0076e485ea15f1e6e903e852367f850a162cd4c9dc668716a280f6fdf2f4ccd34b294aa'
)
b3sums_x86_64=(
  '75b3cd7e206e1cb104980b8955989daebf1fc6950d4fbe460baf0253780c1880'
  'dcfcfbf9334354791eb15945a292035568b17590e372a400fdc311f22cccefe5'
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

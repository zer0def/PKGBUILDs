pkgname=nvidia-fabricmanager
pkgver=520.61.05.1
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
  'f8b0589af44d0d682194e4adc0525a1dbf4bd32cbcec1c4831a78199672ed869'
  '6f6656e063bb140254080fd03a266d32b4b3fb9f58c7916db66468326a7e0e62'
)
sha512sums_aarch64=(
  '2ccc5ac202d01ca2f5ffc0f573724f1ae821427fc02a621b7b7fa65bea98ef5ff13f228e1cc983fc815b707ec1359a3f2681249d509f5e40ad311000d3cfd541'
  'aecac5be43dcf9abe5580933090b1483ca27c7df9a37c474c445f7c3fd36b27e29769277bd706d1182411fba08bee6ae5ac93214275196073771099381d0aa4e'
)
b2sums_aarch64=(
  'b692e35c29a9d70596d029c80c6fab0eaabed476a2639a025c8f3f08a98a2b8ff1e160b3ea858672a48ca9cab6007cbdc2895c63d61b6bc13bd1ad4d9d232a58'
  '46da709299df68f6482724d32919b963cbd168e8af0ba9a09c07e75b77b4f77bdf36a95785cbc9c3d7c454e4d23ad24e2e9b3f5cf028e4d5bc81a5d70e9c4a0c'
)
b3sums_aarch64=(
  'ea211ae950f89d137b07f2e4f25962918b0a9cc9366fc0c6fb670001c886152c'
  'bbf96a2e52046c01e949dba9a2d7f2a84ffa7b8884ee0e5aff7c643987d7bbf9'
)
fi
sha256sums_x86_64=(
  '028b1c0cd7e2d6dd61783408e81f4a28213591b34932ca27bf80822d2ece356d'
  'ba5e0caffa7d6efd8a983db0617b7138e036e0ffd3dc5bcba715d691e004d18d'
)
sha512sums_x86_64=(
  '2fe7006a76d594579df3d8313fd0704681cc6e6c5dc3175e6d972337e7014d84d958960a39d8ba28e49ce9df60475c4b9921f2340798c97041af634af7108bdf'
  '18588b520ba751342669ab96c48baf368eaf26f93ac2a8e15425a32c99a5248239899a1404b23356c851a7a85592ce3230f760c964c66cc267a974cf2b0efa86'
)
b2sums_x86_64=(
  '3d2160cbc31f75514a278b4b9629452ef17834f75471d9fa455e0f962848e37e69b6fabad5bb1eb2a8d836c0ec37a81e6c54a8dab5c6725b7c4b5f2889c3111c'
  '82bbe647289174a2b6bcd15b13f15d2fc8a4b642c76c11ac80e842b90c8c14b6144cac1a73530fcee7300d6b61278f8addd02b2f21b96d17f855eab51231d442'
)
b3sums_x86_64=(
  '795e59ac88b7c9ae0c7d94d45d93fa93cdd0b079d6960ac7903edb08aca2bd1f'
  'c7c3633c80843efab84221aeae79f2533c23f11a1d7c76b75409bbc69f3afd43'
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

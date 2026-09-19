pkgname=nvidia-fabricmanager
pkgver=535.288.01
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
  'f938270090745ea377ea14d707a9366f0da4b38687988b2edccab289e2df998d'
)
sha512sums_aarch64=(
  '7bee06c1356e6419e5afb18a9b0e8fe69c24eb989e254b16b31c5245e813f346ec097e08b9dbeaa1f6b6f3ededafee79773b020d99818dab3705387c3488990c'
)
b2sums_aarch64=(
  'aad8d18117a5423e95214708556cfa2a76f4752940524c7214d143e82ae7344a885b4dc560e85071c55f6167a1c6f2855f5f4a16abd1085e29f7c0188c46cf6a'
)
b3sums_aarch64=(
  'd7542a81cc86c168d6a75bbf71e8da04b8b35ce5421b2b14e30fea8e55488d79'
)
fi
sha256sums_x86_64=(
  '6d53a73e601ad800c60b5142233d130324bd95c70d3dadcae692508605f8e694'
)
sha512sums_x86_64=(
  'a48b9e71c0d59fb6c6b72d289b0d46b31ad522dc8da6bf102af03533320c7799cbe475230fe34af49a633170f645adddfb5b8dbb5222a6b1c015099b0b4ee088'
)
b2sums_x86_64=(
  '9b077c3d915a5006c0ab75f3818732e3cab18783b4c883e3dfc99dc973095cf3c3750087fb9079bfc8fcf6d0e3c685eaf7bcd54df7fd5b59a77bf0b20702fa4d'
)
b3sums_x86_64=(
  '7b0f267541af2ab6db4268352a8541b456d4f5c52153b90174f1694560e0015b'
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

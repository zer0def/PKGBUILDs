pkgname=nvidia-fabricmanager
pkgver=590.44.01.1
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
  'a64f0a8244c9fd5bc7c125db1ea41f98932b98b8be35382d25db7d5faed95779'
  'c45c8fa356ca0bc5b743661d05406abea0231fd39c3c71467913a07528e55fe6'
)
sha512sums_aarch64=(
  'fa8372e13dac5fe3a720db46808363cec625ff629a22a6cee7f2d41814b04870962eaeaa0be987876dea9414d1241ea0c7197dbda91d0dbbb696213f86798ef8'
  'e0462e809b0653e953d61db348f06c5fe7710343b9319de63c74fa0c38c6ad6713d1d3807c4f626f28e196e84257f8a06d52608cec910e256dd8463dd7e19a8b'
)
b2sums_aarch64=(
  'bf20870f2f5e8e3c4fbdf734ecb92781a05961dbadb4d413bda5e08d8a8338a78ce5a3e8e9c16759d33ad6d32041c6fe47f576f6eb0b13e8ecba9245b8cdb033'
  'fc60ef1421740bf01947f1cc41166629ccdbe45119a29de77d8e532f4b8da2ba7873dc61f35f2cf0090c08873726eb284811a9b79134c5981a7907eebea66ed0'
)
b3sums_aarch64=(
  '3660576fb99c01b872b7f4ea92469a78e20d23a69fc72077cc82d29d0f84f956'
  '181333df3c7a600c6070c9a249db188cff7d28e8d92809ae5f360d2c0b91c38d'
)
fi
sha256sums_x86_64=(
  '75fa59e01e26cf12d685d7247c8ee1aa718f3ffc7b000a8ea70f275a3f02b920'
  '225800488db67a20d6d5051adb254743155e97a56a6c17810e2b9f25dcfaf700'
)
sha512sums_x86_64=(
  '7f060b5f008aa9087cba1f5d8c1df552df0be4c91020a4b8a0314ca99cb0ab454c92db4aaff0b2493fcc3d3495d6d8aae57fc4e2817e00da71d2aa34d545d271'
  '18a048beae4595cad180e7dfb37b1893bfa7dcfaba89b9f5e2014f2501cc5118078564cd8f9d8f0a00c8e2bee10d30fc366c39f893925bbc9a84fb43ff52bbb4'
)
b2sums_x86_64=(
  'f23c0fcc4bb5c6a9c5edb3bcb513022c0de8e460eeabbbfaee02474838a26b0ba367cac502fcc665d62a23374392191760f99a764308043be9521313d8d264f8'
  '76a2a66662a62217437303ebbd57b689ce26ca23c3615a87423446fc16283616fb517a866586f1d09e2bca84e73b6a49d8a1c2ef7914ad8454976120c306540d'
)
b3sums_x86_64=(
  '26c0dc4b602ab01a8bda94e4d37255a050e4b701b05d1201cbb93100b68d51e5'
  '60cc271024eeaf8c983407fd1298f9d612e7a210f1ad7008e223568d51ca0a3e'
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

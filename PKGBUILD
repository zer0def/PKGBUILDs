pkgname=nvidia-fabricmanager
pkgver=515.43.04.1
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
  'da32984b47a363312c0d14f48d7e12f8bd94294706b31a7ff9afe65be8e4c8b9'
  '59d1c572d9986f2f0fc9e7c488e5310be30b1a5ca045eb5ef6e168e31ad591a4'
)
sha512sums_aarch64=(
  '412a503149295394a1d8f268c89457771fcfa2c7559a822a22f0b4f5b4b215676c34bf56011db98154e7a4ef73fa222d13c29f46c15a2ef87e28f3e355d56dc6'
  'a48c600181775d918ed1352823b40a73a732fd7e79c93b330d1cc28cae2f4be063815191a2be4478fb778db496e0e4d2452341bdcb8addc565c4a10949f90b22'
)
b2sums_aarch64=(
  '2a75a5ccefbe97e7d27141d2493886d4924e191b749cf11a63bfd2edee2dd6ed0709aabb9257e06064dafc60d5a4f486f940c586edffdc00022c5f1f97b98604'
  '2a148c190e41c2ab332dc07bf609977e6570c165e97d1e40163e172bbfdcbf4da53c6b151611b2c174a452d10a20f01e4075c6dd6eb585b45f7d3a6e42651d20'
)
b3sums_aarch64=(
  '554652dc84a3a6ac0bb0423b1252edcb06b9e98746e3a9d80efac28a0fb96778'
  '2b3e15c2a23ee0a350dee338f94d166241454ab8ccbab14d2d3e83de9d934d06'
)
fi
sha256sums_x86_64=(
  '656d427d72df37fb04dc0e50f2e5cbcba57371a2b40bab974a223c3f98b87753'
  'dc231f27d7779477539e34a2084403eb4489547eefdf52df35128ed3bc80fcd7'
)
sha512sums_x86_64=(
  'f35369297c9984abd011726fe5000265bf954594ef8c240281ab174235888cc2333a73d5744227213229279fd2cfbb5efa46264a46164763533d6f2699e2df8d'
  '9e886af1eb27207f065b1b88e3e65a0f215d4426b4f0ad17e97b33b375c69b443dbdc3b4e8c6e1fcef4eb4379d4fce302740e56c6fe57ff6f0c2b93288c0564c'
)
b2sums_x86_64=(
  '040d5414f39c64d387999b9d1c36de348957755b7cd62fd1edbe096d4d6da848c955050bc70c325e12715c0f44e57ed866c25150695845b25914f15aaa24b931'
  '96dfb4b079595fc0d0fac4c0564624cbc49cc6b1d1acc353c95104823b299f3438496c22239377291fc1f4e9ce55b15adf18e33e3642e8a9e3085764ff934daf'
)
b3sums_x86_64=(
  '0b69c8b7038b2d172c8c95fdff5922537d001e14e3db5ad1348b4875312006ce'
  'ea803d525a73d01e0304aa3e89b8adbc634d91aee2003ccc59e6e04cdbaafc4f'
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

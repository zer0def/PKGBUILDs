pkgname=nvidia-fabricmanager
pkgver=450.172.01
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_dash=''
_ver_prefix='x'
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
  '29ca34f306502c1ba4b23ed6ff2f028e92724f03c127fb940876f95a0af53fcf'
  '29ca34f306502c1ba4b23ed6ff2f028e92724f03c127fb940876f95a0af53fcf'
)
sha512sums_aarch64=(
  '2547b773c4c43c31104d866b61fa1f6fd5c8dd064e41b18b7e8ef85e9fe8af8c88608708075b5dc8454863709b20a03bef6aa71b25f2723a518d1189b62ff173'
  '2547b773c4c43c31104d866b61fa1f6fd5c8dd064e41b18b7e8ef85e9fe8af8c88608708075b5dc8454863709b20a03bef6aa71b25f2723a518d1189b62ff173'
)
b2sums_aarch64=(
  'f6849958447f37189d692f6174405a3de9e1739518156f924d8a242ad535055d6c53a5f7f0626e7a1c50a4b6851dfc61f9526dbdd9cca45b3e41b82bbf7d6d69'
  'f6849958447f37189d692f6174405a3de9e1739518156f924d8a242ad535055d6c53a5f7f0626e7a1c50a4b6851dfc61f9526dbdd9cca45b3e41b82bbf7d6d69'
)
b3sums_aarch64=(
  '767a89845fd18728e68d8757356a92b41f0193a3525310cfcb2b91fa4523012a'
  '767a89845fd18728e68d8757356a92b41f0193a3525310cfcb2b91fa4523012a'
)
fi
sha256sums_x86_64=(
  '4e650b6c1b3aaa366e326c7167f65903ecfb3c1496ef97ad88674239592e7775'
)
sha512sums_x86_64=(
  'dabb57a1052267fb8c728cffe3de7c315385dfe79ebc10e61f5aefc015a56faa9051a78b6e85d061909ab14f45fd75b37c53a1c2cf82f880f7bd470356b48093'
)
b2sums_x86_64=(
  '5d6f6be1422792516932ddb753febe36840d312106fbe4c24395021644c0813b79d94d7a6157a7f38f2d0a7755233866df9668adc5f59d8e234bb86facfa844c'
)
b3sums_x86_64=(
  '9d33c8be173add25d6994b39eecdc4169fde10aca35e381436a456bac93a55e9'
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

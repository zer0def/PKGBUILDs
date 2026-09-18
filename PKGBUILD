pkgname=nvidia-fabricmanager
pkgver=460.27.04.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_dash=''
_ver_prefix='-'
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
  '2328a7eddaeba3270d00ea6f8ddbc4d8fee03cb7edfb18bf83818c42771137d6'
  'f84ffbcca59ae9327c02afb73763aa2e1b5285eb4a1a5fbbdb061fc8a5b23704'
)
sha512sums_x86_64=(
  '4af4599542bff030f8c3779b649cee94712b6f5bbcb2b734f319573ab3c3bcb05585029946dd60694886dd16137cd9826c9e36bb58906f823d6bc13032553044'
  '19a15cf5fb9a4897913cb289592c57196abe6b63aa2dcee87c93a21583b8c890f442b4c9fdf6b07f86c81e2a4adb9a4b9ef82541f7ca21eab634937737b81e81'
)
b2sums_x86_64=(
  'f6a3ef94acbebbae3ecf8ba6a270225855c2d963104e3764373705f0c502f836bd22ce123c10c8035b44f4ffaf4b8df7cc56d5fffe3e85c8bdbfd1406f0bc5f0'
  '7e274380e3b8c1dbab712c0f3b54c9f79fd350ae93783994653eabfdd8fa278a490b76111533e18a6f5d37846b5b9c60350e095f1473dc36f4c5f54c9159f1dc'
)
b3sums_x86_64=(
  '313ef6fdaebb6ee9caa5970348b28e17b4f887ce0af9e9f48835f795599b9463'
  '5675dfcc672d5fd5c36e047451bf27e995d526c5f47de720ab5553d0d8f5da6f'
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

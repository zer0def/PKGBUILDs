pkgname=nvidia-fabricmanager
pkgver=545.23.08.1
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
  '6f0ea0585470e59c762f8c3efd863603bb8b867d0470759526d50af59ffa8840'
  '93d53cf7ca64511614109575bf2d850bb3334c3c6023ddcbecae289c2fde1eb8'
)
sha512sums_aarch64=(
  '7924bfb4ed24c02219f524285140e0d2aee7eb3bd2326f9495a381a20d3afbbbce0b90b4a52c7ea698777556150e4cc21f1698ffa5ec5dd14b297834bf4ce7a3'
  'aaf2b1416b7bc9d9692caeef0c07bce0b61ae21ab2a224ceb3aeab95777a0128571213819c8f3dbd17c5a5f367caa6b27e4af57994e9e94a570465e160aa5cef'
)
b2sums_aarch64=(
  '94e0e2139ffdb2c9a5303fcd167fa0208387b1dda51450464255a6b942f71cc398c1227209115f6c47bde54dbbd3f41d96b52b2098c386be1a0e8ead985cd46d'
  'b1eb552c4efee962fdb2d71ca23a449760a2dc1c721b4547cdcf093f299aea8fc0482287860d598a8d7be3a03fa5873f5261e1f4bb03e86bfb715f46300fb051'
)
b3sums_aarch64=(
  '3160fbb2411dd34f3c06bc7618b448b4d5d07eb0c50bd83b0a5a8cc31abf4c0c'
  'd6d018a5e3558d7fd970a8b226425069db645bb02d4645ac6757f6964858d8ed'
)
fi
sha256sums_x86_64=(
  '9a1a156ff95277958594f24f462de610d4781e3b4ac2c08e26166b5a1289aee6'
  '3e18ab72080965589e8520f48b1b1f48a79aa64f532093061ae6663fb068d54b'
)
sha512sums_x86_64=(
  '4bd068ef2db8d5434fab9dea3de057d65b96a8a689760f53a7196dfe67b159f42f245cb9ee767fafc300000ac0210691fd9fd49cdee62cb6410205cf87994914'
  'b414eca91a405267dc55b4813aba48b4cd98b8deb0e26ae8328e1893a56266556de8825829ec5dfbc8580a308ee7e1da3d1913b9463da926093116e7e4afcc43'
)
b2sums_x86_64=(
  '61d7cb310d095e2dfc54196e8eaa9a202cdf617cad2bc3f6bb75d82dd1cc1f37b50283d2f457e477cc749ad98cb86181a8964895966bb4d2fce323045b68fab5'
  '973d6003b3f9f2bc1906bcf1e963f1535b35088cd911cf14542cb3bfa21d2e27305c37d68829acee665e3fec5ecfed8cf96cd69e70ebb9e30bd4128a32dd9f4e'
)
b3sums_x86_64=(
  '03f0fda2362f418abff827a04624af2e1bcdda4b02f03d63ba28a49d7576b1e5'
  'c6ceee5d3f5f5085544e32ae775cb73a4a4076f8a5bb47c16b9fb2bfeb0609ad'
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

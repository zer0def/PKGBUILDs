pkgname=nvidia-fabricmanager
pkgver=610.43.02.1
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
  'fc88ab4b2adaa1de0a12a512b30b57d9c7138be2e1504937afc0b7d976be8260'
  '0ba787cef224feb05d52cdbb9b157ca1063d6ca09f17a547ab9dda311ffbc774'
)
sha512sums_aarch64=(
  'a8493b79a75454f54a9f58884064d0a735b1ab42a7c302421f7ea5f1c8ef01ead6aed5c4153ed96f4f69126774e5b69902c577d64d09e938540c29f404a0cf34'
  'e535a476687296f5fbdaf3b952fbd12fc2a003e7cb8970ab2b6fb6b7c912eb3faece0ffdc23205229d5822cd217711aa8c3ba727e9712b0d7718c9f7029063ac'
)
b2sums_aarch64=(
  '4d30c6f4e65f87a0c9d8ec1edaf828eba7f57ec28c34a00886a3b9f1977ac96f1c32a633c5aaa768ab980c058cf428b3c2536fe31c1a50fc072d1b91ea57219c'
  '2de7187a8069621ed55ef6d8515a6179c0c078fc2fbaa9abf304693e2bc6b2b416b376b4ead1aef79d845ee1512576e8fb757082f658d8e51c78e979d996faf6'
)
b3sums_aarch64=(
  '8b3e63ad1ad4a421532b5d980990ea17ac4fb95e33234339e004a048d9989225'
  '9fdeba9944b7352b09426d6c4961bda234bd90a54f9af8c0cdf7a3a5ec09878d'
)
fi
sha256sums_x86_64=(
  'a6ca614f24cd81db71b3cc2eb7fe32d6259896a9936ae8496633b462b02b9720'
  '59fb38d538a28cf68ff27d6fd0745764a5faf382d110043a4dde7751d5175e34'
)
sha512sums_x86_64=(
  '0c8609c94b87a6794bbc5cd638d8c0146c46b84264276767e58b2eae6fd89f6605be263810788fad6c8fa3aa96e3660e71ea2d794239e2c97d4d016977eb0e1a'
  '243c39fd65e5fc6705d7c74a4cbcc83ac2ce6f589f8fe2f4b2027dfe4aec74d7682e67e61ec3e981dbae0245663eac6f2e5027be4d73e0cd58e45e2a616ee205'
)
b2sums_x86_64=(
  '8c368a775857f453aa12d9ab029142d09f6b7e4e5703326950e8ffdbe8853c8222f3f9f68ef5e26d7b6b498615bb0c8f7d0bac724d865a000584379553777ed0'
  'c96f54f4b05cd87f6c714abfb0d16906f5d6ee5c0b3c02e23e2b5b08fc7789fc6982382db5fe570cfa0da4302603f19798d8d1a6ed4fcde4b618c8dcb0350145'
)
b3sums_x86_64=(
  'f6473becfbcad39e9c452d7fded070abd120a0e397cf25cde25ad5d0c3159b24'
  '71ab5ded4ec5b0f785d43bad1cfd5541e752768dbf8ac82ac4b665c63ed02098'
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

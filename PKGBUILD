pkgname=libnvidia-nscq
pkgver=575.51.03.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix='-'
_ver_suffix=''
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvidia-nscq${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/libnvidia-nscq${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.aarch64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
fi
if [ "${_arm64}x" != "x" ]; then
sha256sums_aarch64=(
  '595bd86eb78f1e9a156bb3e8c6af9345f1160fbab32ee6d9ae7fc01aabed1004'
)
sha512sums_aarch64=(
  '979ba752f59e5633266dba2ea177cd5d476729d4f6eb7eaca66a865460ab51dc79a8fc850d6377e0690b4d7a8e95579f113c163e30e8cc92e08dd57b70ed5508'
)
b2sums_aarch64=(
  '19b729132d4f8974f8a91d0a5712bd34f7afb7e04f2932083a0ac929e698a3803427b4e0903930657681cd284bba70c69a169139e7b4f1cdc254a34f56731d64'
)
b3sums_aarch64=(
  '95e141ed85c54f4bce9ad604f6c45b6ba9788f383a4bfb46cca447072118949f'
)
fi
sha256sums_x86_64=(
  '4f316b6222fb4bddf6fd9f7f261396f0bb544c842e4c635f9c869813492e3679'
)
sha512sums_x86_64=(
  'f0544488e4b492863be1455069f10d4da922bd32eb62734a7496b432436952ae2b22972630f14d8fad5bb5cae3b8a12903f8d011059db6e1fc5bd57a6b1028c4'
)
b2sums_x86_64=(
  '054b4aacb6cbbf9591c5c9207a5d377e86a93662b73fcd480bf92ca45d915f4654f810ce3a8f630ba1232f79f89a843c528f145014433c12082624093f0de4de'
)
b3sums_x86_64=(
  'c02e4987d0385968b538e26b8b84a251755d14aaa3b4907556ec94f9f539da08'
)

package(){
  mkdir -p "${pkgdir}/usr"
  [ "${pkgver##*.}" = "1" ] && {
    mv "${srcdir}/usr/lib64" "${pkgdir}/usr/lib"
  } || {
    _srcdir="${srcdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive"
    mkdir -p "${pkgdir}/usr/share/licenses"
    mv "${_srcdir}/lib" "${pkgdir}/usr"
    mv "${_srcdir}/LICENSE" "${pkgdir}/usr/share/licenses/libnvidia-nscq"
  }
}

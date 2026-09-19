pkgname=libnvidia-nscq
pkgver=595.45.04.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
_ver_suffix='-'
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
  'bd29c162a5e263776355ef1ef47ce26fe31bafc1417d9265ce4331dea756a953'
)
sha512sums_aarch64=(
  '90cecc240314d44a2f8047ec4bd097ea757f8ad84fa47fa100d925c2facd5bc4d5c756de39b8bf64b4be19f688a44b5525b2118207a40bcee844972aef2e0bcc'
)
b2sums_aarch64=(
  '68aead45f18fbbd826dd59247f0c8cc406a1acb01c45c4d328122d1105b46628a56b47f94901dc865064fc066b4c7b66939123be4a9611d9605c18d73b7ccad9'
)
b3sums_aarch64=(
  'f772afe5b21bc1f0ecd777d2db3bca4666b80a8feba5a0e337d49093048f8651'
)
fi
sha256sums_x86_64=(
  'fed6e4bfe6730377cb8bc842d1f3b0d4f888506ff9258835860e326fffebe8e4'
)
sha512sums_x86_64=(
  '5ecb4d7875c7a1449d1f80673a5cbaac2c62a11f9b033f514af343933683fdbc166fed344cc46e67520720278d24ee2a3f299925303a0b210c614bdf5ea79ee7'
)
b2sums_x86_64=(
  'afd4e5c51121d58e09fb621d450e7fc9de1a4022f1d885af35e41f9593e98e37dd4c2beb639b009ff61d5b8d0a6309665a293cb640d10cd63dbad2073daaaf4c'
)
b3sums_x86_64=(
  '690c2512f172349ee3bfb1197bfdd8a63199c53a3d63df9b4d2a52a7fe1455c6'
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

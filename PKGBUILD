pkgname=libnvidia-nscq
pkgver=545.23.08.1
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
  '335d55dfe1096439f4b117b74e79dc5959ce3bdf5f8858fec833749bdbac90ba'
)
sha512sums_aarch64=(
  'e6c88dbff1f40ac0311da418c8eeace359d46768b817b4b3721a5034c44baf3603a295ad08b7d7ce2323d91bb023424b95cd82e5b37ec7b6fd9c3ff52e584230'
)
b2sums_aarch64=(
  '5a66443813fcbf475016cb55d8ee4af3899d014e5be9fa96f7a8db275f9536390cbf3eb4869280e68821a5d3d5aaa2e5bde2a40ad5b94408b04058f2242a1695'
)
b3sums_aarch64=(
  'd799216a87724c47619e04f07e21d27e8cef84e105ddcebcc3d0668fa1929683'
)
fi
sha256sums_x86_64=(
  '3e25cd8f4ad9de61d3e096c1d1e360d068769ff4d2a91334afac19da29845359'
)
sha512sums_x86_64=(
  '6cfc33116c71fcf50db8e91ab351ab615bb341d3365502fda90bfae497ccfeb67f3a349aac2a93d69343d0f729b766f4f11e06ada0a241d4bfccd9acce5bdaed'
)
b2sums_x86_64=(
  '9c052d524110ad53cc844a459c3c43f35a457ac4fdc63c7125b41f1afff6b66a67340dbee8ac68db723520806aa6d2eda8bc9e43a95605fcba3c3e1f62144f60'
)
b3sums_x86_64=(
  '418f54c799a28713d1a44f58961d820d681bff41e51195e2968fcc3f3fccb29e'
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

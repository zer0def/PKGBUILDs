pkgname=libnvidia-nscq
pkgver=535.161.07
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
  'd8627c0fb71e063dfbcb6d4856f71a27baeef84d1f9e022fe554d7c0fccb6243'
)
sha512sums_aarch64=(
  'a82a0afec0afb9f02bf65b1bb05d90408877bc8bac3d7ebed377092017648e9626f334edf9147ee6848eed0e21a09a535cba52ab0abbd03212bbd541b382a698'
)
b2sums_aarch64=(
  'ca9ba32d56ccca755a5cce1fdd15a2a53d93b6a0bb3ca84fc76deb0bba80d812e1547e03e86a05d238a331ed6082fc857becd81dee68f148e8adefd2c4f0a596'
)
b3sums_aarch64=(
  '0605858a6ba3c97bb707da5f3123a0362d59127c8d45f47f16fac4153355837a'
)
fi
sha256sums_x86_64=(
  'c5384d2191a18d7ec7e176aed1ce277e9b1601963288a941dad7795ff3a06504'
)
sha512sums_x86_64=(
  '8183be067b959c7589d78e3161c1abbd86b027e69eca89aa28e79a6240e29d297d7f4d26f8cb4121291e6857793b824a5cfd20b0859fbffe8968397d1b6c3bff'
)
b2sums_x86_64=(
  'f087a250f2283903a15de236d12a63e0684ad9822c92d94f1c05cbcecbae56866f59adde43c174bcf18c433b1d6016baedfc5a48ea857fd9eaf28871d41ef8d0'
)
b3sums_x86_64=(
  '28685adf01106486e35720aad6219a9b39a256f71c2792af47e488f3318f9474'
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

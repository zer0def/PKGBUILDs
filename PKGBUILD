pkgname=libnvidia-nscq
pkgver=580.126.16
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
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
  'f8088282d6e0ba9d5df4f102afab210568299465dd70511bb26c3b1bc0f04c98'
)
sha512sums_aarch64=(
  '0c2c1ad5e3db811433b99d95e6a0fdbb6a9b3f3659b50b78d99f80b08dabccf10358f1910c7c1539cfbb2c8f6cb0b4ea54415d41171c07ea3ed80036f534bdc5'
)
b2sums_aarch64=(
  '9cc98551a036c2daa1b2a4136c26235cafa140d0e1a0eca4de1f26ba01a4bcce9200a3671577005b254ad95eaeac4fa2e5bd9ef2596b945f8891dd6a42cc20bf'
)
b3sums_aarch64=(
  '315ef0fbf91125ab3ef63d5c629b4dff3befccab1372f48bfb82e24dc32a9fe9'
)
fi
sha256sums_x86_64=(
  'c7dff48f989d6dde68ff31b7446e77230ee3af8bd550e388cebe9a0d4f5972f7'
)
sha512sums_x86_64=(
  '26d4c0b1be3c68de2d86e15057cd4177c7b35dfb121c096e7097a601cf62ef658fbc6dd459b8c28e2a849ac28f5a6e604ec87d4f14ae665deb695887997370bf'
)
b2sums_x86_64=(
  'fe3af6a8d5544ad69b929bb97f2a40fd793b43b0e05378ca427f59541ede53a87e5e939799c3ea443e449639788ebccd52de90efe8a8ae150d6e217abd75401f'
)
b3sums_x86_64=(
  '8cce21780a55f2b6110e2f2cb9823dde6fa62e8410a75365ec285f28447de500'
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

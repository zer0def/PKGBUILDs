pkgname=libnvidia-nscq
pkgver=580.167.08
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
  '175c7285fda3a068574558272a4c6b44b7593a3799d832a9451d4e9fe9ce5765'
)
sha512sums_aarch64=(
  '760d21dc3c58fa26574ed65c130515d39b4ca43a6051c0d07848efc120a8482f2203c25772f3eb50d7a8869f15d035b0001d2576adaa2f2ee20f3a9936caf349'
)
b2sums_aarch64=(
  '2762d333e13344ec1fd52dbecc8c7cc0f7697f44a7f5662e37fc84da915e6f0982d4f3b4519dc33c1c48c01c5f7958a2c1c98e27e20bc72574581e78fde188e0'
)
b3sums_aarch64=(
  '15f6c10a7e7149b14991217efdd48981978c9b499b986647f7252e779be6f2d9'
)
fi
sha256sums_x86_64=(
  '5575a1ef588e8683abc5bb290c90a5c6be2455856b53758cc20bcc2d7beb7f03'
)
sha512sums_x86_64=(
  '9ba2dbec7cf8b9c38131e4408d5dfde01ad9bcd88f1df9fbf327d2e15d66129c66bde9afe6f01e4c7f3338bcfd77ece8aaafe19746c8ff0ece7aacf7122ab479'
)
b2sums_x86_64=(
  '23138b55b5a7d0ce6b1509058eb4620e75f7183070235bd1e68a66ecf627e225af84d2ae3cb86ad54082df7253d526d0f7f48922cf1dce26dd86269ba8a6c122'
)
b3sums_x86_64=(
  'e70d41243f67107027098e32915f6ac77ecb97b4b18425cd8072d5a8780b20fe'
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

pkgname=libnvidia-nscq
pkgver=535.54.03
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
  '8ee52b4f763062e68ab41ed0af7b0daf2ce9d4c0bd3d27aeb14059584703e915'
)
sha512sums_aarch64=(
  'ae2dcb7560e012d8a45ea5839dd792da7fe41fa2f264c65004bb84f08ba422b0c5bad6cea247450754595ee6238c36aae3f85b76d587c3fb1dd09faa038ac18b'
)
b2sums_aarch64=(
  'b68f63e1d721831a5f72cd5f7faa93a67faf78bb9edc93d289f0e01ddb799df93d5ffe4e3e206525b093d89fba3bc3f1f409521115d850f244be319152d194f7'
)
b3sums_aarch64=(
  'd0674f06968000cb4ccf74935c3c96a1cf21450bd35eaed37a8fe14b941b25a0'
)
fi
sha256sums_x86_64=(
  '3433f2b46c47efeec54fc1eef990859b070801af9dfdcb5305783380e322e833'
)
sha512sums_x86_64=(
  '17c15ee0f15e700fcdb207543b1400db54cba4a1fbb2e0874c15a8e119351021440f7853ca4b67664143c6b88f4a575dad65d8defb97ab29ff8ccb109bb57263'
)
b2sums_x86_64=(
  '550f4cd8dd99b70c7541d74e73dd23201e25f9b64dd796350200259c753d72c8bfe99888c1c4b79eb6104ff199dc7057c29e66832842aac18e51bab06f1de337'
)
b3sums_x86_64=(
  'a9cad5dbd9ba35f5571e11005b96c3b60f4033e7918367f8865813977a686244'
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

pkgname=libnvidia-nscq
pkgver=535.261.03
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
  '1052ef18b783e53e2479161750bf92e053d44d3e885e69f2ba96c5de48610dc7'
)
sha512sums_aarch64=(
  '14dca9a4e616c4260eda3f81eb71dffe9a46e2379571f45e9fcbd9d791fe9a658e6a6f38fe15ff8675dbae43d1096c2d50e19e8741456ee9460cea467e2e30b8'
)
b2sums_aarch64=(
  '516fedbdf84902e3475a314387d5ddb277000f471a02bac213ca143ca274952eb7cb6890c51c218c1287b2e31bddfd3a1dcbf819d60d0bee7ecfc55314948fbd'
)
b3sums_aarch64=(
  '4b8735eeaea78b5eafba3f121b6c20359d494202fa94db2d1dc9082285edff62'
)
fi
sha256sums_x86_64=(
  '2d88702c8001406908e8985f5ee01020d2a5b62f10619b1ad81f075c5f624aac'
)
sha512sums_x86_64=(
  '341482dee3115b8e89f03c3b012ff879217fbe1d21c472b09c2e021b69dad299908079b02c101856867b342598480b94e9bb45983501799269e8190ca8fa864b'
)
b2sums_x86_64=(
  'c48d5a56cd90eebf37528a22330778cc4772e48cf41fed53adaf62124acb1274dd50857261bbf5b25eb7920b9db1d565279fd89cd60c2863b82f9f73b8dba1cd'
)
b3sums_x86_64=(
  'e546f12d902b16fc5e12d5dfa27006212aee34cbba4b401aaa234d2a72bf637e'
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

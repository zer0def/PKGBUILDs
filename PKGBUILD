pkgname=libnvsdm
pkgver=595.45.04.1
pkgrel=1
arch=(x86_64)
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')

_ver_prefix=''
_ver_suffix='-'
_devel_dash="$(echo -n ${dash:+-}${_ver_suffix:+-}|head -c1)"
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvsdm/linux-x86_64/libnvsdm-linux-x86_64-${pkgver}-archive.tar.xz"
  )
fi
sha256sums_x86_64=(
  '493456d7a9cd98d179af89d13a363ceb0001e4dddb7c42c4a71ae52ee1911576'
  'c9eb3271b3c5f040610a504c9a9a939b667c447319856fd1b39865bffeca523a'
)
sha512sums_x86_64=(
  'c17b692a90d7e673afa8557fc1621ab2aa594729c9cc092fd1a63ba14148b4d8da8e75c21faee64bd937681d1326236dca24c56135aac0b33d9042ed3591c71d'
  '38929570a145e7a0d6f76d2ead4293973ce3b5afcf74664855b0d13f220a7e93c86ad7d9177883622b7ea930255fe2e5416b3d8ce706cc62ae0f3ff6393eb731'
)
b2sums_x86_64=(
  'b754ff7a7d1795976f0b3a30ed5b80de4b4b020f1a4577ade8b20c5bbe33db65f9ee149f4037c10f4beddf27fa77d582ae4298fd1ccbade1bd33f499b6541f13'
  '779460b177b6d1d778eb82c13507b3edffb6b9f8ad24d667e73392264c0ad2393d32ae2c38a42a3a144947fb9d0806e683f7081c78f42396153b21f83ffb9800'
)
b3sums_x86_64=(
  'e79a14fb0848238620f555c8ccaaee729397504e5621aede0611b150a3677132'
  '3c168f7500c0327173ca907452e39235634c38c31883c452c9800c3de6ab8e2b'
)

package(){
  [ "${pkgver##*.}" = "1" ] && {
    bsdtar -C "${srcdir}" -xf "${srcdir}/libnvsdm-devel${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"
    bsdtar -C "${srcdir}" -xf "${srcdir}/libnvsdm${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.${CARCH}.rpm"

    mkdir -p "${srcdir}/usr/lib" "${srcdir}/usr/share/licenses/${pkgname}"
    mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"
    [ ! -d "${srcdir}/usr/share/doc" ] || mv "${srcdir}/usr/share/doc/${pkgname}-${pkgver%%.*}/"* "${srcdir}/usr/share/licenses/${pkgname}"
    mv "${srcdir}/usr/share/licenses/${pkgname}-${pkgver%%.*}/"* "${srcdir}/usr/share/licenses/${pkgname}"
    rm -rf "${srcdir}/usr/share/licenses/${pkgname}-${pkgver%%.*}/" "${srcdir}/usr/share/doc/" "${srcdir}/usr/lib64/"
    mv "${srcdir}/usr" "${pkgdir}"
  } || {
    _srcdir="${srcdir}/libnvsdm-linux-${CARCH}-${pkgver}-archive"
    mkdir -p "${_srcdir}/share/licenses/${pkgname}"
    mv "${_srcdir}/LICENSE" "${_srcdir}/usr/share/doc/third-party-notices.txt" "${_srcdir}/share/licenses/${pkgname}"
    rm -rf "${_srcdir}/usr" "${_srcdir}/apps"

    mkdir -p "${pkgdir}/usr";mv "${_srcdir}/"* "${pkgdir}/usr"
  }
}

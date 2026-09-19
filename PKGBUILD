pkgname=nvidia-fabricmanager
pkgver=560.35.05.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_dash='-'
_ver_prefix=''
_ver_suffix=''
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
  'cfebdc80316dcc32d10163ee55cff76806f2ecc1a174b80872a539d5f9bc732c'
  '16d7e60909f7fd6f45ef200a5803952a01e3ce8fb95b4d829d2750e684a482f4'
)
sha512sums_aarch64=(
  '958d995291b9474ec458cf6bcbaf481d93a0fef8295604e638213d3fdf79d49af3eb87984f24d4d3c048989ee2d508f3105faa6bed23d6fc73eb82d8a913a500'
  'd2e30d4336b8a406a2b5d7e80139c115c5b32ce4e52ec150cb1efcd361bbf8f1dcd8bbfe810a5ac3d4551cc1c731e9f54c5c3801d2aa37a8221aa32b9d8dd2ce'
)
b2sums_aarch64=(
  'eb16f7dddc1ba7845eaf82ee71b0d80e801b7c6a9716cb3249cac5fad0d032852e28cdca10a98ea287ec7a7fa12eb49ff18b9203174b1b8a4d12ecabb515cf93'
  '796df29a4af3e85256670c57f4f3c9c844133cfa8460e8277014a608f4d57e55026305161298c005a75fbde33fcd5c4ee2b0000dc895a61608c091aea30e8319'
)
b3sums_aarch64=(
  '59a4e1169f930a57177c45f555e4dfa0c75374583b98d75b557ea6390b0ab45a'
  'cf6d34c51c7853be58f14a5935271e45e243b0f6574bde31e541c8615a7b99c6'
)
fi
sha256sums_x86_64=(
  '94f45de4b210ee44905562af022b3c1470411bc25c0794ac5a0fbb432b46a603'
  'f7b6138594f981225dd429d2e854df7403141ca745a604f54a3eb61884efdfda'
)
sha512sums_x86_64=(
  '62880144117bd0271e4dd6e2bbf04702ffb5abbb876aec801121a2238470f5bef18d333a723adcfe82e39b51c3ef5b65e9f028402e6ea0f50275a03f5266f7f4'
  '7ae77a8bbd8a717f03945d0f3ef2e3499a21e2844f588e02586e692d6bb297b22ad045acbc6adeccfd13ed66482c1505b9ded964364d867f2dcca527eb206ab6'
)
b2sums_x86_64=(
  '962b17727d083a54e9662daeb72f24e8b4019e54e5e9b5a6ed70a0b6e54be2b22213c9f41487ca67c0b29a42bdd179e7bf8911f3ff072e669d97ce8deea247a5'
  '030d3bdcc478d43c722aaa03e8cea708a86ed10c47ffce40380faa543b4cf4eed3a4a74957c675b1c5f23dfe1bbb2a20ca862f10f2c4d049435104369aaf1f6b'
)
b3sums_x86_64=(
  '6a462b39593b576cd73f1bd7d6a277056d8198f46ec0eff22783a00e9417d423'
  '4b46d16b08f8ccfcd0f2e97459816e0d1e6e8411c32dfead8f52c05174e88565'
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

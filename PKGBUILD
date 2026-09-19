pkgname=nvidia-fabricmanager
pkgver=555.42.06.1
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
  '5d78d46ef7f3a8f6af14aa0204fdfcb7d87425debab0e4e2ffe6ecd7c92c881d'
  '2fadf58e8a9d0d640f723dd5d66ef2875a6429be076b636358c73548ca974538'
)
sha512sums_aarch64=(
  'b2f6609ae548e46f015c97317f07ecec6aecd02afe6de12248e80f93a33e3b7502b727fb753bbd540f134f27f17c20e428349968bffa020c1fd26a7001950d14'
  '612f03c80b6c2bb9fc698910389886dfe1ac06c83e36f19478239661831970d2e0d37b3b37e1b32f3eb10c9809f0764ab041d23dd727b2751db580ba84c32acb'
)
b2sums_aarch64=(
  '49138fd7a37db086cc28d762156d4fb341bd6970edc14991e1809866195bc1d8c5803aa1f47811e71b4bd0fe9a64d209e91e2374f7049b3242523a4a92e955c8'
  '96bd9ddb8ded8307c6a3d5b6a03ad8b248fd636558712ed7ede23316a6e400a5803ce680c5c8e5318075fc53c2afd75173880f584666adb0f2a70704a6fe9467'
)
b3sums_aarch64=(
  'd654b048c794e16dc8194248b96660ed61f9a6494ee7df9ee4cac5238391e465'
  '1de5ee49bbb0fa11adfc8d9a01d659c4722b9242c59b79ac28523f669e45d673'
)
fi
sha256sums_x86_64=(
  '2e2150db36b29488f4fb5a0c3a34b56177bea4d715d44a47263c8759cdb898da'
  'deb0ca4cceafb8aad66f7156e2e448ba28766597af8213b096387f69b8634385'
)
sha512sums_x86_64=(
  'edb07a83e917813994fc02a3bbfbd715ddc16e89fe44fdd749d70bcb3f5d659cbfbf0b30bc6a62bbc102ca67bd613e22348699d4f6fd73d4bd88e3a77b006bfd'
  '7b94cf6566fc2987befb80ca08cdfa3a1ff0d82cf662a2ff2662fd9e6a03c6baef9eef005280aedc9fb9b8f3df1d5bb810577a952055595d46397755f2e8c103'
)
b2sums_x86_64=(
  '6b60fe8ddb69862d9f11415d2f4a0b66a84bca1a42499e4fce63aecf2c70d51d329cfecc43ff58cfe7cafd439012a0f7277d71bdc959b9c9b5757d5ea71d39b9'
  'c9e5a17a742dcb159149cbf44129c9f86e10d69392106675b968de0085b9a0e63f4850dd5e2102530d6bb4e5c71ebf845495c65ca245aad2b31c74e6debb4b6a'
)
b3sums_x86_64=(
  '5c48d222631b1c51a376217fecccae2423f934519c78543830ba94d108ee83fb'
  '643e5b85101f8ea97a65e670d57f127f39be4278258f0db1b41246d94eddff66'
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

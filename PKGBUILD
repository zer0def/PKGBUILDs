pkgname=nvidia-fabricmanager
pkgver=575.51.03.1
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
  '24ccca01e9ba4406c958c10e02eb71c26c7129cb7110f6d3d02439e5c041d469'
  '3c31f2fe28bc5ce0986f1ca5ae12bc8678146eb8c5e8fbebd3fd9a4038896539'
)
sha512sums_aarch64=(
  'bbca398b7fa6a97df0d99bd5dc14f9fb4a801bbb6b9785437f325d700840a2ede5ac9f2784e51b3ef44bd7ad96343f52d52c600ea64ae994147098b88b95af73'
  'f2655259a4572316e2703d03f966e3180c190635e802b57e32061741878051d1f0aff3d3c1db3f65b1f2c375011c940c4f8b887ee627194fb0fd222542356285'
)
b2sums_aarch64=(
  '0975ce11ca9e1dcee972306dda5e0d620d880907b8feab4d0c3c4bcf4963eb1b590d658092c6db051fc8c8ffcd2654a108318a95f9ccf026dcf8037acd4d8df1'
  'b24d10400f91436317ac884bc8c7c64559a53ebe50bc93f96a87069cd35ac128107ca873589b28e4527f33dc19d4fb1c47fd0080d1d0fcc45fc62c9dfdc59ff6'
)
b3sums_aarch64=(
  '4de8d4c47d0c09ac0fdcffb5a16169a406fedc0788a090b437346a5edeb55561'
  '1ab78174b0346d6bd2edd52c6729cf65d623cf12b69ca9f572654e1499227166'
)
fi
sha256sums_x86_64=(
  '8e1ea9f0ac6276b0b6c93b91c992ea0fdc340a390f686e0d0bb052b8773b4f4e'
  '2b40369e66f9a285aef7b68d68031a77dc85008c5d53b71750402103d01706dd'
)
sha512sums_x86_64=(
  '2987fba7dcaa2b84ccb6c0d6f2a89fe80ee229a95bd670f20475a7b88a424aa173e57f9c4c58367ee58e034fc476ac00e7da821dac4a5d454f9ce7ccbec7f554'
  '9f456ffcfaecf14f0d08ec2b180f2d53636c2df5d571e6681fa4768ca64a5ff0ad8e4dfedb2a92648d321b03bc60185439286f68373b0bfef2a323595f0df7ce'
)
b2sums_x86_64=(
  '4e3fd15fc51ecfcc6d88cc688d24501ef7a578f24d62315edfe9cfc59e897f76e5e4a817e365f87ddb863dd660c0feb37126c720f7c78a0f71c1172e0b409a90'
  '1343ed08e6882d5a67a70e7779011eb03830510a551ed51faf90a21344ac67493d73b949b949afd2f0cc22a9fa0a0ecc23c1772a629648b6ba1c975ed7d43988'
)
b3sums_x86_64=(
  'f4f20615304fc72d7cce671f7d967fbd6c7608b69a56014f2dd7c1f9ab941377'
  'c18beb0150b2d779c5ac166d3ed6665eb106b4710866fe35de12e77a957fd483'
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

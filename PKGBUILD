pkgname=nvidia-fabricmanager
pkgver=570.86.10.1
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
  'a00a23aea25fd84392644c6df765c0eaef5b6d95c930a4cd2117ca2d777086ad'
  '9006776f02e035209f2998afe0b9f5495879157ca6444363d4db359dad415b7b'
)
sha512sums_aarch64=(
  '2030c3f39047833a71f50ade768c9062942afa5440a2e4cbd0f6083de82de40c682a7e2c211a56d942c4c7b1e284b0f55ec0f4b15fee1fcd54e118a17aff361a'
  'c27173a42588f5ee61483d0304660b3cada19853147355ff5a569245f88bf27a01e801efae5a3bf021d410a656766fc8253f3aba440fe92321166aaa50e94d64'
)
b2sums_aarch64=(
  'd804ee30c80f6096f8e759b05bc84172655ecb2fad32f93483d1c2031fbfc3b98343001cea8ab2faf0f9f00482b56fbcfbd29aa10ebceed8b12cbe44fc485f31'
  '10868124cdbfc9dbd2bf7bcafa3eb63cf21ff4e6825a9e653230e3e4da26a5d767daaab58364d1bfcbc840a7a29ea61402a1b87e38666ec3f918834c87782c98'
)
b3sums_aarch64=(
  '0775de975a85f8e1a5c4c31999ef3968e620d785a6e6dfa2717314067334a594'
  'b17a006f770c92b577c5619c8fd089d7868c94a7de586f85b5e580a586776756'
)
fi
sha256sums_x86_64=(
  'a87645936b7c2ccd0c66814319e548b550bd946a3eadca22a9d2ec0de4a33654'
  '9f8a771a8e79f5b4b8817ae4dd0ff79d80ef2e627c5bb29917e085c7db8f0d5f'
)
sha512sums_x86_64=(
  '9f36d4b8ca1d64aa2680c01530efed19921e91db9a6bf573fae253ccf4e8555a9fce31f85cd2ff73dd46442f93795a2b49ecb78418bf2cecb366e55252328626'
  '0d49993c85fd8bd11dd2f6355e7acbee682a7bc4b6b0d3ea5971f4cb8b6e311d099eef0c4d36e26237e7a42ab9b99a915ea708b5e40a8df6bd5d0d6ab3d343a8'
)
b2sums_x86_64=(
  '57d0b58118e382a4b4941083af2a378c19797f698b2c7a92878ea55ca1c8b2bd29416b9d7359650f6384eafdb200d7129d58e008bf42697e47f10b6e3d8e7c69'
  '13b278843707f2df694565086d4feb322175db8675204c915b4bd7ff79ad48618a9d9fd49d226b1c6ef90bb9f6cc56a92797de599fb58e7e59693f01290935c8'
)
b3sums_x86_64=(
  '80d20b4535ea34c1b6b75d89421116ee5110929696bd82a355f91341e787258b'
  '84d7d2c8893397f8e9ff8fa731cf3cdd330bdb100f8e3293cb58580c994a0e00'
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

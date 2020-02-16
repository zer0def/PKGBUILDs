# Maintainer: zer0def <zer0def@zer0def.0>
# Maintainer: Giancarlo Razzolini <grazzolini@archlinux.org>
# Maintainer: Bruno Pagani <archange@archlinux.org>

pkgbase=primus_vk-deviceid
_pkgname=primus_vk
pkgname=(primus_vk-deviceid lib32-primus_vk-deviceid)
pkgver=1.4
pkgrel=1
pkgdesc="Nvidia Vulkan offloading for Bumblebee"
arch=(x86_64)
url="https://github.com/felixdoerre/primus_vk"
license=(BSD)
makedepends=(git vulkan-validation-layers)
_tag=209e9aae582b77617dc97162e59e8abe39899a83 # git rev-parse v${pkgver}
source=(
  "git+${url}.git#tag=${_tag}?signed"
  'deviceid.patch'
)
sha512sums=(
  'SKIP'
  'dbaec716d927eaeb8adacb64616f78fcd9f10abc1c0f4acbbd16ed97293b81700cd6d891e570e40c7ee489b0e27a0d3fccf0d3aef1f36014bfc836e1b085af4b'
)
validpgpkeys=(0A9D381479E6D19CE365E301FD4066F7DB7D993F) # Felix Dörre <felix@dogcraft.de>

_backports=(
)

_reverts=(
)

prepare() {
  cd ${_pkgname}
  patch -p1 <${srcdir}/deviceid.patch
  cd ..

  cp -r ${_pkgname} ${_pkgname}32

  local _c
  
  for _c in "${_backports[@]}"; do
    git log --oneline -1 "${_c}"  
    git cherry-pick -n "${_c}"
  done

  for _c in "${_reverts[@]}"; do
    git log --oneline -1 "${_c}"
    git revert -n "${_c}"
  done
}

build() {
  cd ${_pkgname}
  _CXXFLAGS=("${CXXFLAGS[@]}")
  export CXXFLAGS+=' -DNV_DRIVER_PATH=\"/usr/lib/libGLX_nvidia.so.0\"'
  make all primus_vk_diag

  cd ../${_pkgname}32
  export CXXFLAGS=("${_CXXFLAGS[@]}")
  export CXXFLAGS+=' -m32 -DNV_DRIVER_PATH=\"/usr/lib32/libGLX_nvidia.so.0\"'
  make
}

package_primus_vk-deviceid() {
  depends=(nvidia-utils bumblebee vulkan-icd-loader primus)
  provides=('primus_vk')
  conflicts=('primus_vk')
  cd ${_pkgname}
  make PREFIX="${pkgdir}"/usr install
  install -Dm755 primus_vk_diag -t "${pkgdir}"/usr/bin/
  install -Dm644 LICENSE -t "${pkgdir}"/usr/share/licenses/${pkgname}/
}

package_lib32-primus_vk-deviceid() {
  depends=(lib32-nvidia-utils bumblebee lib32-vulkan-icd-loader lib32-primus)
  provides=('lib32-primus_vk')
  conflicts=('lib32-primus_vk')
  cd ${_pkgname}32

  install -D libnv_vulkan_wrapper.so -t "${pkgdir}"/usr/lib32/
  install -D libprimus_vk.so -t "${pkgdir}"/usr/lib32/
  install -Dm644 LICENSE -t "${pkgdir}"/usr/share/licenses/"${pkgname}"/
}

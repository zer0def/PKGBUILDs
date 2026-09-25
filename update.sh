#!/bin/sh -e
_tmp=$(mktemp)
for i in 4.7.0; do  # holy fuck, 4.7.0 got blown up to smithereens
  [ "$(echo "${i}"|tr '.' '\n'|wc -l)" -le 3 ] || _rel="$((${i##*.}+1))" i="${i%.*}"
  for j in x86_64 aarch64; do
    [ "${j}" = "aarch64" ] && _archdir=sbsa || _archdir="${j}"
    #_core="datacenter-gpu-manager-4-core-${i}-${_rel:-1}.${j}.rpm"  # broken up
    _kernel="datacenter-gpu-manager-4-dcgmproftesterkernels-${i}-${_rel:-1}.${j}.rpm"
    _dev="datacenter-gpu-manager-4-devel-${i}-${_rel:-1}.${j}.rpm"
    _mod_config="datacenter-gpu-manager-4-module-config-${i}-${_rel:-1}.${j}.rpm"
    _mod_diag="datacenter-gpu-manager-4-module-diag-${i}-${_rel:-1}.${j}.rpm"
    _mod_health="datacenter-gpu-manager-4-module-health-${i}-${_rel:-1}.${j}.rpm"
    _mod_introspect="datacenter-gpu-manager-4-module-introspect-${i}-${_rel:-1}.${j}.rpm"
    _mod_nvswitch="datacenter-gpu-manager-4-module-nvswitch-${i}-${_rel:-1}.${j}.rpm"
    _mod_policy="datacenter-gpu-manager-4-module-policy-${i}-${_rel:-1}.${j}.rpm"
    _mod_sysmon="datacenter-gpu-manager-4-module-sysmon-${i}-${_rel:-1}.${j}.rpm"
    _multi="datacenter-gpu-manager-4-multinode-${i}-${_rel:-1}.${j}.rpm"
    _prop="datacenter-gpu-manager-4-proprietary-${i}-${_rel:-1}.${j}.rpm"
    _py3="datacenter-gpu-manager-4-python3-${i}-${_rel:-1}.${j}.rpm"
    _dcgmi="dcgmi-${i}-${_rel:-1}.${j}.rpm"
    _libdcgm="libdcgm-${i}-${_rel:-1}.${j}.rpm"
    _hosteng="nv-hostengine-${i}-${_rel:-1}.${j}.rpm"
    _cuda11="datacenter-gpu-manager-4-cuda11-${i}-${_rel:-1}.${j}.rpm"
    _cublas11="datacenter-gpu-manager-4-cuda11-cublas-${i}-${_rel:-1}.${j}.rpm"
    _cuda12="datacenter-gpu-manager-4-cuda12-${i}-${_rel:-1}.${j}.rpm"
    _cublas12="datacenter-gpu-manager-4-cuda12-cublas-${i}-${_rel:-1}.${j}.rpm"
    _curand12="datacenter-gpu-manager-4-cuda12-curand-${i}-${_rel:-1}.${j}.rpm"
    _cuspar12="datacenter-gpu-manager-4-cuda12-cusparselt-${i}-${_rel:-1}.${j}.rpm"
    _nccl12="datacenter-gpu-manager-4-cuda12-nccl-${i}-${_rel:-1}.${j}.rpm"
    _ubermm12="datacenter-gpu-manager-4-cuda12-ubergemm2-${i}-${_rel:-1}.${j}.rpm"
    _cuda13="datacenter-gpu-manager-4-cuda13-${i}-${_rel:-1}.${j}.rpm"
    _cublas13="datacenter-gpu-manager-4-cuda13-cublas-${i}-${_rel:-1}.${j}.rpm"
    _curand13="datacenter-gpu-manager-4-cuda13-curand-${i}-${_rel:-1}.${j}.rpm"
    _cuspar13="datacenter-gpu-manager-4-cuda13-cusparselt-${i}-${_rel:-1}.${j}.rpm"
    _nccl13="datacenter-gpu-manager-4-cuda13-nccl-${i}-${_rel:-1}.${j}.rpm"
    _ubermm13="datacenter-gpu-manager-4-cuda13-ubergemm2-${i}-${_rel:-1}.${j}.rpm"
    _multi12="datacenter-gpu-manager-4-multinode-cuda12-${i}-${_rel:-1}.${j}.rpm"
    _multi13="datacenter-gpu-manager-4-multinode-cuda13-${i}-${_rel:-1}.${j}.rpm"
    _prop11="datacenter-gpu-manager-4-proprietary-cuda11-${i}-${_rel:-1}.${j}.rpm"
    _prop12="datacenter-gpu-manager-4-proprietary-cuda12-${i}-${_rel:-1}.${j}.rpm"
    _prop13="datacenter-gpu-manager-4-proprietary-cuda13-${i}-${_rel:-1}.${j}.rpm"
#queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_core}
    cat <<EOF >"${_tmp}"
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_kernel}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_dev}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_config}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_diag}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_health}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_introspect}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_nvswitch}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_policy}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_mod_sysmon}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_multi}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_prop}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_py3}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_dcgmi}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_libdcgm}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_hosteng}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cuda11}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cublas11}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cuda12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cublas12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_curand12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cuspar12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_nccl12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_ubermm12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cuda13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cublas13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_curand13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_cuspar13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_nccl13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_ubermm13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_multi12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_multi13}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_prop11}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_prop12}
queue pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_prop13}
wait all
EOF
    lftp -f "${_tmp}"
    for k in sha256 sha512 b2 b3; do
      sed -z "s/\(${k}sums_${j}=\)([^)]*)/\1(\n  '$("${k}sum" "${_kernel}"|awk '{print $1}')'\n  '$("${k}sum" "${_dev}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_config}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_diag}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_health}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_introspect}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_nvswitch}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_policy}"|awk '{print $1}')'\n  '$("${k}sum" "${_mod_sysmon}"|awk '{print $1}')'\n  '$("${k}sum" "${_multi}"|awk '{print $1}')'\n  '$("${k}sum" "${_prop}"|awk '{print $1}')'\n  '$("${k}sum" "${_py3}"|awk '{print $1}')'\n  '$("${k}sum" "${_dcgmi}"|awk '{print $1}')'\n  '$("${k}sum" "${_libdcgm}"|awk '{print $1}')'\n  '$("${k}sum" "${_hosteng}"|awk '{print $1}')'\n  '$("${k}sum" "${_cuda11}"|awk '{print $1}')'\n  '$("${k}sum" "${_cublas11}"|awk '{print $1}')'\n  '$("${k}sum" "${_cuda12}"|awk '{print $1}')'\n  '$("${k}sum" "${_cublas12}"|awk '{print $1}')'\n  '$("${k}sum" "${_curand12}"|awk '{print $1}')'\n  '$("${k}sum" "${_cuspar12}"|awk '{print $1}')'\n  '$("${k}sum" "${_nccl12}"|awk '{print $1}')'\n  '$("${k}sum" "${_ubermm12}"|awk '{print $1}')'\n  '$("${k}sum" "${_cuda13}"|awk '{print $1}')'\n  '$("${k}sum" "${_cublas13}"|awk '{print $1}')'\n  '$("${k}sum" "${_curand13}"|awk '{print $1}')'\n  '$("${k}sum" "${_cuspar13}"|awk '{print $1}')'\n  '$("${k}sum" "${_nccl13}"|awk '{print $1}')'\n  '$("${k}sum" "${_ubermm13}"|awk '{print $1}')'\n  '$("${k}sum" "${_multi12}"|awk '{print $1}')'\n  '$("${k}sum" "${_multi13}"|awk '{print $1}')'\n  '$("${k}sum" "${_prop11}"|awk '{print $1}')'\n  '$("${k}sum" "${_prop12}"|awk '{print $1}')'\n  '$("${k}sum" "${_prop13}"|awk '{print $1}')'\n)/g" -i PKGBUILD
    done
  done
  sed -e "s/^pkgver=.*/pkgver=${i}/" -i PKGBUILD
  makepkg --printsrcinfo >.SRCINFO;git add PKGBUILD .SRCINFO;git commit -m "upgpkg: ${i}-1"
  unset _rel
done

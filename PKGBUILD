pkgbase=nvidia-datacenter-gpu-manager-bin
pkgname=(
  nvidia-datacenter-gpu-manager-core-bin
  nvidia-datacenter-gpu-manager-cuda11-bin
  nvidia-datacenter-gpu-manager-cuda12-bin
  nvidia-datacenter-gpu-manager-cuda13-bin
  nvidia-datacenter-gpu-manager-proprietary-bin
  nvidia-datacenter-gpu-manager-proprietary-cuda11-bin
  nvidia-datacenter-gpu-manager-proprietary-cuda12-bin
  nvidia-datacenter-gpu-manager-proprietary-cuda13-bin
)
pkgver=4.7.1.1
[ "$(echo "${pkgver}"|sed 's/\./\n/g'|wc -l)" -le 3 ] || _rel="$((${i##*.}+1))" _pkgver="${pkgver%.*}"
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
#for i in sha256 sha512 b2 b3; do { ls -1 *.rpm|grep -v 'cuda';ls -1 *.rpm|grep 'cuda';} | xargs -r -- ${i}sum; echo; done | awk '{print $1}'
source_x86_64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-dcgmproftesterkernels-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-config-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-diag-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-health-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-introspect-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-nvswitch-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-policy-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-sysmon-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-python3-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/dcgmi-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/libdcgm-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/nv-hostengine-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
source_aarch64=(
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-dcgmproftesterkernels-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-config-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-diag-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-health-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-introspect-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-nvswitch-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-policy-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-module-sysmon-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-python3-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/dcgmi-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/libdcgm-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/nv-hostengine-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda11-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda12-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-cuda13-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
noextract=(
  "datacenter-gpu-manager-4-dcgmproftesterkernels-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-config-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-diag-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-health-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-introspect-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-nvswitch-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-policy-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-module-sysmon-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-python3-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "dcgmi-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "libdcgm-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "nv-hostengine-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda11-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda12-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-cuda13-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  "datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
)
sha256sums_x86_64=(
  'f9024975b6fae5d7a05fb3a0e4ad759db278e05d7e3f96c43bb3ed9d2723fa3b'
  'ebb541ce697962785631d02a830653dcd11c4e26737ea34313749377451c3fa5'
  '37caf2a382f441ccb239a88eb108cb53982d1b9f23dee6698a003ab188c7482c'
  'a7920636d82582dcc357e2444b49358768ce89cbe57e853f6f7656fecb0bfa6b'
  '6c0bbe02e6a5a97ba6471ee27e65be40e1035496093e892e3b6dbc5195e2b2e6'
  '992590f10ae627377f8890c4573ce71662be444dd6f48ed9272c79203ea28c1a'
  '4195054b30d3bc5842be82476f1b7117a8b90d322a0f5fed39520ffb9e78d9d6'
  'f6455b641cb57ad13ab76c0f7fb3591ce6e82b18de1dc8ebd0d9df5c241e0bf6'
  '10141e236511fc5c66e9e4e062b1c5457f568356e6e8677da09790a530918795'
  '12db7c105d93bd23049ead7b8c15e354435a363a826d215f1ca40b4e22b17d10'
  '39e14146ffece73d22b1f6766921f73bbb3acba0416f7218b22a52964e386f99'
  'ffb480f7272cfab432b836ce390a3a0a52e06e426cf515e75cd17ad7a1b7207e'
  '1e84a392c83ede82c106a73488020ac250a100ccbd5d81c5e30d4740f8ab8904'
  '814b3f84317297a4c039a58be104af26a4d597379ea25426b5bc58c7ab96a2cd'
  'f8569085fd6ad62e9caaf1735639616884ea2bee0e09358f0d37206d39d93970'
  '56ee22129c88055af21fc815ea71a476e3f566461b82468cc4122033e11ab95e'
  '551ff5690873dd91ea33d00752f5813c0249deee96b2bfb28b5cef869895bd38'
  'e8abdd8f110138ad43fd8b3a52e3bee575c1d112fab8ee58873cee18d8b436dd'
  '72aba5380a5146d528b3dec1415d98ef5be242c2fc71f6ad4bfb8cca9269bbba'
  '87d2a2c3817e716669ad5cedb53978d7bfb1e0eb89f55541a890b362ab14262b'
  '38ea9277d48ed861ee64a80815edd12ee7851e47213ed9f354818fb6dfd2aa9a'
  '36c0cf32bba4c04cd5a2022c3a660f28206163edca1d30f3f6d790a245c7c620'
  'e30b73e773410c1f6c6b09f50cc267a00d3e24d1260fabe937f94e3e49088a02'
  '591b72c98b83f10a628c67d72bc7a6ed285d78658fe09b1fafd7ee584e390993'
  '5c09a94e56ce2295829463ff0402905a47e0f1197300a36e8f152753475e4d48'
  '93d331083af832e29f22afae65a58b99aa13550f142a7f0b1e9250476ba4e166'
  'aca129e66dca0f310362a090f77b2fbf59efe0a93a3f7793465014151c398868'
  'dcf9018b4a68645ae10d38747abf905021db8dfcc21799911912fab4f207466e'
  '9ab93f11083003bc2bff22e0d4201b8c187951599ac648ebee898c9a231230a0'
  'fa90532612742f8970abd353cd2bbd1184b5f71b215a5d43d574e4950af60a5f'
  'bb6cac7dff5f9971b79e102a59280352a8d6f95745240e6164c5f891252c9578'
  'f7746bb9634c66b84561c4e3c1337d3d99644ffd3d166a1ede0634baf22f9b36'
  'b409e0c6dab422d70cde54e1266fe5c6b8469c49e15789d30dea8c56b1ffd676'
  'bbdd5b8dedcc9f4652d74a640682fa41715094cdeb6fbde1c65dcfeb0e2c91f8'
)
sha512sums_x86_64=(
  '07e81e9375ebf8381e4fe273b67effd26b0547c038fd3bf0ffdc8600e2c68a11864e3633c6d2345238b547054a74d69c93423319a31044d2b2e6dc694c2531e4'
  '69a77fb2e825e5aac6ee9e0f2573725d3eefb7b4df9b45e3670ab4ec06a43c345fe77655e968a6a899335acb023b416922d96dd983dc36720d2db6d01c7a282a'
  'ba8b486ac3e44880a239c849729465fea0de47ed64602a76d0ee8fd4a66aa0669f3b863242ce8758066bb0bd09fa56c84cef3ad54594d3d07b445c54a4cb4c22'
  '77619db7ae57162e1c431ce45d5f1b97ec3e931ff42a5c1c1ce52198c868f7969ed4dc9cdd6565fbbd5184ae508a4af82c67a40eb306400b4fb1b61661a81177'
  'baeae118cdff547e7fec7201ae689cb1fc354851d0eeb4fbff1deae1e3915d76bf07a0b04f393c25f05689d163a423115fea2c0fa5ac2ab5ca07037e3f344272'
  '4c5f466cd6733e9ab7d8ca68b047f3397d651a657030f0cd1be72cf461aa8f8d6c927392d44a33c782a8edbade4c3afe540d136d264263e2db110da292b49e76'
  '4aca4d96f88fcc1c7caa14cae56afd8e6e6123e7fb03121d2016c416162f65dd13dd3f07d28da39f50a5f513b8df7c2fe9f18d92135494ce082a88c40cf00d9f'
  '9f8462668eacef906fb5b91e867e1d91878235969ca8be2e9c0b7a27db463f4a0e46123025abeb61741675c5f1d72756250aea08b15634c75ef37311703e997b'
  'e74539ce8ee68715b6b66d64b1ffd199c2a63e671334b1f3d846eb0c0d6f7338906bbfe9c6f4cc821772ba82447919eb5e9cf82570b95647cc92d18caa5b58f6'
  '333048cee3a7c539236780f7c55dbd54d15cb9abda98a12b9eb53f7a9f173f3c4e259d30fcd6d574f681e42cd8acc32e36e60f18e82936e62e43b028578250dd'
  '5ca6754bde0ad13ee355e1814ff0ba15bbe5a658832adbf4197a8816e505bc2c5b6c9140bca42628a7b0be94fb21ea198bb86724e20f71eccf53b521e12871e8'
  'c0f11eaad1c57b155c885f08e6666bfed02490472ced69791d99bc726dd9759f7a6b07bb6ff644ab384761a42ceeb8ed3a61075ecde88d595c2bc2a9bacbccb9'
  '6a5a9e2164a325ab4e0519fb57872db19377287b69ed97e878736cd4880d4d906b334d6cd16bfa504afac649aa47c53fe107d5171198145208036ed4b8f98248'
  'da99b450bdc15d03883cb38b87d96ef1d01c034b9ae55739d265f00336a9782f892a6ec41e5c08c3191fbbd6601cc925fe93222741cf520fbcca416f9808ee2a'
  '688b30f2325df5f143d56d7fb5d26e4a727e071123586956bd1a73eecbc55ba4dc495e8cf0f5e85766e6ebe54bd77010006ad85b7ebdf8a1157bf7ee9816f3a7'
  '6372d5e7d8697e037a06f66295769e3051cbac2ac3d56fe5b61525a962d376e4f4a9ef104bcb24f9f2d00429b4b4b891bba8438de6681333d7f38f38165eac3a'
  'ddb8e4b60b245bd9f566d92c1c19de5f1a04d719346d95668b9183558e42b6c9d5bf33f8224c754137e659aff9bb70a0f4da6fcc0dfae60ccac9f54ebde58e51'
  'f5de38ece37c715d38930f99ce01c8f6b83f11c9a346a21425f38f5c9961b8b7363961fc5332c75bf1b993dceee90c4b9465ebcb0420a8d0fce1d65faafe8235'
  'db678433542663661e6de0a5f34b1751d343002a881ed8b7f6d51c9a1881fcb0a26c583a912b79d1fd9effad5343ec6b1d7af1182c17093e215c3fcc1d4553a2'
  '7d0044870713c30d5cef6063f41c9053d476e64f467ee1d6951b2d1716f824bf7d9c75aa3c9219804b6612e61a9242cfd363371a6ebd53f8b5d5a7d5f4a9cc7c'
  '7e57ab00faa931d19a3d9d5b5d215df47fa3281a9cbd3212ffb537bdc36df236782a5d4b86170c406df211f3acf58116eff149aaa458a38df35806f9947c24ca'
  '6602370836558f15f053b20fb67d9b95584972f6aff9d12d0901b674ef2f9cdb53f5c636860e82f6c1dcf208676609fc502b49920a349e58be5534df094289e1'
  '0fc4dfc2dfd9a04189bc599102d339268dea42991022a32e382ebad957d7690fe9f4d0c0b2b3e33f7d1ab899bfc380418cb9cc8922a4a2976a16f64447c6e186'
  'f71d19edb2da1c53e0f02f05e23512fcbce0a7297675682aec3c3a2a89912f6f7a253f743cca39a86a5f9d045b449a5b017f250d5434752a3a059f59c32d7e2e'
  '19f19fb8784b15f2d6c61596cb9411d31457ae9545b9b5e33289854caf6c3279fbb2d5461ef957eb7ac51edcca0ed692803a9d8dc3d9631636f8d8d2f75f3de9'
  'a4a5a1576d1e6e5fae4c7ab011df4c7cdac855c2617f541165eb657a94fc9c4c3d70c9814bda7e5da55f6510640b2866d4cff28aab1f8db318dfb8dc28c399d2'
  '8467a41948e9880ba97db9fbfcf5d59bb74abd9c2bd282890bef8f6e918f9b0750553384f4fe217a04b56a4889e4cdcb458565d517b254936e17857da5cd4464'
  'b9f02246fb8a3c4ecd43af6fa4c55dc1c7f584708cc0a8e0083e607f2db3390b816983512419fb6ebd654e3059ea8f5f389e3b2ef229d1770efb4d60036f6ad2'
  '3e70e96e291072e505c99af9dfeb6ae73815645a029ff6d58c8d05cf7da81e6ba705084d25aafac2db0b3a0a80a23e32e1726bdc80f9021899df84a6d5250fad'
  'a257202465c11aed22d3c6600874a4fe4fb01ed387297b809db0e9353a65d65287882ff6d1cc1a893df2c0b3e0faa875123b53df9afda73a01cf5da2a4c52a27'
  '5e0a207bb2b17575cc976a27595a73d8e36d2eb5e6622c866b96dcf2c264051d01298d8ee85d0d7a3b35f4d03bc69b1614da737bc48544598f3f38394763baaf'
  '6fbf99226e0da076e8f618c79c9e4cd8f317c03ecca6bfe62f197dabef222829f86f3ea27aa6cc2f7f133c684b83d35aad821e822aa750face2066f7ff61b6fb'
  '2aabacffbc0f1fdb2bd33b4537b6033960bf2541de24b3e4db5bf771515f917a612959cefd2a620db082d5bfbf6c0641efbf637d805d634307c355e6c8006837'
  'bc6163d5fc2f734b7dbc2b16d923cbf82e7175b970ef4533ce0eaee3c989772474bb47c6d2f74994a105c55f4721613756b2333f4d9b209e0527909bf0794729'
)
b2sums_x86_64=(
  '22dd1fa6b66110407768df63fa8ca06221b5f0dd49c46ffc0679a34ee83fd9040af35886c1a6211c14f981c51dac6ec07db1fb673970f9af83d291e6a8e49e9d'
  'f07b074c59482914f09e1fc19d5499bdf7f03ddcffaa26aa9f80f90e91dd2011af9c40832eab950148fab5a863d9b341c9afc39a88a22f112b2937fb31ab9fd9'
  'baaae9024607c96974b53fa5821497949e45e42bcf73a256520271d9d7408d1ea27cea03cd1f444ede361fce721a3c306e15c15ed0851e9a3e22003dee6dc896'
  '2fdca4f6b7588233d74b9ee67f715cd6463aafda46dfe1ac95fda93c0695d3f8a2acdfb1d331a53a30e5efe6706b09137afd59847efd03a5ab2e0039794c8e43'
  '4c1cf9b54d651fb821fe7a24306682c14b874be93a8f90464af6aa6036ad58b128740d548bf52818f26e105ea8e962c08c640cf0545183befea53d313f1893e1'
  '474a8b9047f3efa46605bb6dd6317e2d873d4f95158a0d6bae05e4fdaead14f639999ffdaa7f05cb6bb6ca8fba6027624ec771cf7b18279a0dec39685217a8d1'
  '268457ee9d74b6798de8971bff52ca59d9bea439933937a1dd5f82fab74a1193e95e3360f5e76441e964377d66b9c4eb8f70dda2878c090d23694dab527d0dce'
  '8d1a20466ae65d7754e918bc2897134a2603030ca4e3b61c9baf8831caf98d686c777cfbb1bfecea37d45b6445d1ed1e56f7fdc086a2b1184da35dbe615cbfde'
  'b0c863011ee08e099529fa216bfc93ab9b440f2d31d96f992775c9682ecab90c19ae29dec355af5287a1d2409e6e3b72b5e2024451e9c64a8e486fca3b54abb6'
  '7d3d0af6d088a80a6134cbb928496be3e96f115162d64086954a70b199bef37a560dc4df04210b41d6a503178380708b939193812397e4c7a75d036929de3e64'
  'eee0fe30eaa58f04824d3f579b1f3066c15ed759a4f9593f8b802186147be74e84d23cddaa3992370fa7dd76770a870374015ca5b4f225c738ff61ccddcfae5c'
  '4c8887a56d54f3ac4a989daeb51b35eb9432f27940fb33a554d15b649c8392d7c27e7ec0cea84aab327e675c90838fe55c950a4844b47b81a85cd29e9f31e5b5'
  'a28af02ca7352e658a45ac7113d14b07ac0f0ac2506dedac3cd16c5fb7010014c5f189ef2ea12c4951d20899e1135428e9f42668b67db2a4b9229c12bcff4441'
  'bd94c1ee69ba779792f3ef6fafb77c0087823fa9f56b2bf4564b8a6ea8ee11d148d678c6b8e0665858318004dbde11bede2d18804af6671e92ee38c40ebc1b73'
  '66d69361a5f7ebd99a6be57b77d4a9a502461ffec9afeb32eaf5e676a22e054b44b1d4f7816e0a3a88c63eca8705b1fb72435cd9106aab6b06078f8c54d4d916'
  '847e56d84e4837cc4f2cd4836fa0c87b433f14a876a1214b53763e5fe4972174dc1a906edc5fca2073eed40845fd0d2ecc2080a7fc5891c9ed19ab4b84330aca'
  'adae3afbb0920d752c2c591ecaa7712c4f02c1769dfd8dbd8e2eb5adf3118f231936354beec92722a740802b0ea251c6000792d4ce9d0dd56527f7e8f9faf1e0'
  'b5bd82257211aba4d26a723c3ed33eefa212edf4b58f483c1fc58564fad0be1ffbc0220eff3cb3e5758dc94c9d6cabef0c4f93c1ba3f665a0dc999c37489b5c7'
  'd35dd7b52d2edfba9778486d6ee496badb3816f0b0ab67bb675190b8b81d4cf98f731991c1ba50c4d9f29b626c309fcbc2e284cc12d34ba8df77aff9e2b5cc49'
  'dd2c10730a1aefd0b9b15a4dc6dbf2db95aeed03fbec2a4bb7566a686cbae4f2e9c350baaac435f562f7cb754a9521269ada3daadeacb35cf13a0a2dadbde02e'
  '993b242570125aaf4723b229cea6898991e6b89391151956e862d642497016a6e90f7181ed8f2cb322dc4b7eee056bb1737736959ab07c7044f97227d8eede30'
  '762222bf410346b7d65b1b359ecf67a098f574159d702c3b8df177e6f7da7685890107231755bf5b576748e4fb4ca9c3c78626918026aea501c7b84beedd1cf4'
  'be7e4712ba0ccefba28faf154d7b19a61407cac7cd1daa14bc1387da8d4eb53eb3b88f91315a8ee1dbbf80959b5b9d8c15b3b4a1b3e5095851d421a8b43fc935'
  'e3ecf5a31ab603c61f00e9757839a067f5a8e5d1004e3c9dd8b89c2efa572c394a959bf3a2ae0be844be83dca2d701bea5e3639b0aec35ea79d0b670cc0e7a00'
  '7713c982a35c1584cca934aa91420755e85131c03ef3033b817b53578a3f87a5b5d2fb148773b31b14f3a6c205c21cc9fe8642c2eed34e4a3b8ed244f040f613'
  '597143f9e2ee8ae338de90d0bc545fcfa4536a512f819782bcf1cd7f0b4aa71a8fd014338f778bfd658e4e85fa870628c9f78b9b7b50773222f523d0fbbea120'
  'e6df31a2d02d300639a46bb37c7bb95199c436eda706055ab53bfd2d013145bb77f77c77bf92da74c41c404a69b687e7ae497d3d659d4087fb04486990e87ed6'
  '8e0c2327eb66e356b838db7cbf6934cd9237206062bc86a2fad769d8ce35e53aa5ab38399e65bc0355da031ac6fe240eec7ddb530457499b70c7c516a663fa2c'
  '587ac3d48a33ff0368c19071f535801c066fc5a3752ddbee746c3a0ba23f10fb4c70f0166fbbee9e3b8507ad910b50843dad04b0613e3daff3696d201e15e5d6'
  '91d1504edba5e3da2bfbec7430424c6eefb83dc41934c72f68f681ac6531d1a7eee2ebe9bbd00f7e871a92024ed62126bef2c6c375d7e05a9a6368522953a0d0'
  '0727e46935b172c7f3e62b64d5c83c2fcd42502bc0f7f3b7d661ea7c1c2c438e87aaeeace3cdf1a484de4d6fe937d0972861fd859948397070046180c8760ac1'
  'fd7a20ed499487c87ccee6cda44576987fe600c0efdd48df9421ff9b4f13f19617fe0bf030e4bde97074c7527e7bdc805eb7995a606b7b63d2c00ffeb3c8f596'
  '90c7fe3da7145eadcd80235c8178fd595d1d116fe90b38f513ef2c9f71872420ced3f38e385e2132e2a9747e76c81213e99203769ae0d634e6e6cbe6fdf094a0'
  '6ccc2f5a0b9e7998016e6e6618f844c8abbf0262523ab3ff5fb1448bd06a5d9367964c7caf596a975c11b21a7aa76163efc9d2b2be1dd508e0d0c7339456be0b'
)
b3sums_x86_64=(
  '76f6ec741ef39c224bd592d2b8f528763127ad4f9a08db191e2466f3d741ba96'
  'e83d9439dc0bc9cd32bf82ee4c7b1967c906dc97f0a893f642cd8e56898a4033'
  '099f85f9eb280de3e7c8d72db8a5c8cd8023961f3639bf3f7bd1f47ba95036e6'
  'abe59d0a7b6d528c40ec4e5298ba3e6c96339fa9f072dca7f9d0df18c1023cb0'
  '1a031aeddaa17b9635f31c1655bcd3e722c93afdafb374a3ecc3af976d247a8a'
  '7f090f50abef184516d2ddf27243a9c3899812d241348ef5f85bf49b36904ebb'
  '73d7a3b5ed6985f64ab0142df40d3aa21974a7eee1ff3bbce769171035da9ed6'
  '48abff9acd85c94bdcc5337ba85a92e897984279bab4a6cc74ba7186f00b8bd2'
  'a57d1b89795a7e1876d66d7297ce6cbe27aff5fbd563e50b00daa7e88db9c15a'
  'bbd533c0c998627d28bc7a8afc512ed8400a11051f5494d3a1eaa860c22c7656'
  'c3c9a35ad1b041328bda128846856915cc645c71875ead6f71944773d9dd172d'
  '618cb8e6c9a32c5f4a4ca7dd840a754bcdbc140cec1450b938280b9269000f1d'
  '635fb80a237a38d3d5a55b07c15dd446fb747fe7f79b9ba0151f7ec15432c75a'
  '159be8be78741fdcd00dfa7a937b4a7fae9e61fc1693a2418d7159a9a8de6879'
  '425b32c11481eda026fb7b4fc9b48826c34d7689f8e2ffed0da114cf3174adca'
  '7d2cbff7df4091083e4e3481c1f5c6ec700085e6c3482eb23f41d3151aa44223'
  '47fa881509d3e29fd15476619c5d3763c7031a067e3ac8a042f53282c20a733d'
  '0345e12ec9c565909751eb808cd57958425ba4c24596336674dd1f58c7a49fff'
  'a8a2880c4a796097276657c1d7596bf41d1ffe46b474f8a8f26c2188cac81fa2'
  'b5a75e359032b8a127aed601b95be5c4ab490a9798c6dd97d8ec255cc4bc68ce'
  'a72efd7b943a9602eb776ca5659c405c391435f32f2986e6ee57de87719221e8'
  'c2251a656117c7445b86be5487c10f52984144c210677841527cec3a8f121b9b'
  'd10625b14ba608b641d3cc77d446370e256addc5e6505890f31829c868a53c70'
  '8fcac476dd7aa5f7f2153b7022064a803fef7abcd58656f8008dd7bdba54db1d'
  '1b78afcb31b6bb0266bea069db45f502a80e6172acc25c7f793daba47ac20410'
  '7850918902bc508e638b2f470228dd74e15df3472d4c838a4c3d8b9a7bd69b05'
  '6294838812cd358b1a0157a0d0a288298c62f41a0f453ab1305a8d7e4526345b'
  '6cc376775f505570c9c656cd9f7fda9cbf60b90e2a4b2ddd5cedad9165660226'
  '7799c52b9e2edaf48feabb15823bf7f0fe043f08724135c917e64e8074dbe7b3'
  'c24b47ca6c2ac0013f23e62f35fe51fe1ef9d0cd80696552036e5ca7b3a8b4ae'
  '5b569155c5362f97823a9c50c99c7e1898db962c7a2917dfe0ba821389cab356'
  '7665ee6c66134f1ea6622e7488c1bc08cac676ee4ba0b84f77ac7147fe8d2e6b'
  '4ea95e14121ee9ea77481b18051d79ecbcb1227a34d92401071952f053340ba8'
  '6875a0d79e127307cff6f5c5c4ccef5cd6cba257f6f2b99428a86aeaa2c6b20b'
)
sha256sums_aarch64=(
  '425428f62cfc3c64aec211f5c2efcd9665bfa9ff565e104298b7541907e9eb4c'
  'f3c5e0b70ac712c64f1f7da76edc229901617492d406f7807ca25b919ad60aad'
  '386544b2c024e4bbb3d57d05e24fa8fd8ccead3c6564020de0293ed0b5010774'
  '1ba4d9dfc19d9d1e3356ceaa2674484ce1404c405341985d4bd66e6eac79d2ac'
  '3d8a8ca586593f6e208ca3199a3b9a4658c4f9ed098c5d114279d89b3d7527a3'
  '028d68e6ced72e296b87e4d812ef500acd16d9696e4216545db8554fbdceb30b'
  'a31101f9b45ac54b063fcc193399e150957e23014e684591623fbd27986ae1db'
  'e2addeb51e7b9dbb23d616630915c2736a09f2270084a93af51a496176acc18a'
  'c6dbc34df3e594ed69bbe9d8683cb108d572c8434031f785b046f8a05e3ee637'
  '2ad52b856518288fb7b3906af4ab237ff7c9720ef3124ef9c1d51e0381b9c06d'
  'f772d422855787150bdc6e0fee36ad14e7fad81a8bdb73fe62c05940fabe6902'
  'f3eeb0ffcf75f91825ede594ff95bffb1957aa90da3b70557397591a560f31d7'
  'b654e69cc6304b63b0048a4a7f4894de5defad5ba2180861a66dbde37426229b'
  'a43f432697d3de2be6e63153b1d1b1a38b51b36b3a95ee2ab87b8b8802a8a784'
  '7e9b4f6a09a92c00a5975fcc683332eeb5424fe8976fc672c0a44698e5f7697e'
  'ddcdc8a19311e9f3f770b095cc0e0c88e96c1e7a6a684510668f61f8c47ff642'
  'a3292f52a26d6924587bf9020eddce96e6fc4382d7b6acc76625d46959e07f7e'
  '3a354924d9984f1f916c46da59d744ef0d193536f002fda92671093b2c75ac24'
  '6b62b5eac5fd97459f5d5eb5e950470d55f1008f4e15575240e43f2c98f61b80'
  '9562e4fb1becc78754c24bc24ecd97aebc3f6f4f4ea3553188184a9efe46eb32'
  '0c3c7737b35fd05ee457de5f6ecf9553a5187772b25a466a5912a19dac459d7d'
  '53dc1fd3ec0edc9551bc3da6613b3bc87e0b185d9c978d01485e2f85a225eba1'
  'eb7f70ec6762524defb9ea17a3d9bf9300f5c17f7e4b9665c62551a8aa528894'
  'e15426c0a780a42d8c1b241316eeaa1e1d5dd70dd64183072b998377cfe5b8b2'
  '51c4493b971826e280e472ded17fa1e413dbae29f93fa7d3b8f8baa2762cb229'
  '8f84e41d5a53b87ec24bdc3c552975fd61f6ba6dc12d4e9299ff9b910cab1e35'
  'bee48fa2ae940bdfd7c15a1203356628ad28fb34a4cffba378a21587590028f6'
  '720884207f53856616a2381445c6d1b9c2db4bb633206fe0507190919d1a2db3'
  'b392ba96f3f40b248b4f7ea04927e500a4a261b2647eff1ca63c47e92a408c49'
  '97fbaf4f1e26d55edd0dee90b625f4aa144f119f74072797697091eb5e3a4679'
  '33a65cf452730c448552e50db07c019fee1ba8fbf9e3d41fdba03c1967ca59d6'
  '19fc4cb071d36f2b71c66f4e71d87f1e0618f8572be50e844f68cf752725e9f5'
  '0317bb14a2bf14be6a355633119930e503bde1c254c79f29850e0bec5c02e1c5'
  'c315f41857d3da3e29020361744e8b8a6fc4a6f882aba0bf6621c4ca7f78121a'
)
sha512sums_aarch64=(
  'a336d988894e43909309c5667f5acd55c7ba13e7a47a384f8cf69ce58b2764ec3968a109089ff358c63949cebc5315f2d44ecdb1615204c8965ef5ab9bb5a9d8'
  'a3ae75e11bf9cb2b838d3f24af203db395b8eb678db04f452989a0ef144a321eaabc28c19f5dd6d85330ee3fb64cd0bb5c6215d19bcd4db707614b856fb18e8e'
  '99c9742167d45add1f88c1386c96e147fe55d7acc86d5d4c4aa48a63b25ce6ec27870ba8a582c86ada78b6912a6562cdb0e128b0a9c1649a8043c9c758a6546d'
  '7d0d04ff36ccda357f66e20fd75d09d602ce9dc4dbf1e2e5bafe398361dc8eccf12047e41b4d88aee30c7e40979d3e3fd3f1005e0efd9aa9b9cd9bea5459a5e1'
  'c8130b6bec24abfa02f610234579866429904a8005699df6d86e3545c9080e82171527e7ee16914f1b03faef6f7e30db3e049a4ab3ae6b2add26579ee8f531c9'
  '61dc0ab1fe495930b6b480066ef2311f90d3e52fbceeca089769dda2193a87c74ab9d53b9b48afb61ef5540863fed4e26ed9a436cbd8ba8d74422ce8fc98e9a7'
  '27065c5fa55e9c28d99e3bc1d1d3032dc6e3f41fd9d3d874ebae2adadd6ce86cae3b56040738a6f4e0abebbebb7670784d4a5bb0e83c2bf385d9dfaac16a4afe'
  '265ef19c9ff7e83584b7449c052a07cec8434d29aa5db1462b4d347d7301d08f2583494c5a19fdfbe458181890790b8b35db5ddfe1cfae11c13acd4b425c5799'
  '56f0ae06ce9d3689d89a434204282cacdbb95a491b8b6faa75879cb9e73f1811db4aea6cc491c086e2be1af446863bd9f5391d5447b9dcf16da747ea2af88db8'
  'bf89a8ee818dd5809363bd2e1d3a6754f0cd27a944d2f019a6d3da825a4e262550cb679ea89ddad0653bc0db007965791392a7de99adfa1f942d73841cc8d5a0'
  '29b8498dfc63ef11813ddf4790292ff5915fe53a84d507b2f57c9d6416d9a87ee9251ccf957a7b99e7b0fd0f29e0bf0c52283984014b9785d216358c5b169e23'
  'cb6acd46f730af8197af59cf4c566d800940eece26e92c363bccb2a504407c301e7658b7c19cd52b60e0aab90fa6150fc46513ac069e594f1c835fe1df72a717'
  '622389649d2951ff4850257ec00d8ca7067f47f579de51e65170008cdb18a790c82e6069e2c40d7cc7d2e8aab7f7b783d188acd9e74662320f3003a56b8dceb5'
  'a9520ac021a143d8d3b8e85e5713722f601d95bb636f675a23c9f50b631f75678e1b8bcf26e20f546d040b4ef55dbb8382d44033e6354b272586ed800d34b57b'
  '9b3cb01428e117459907e2548563e9a96fa2b94d1458a3cac33de0bd70f07eb95ba310fd218f4efedc217f1d23180a4d837650596a47b8427d338b7e043fcae5'
  'ceed61f8da3c0aba953d5625ccab9dfbc33bd8eb6faf68d5243d1b555794e28d62674579ba8beaf1e791af9f89d3d002a686ca4bbff4ef6259339c2fd7104355'
  '15f78fe51578df310e5ac8439301d52645693e40ee2f2303c992b0fdac81574140dab32902e99e756f93db597be12825c003d811dc65d3c617c272e9093ac992'
  '5e468fd40f1be4029b79bea74212022520fee658f14d6f6bc3be8bc1fbf316b147ff3572b38e2d3d20ee8949cce34634954f51caa33f2d833614cc7ad18b564c'
  'bc8eb331879058808b91911d0907aca01715e499223eca84ac0974e90685d9a03799bced5359e0f201421be4c6bd7af796b06b3690543e470d527a8b9acffacd'
  '8c69c6e010dcb466abe18861497a8ccf822e3daaa87dc5f40713a15970d33f943dda45f9b2d874723b20da0d8ca841aa37e3795b4a3122d4416db4fc4953cc5f'
  '10e671a7a7b2fd60137563574c82d0f5f9ef0592b0aae8bd0df1dd14f0d77c0aa55816f8806f67bbc5afd3f65eebfe68a5f02ab3e6438c88b7594d7d9b93f9c3'
  '56755d311aad85de282623a044356d586e80f57049841942a74f5a63dfb1c45c1c6dbc54b0b52bdd2cf63680a586d46cb7d1affe9c2d3364e9014cbff687cdd0'
  'dacb0d78174d8006d4add52788c1960361f749b2857b3b5f95cbf874cc181769d7b95c0bfe7236c7e074c9882ba0744addead63c4429b6695900279a6d840207'
  'a428f7d8c3d0294494b56743b8e8a42d423e6e8f61147d99f1cc368330eca12277929d363cc6cbfd29d8fed2925c88b30a9617f3e0d253f6920e70142ddf46dc'
  '0939fa4e6590e8de94fa1079d7a0ad7693396ffa045f911eddfe31b3aa2a9eae25b0e4bc75dae21dcd89330de41c2b1bc33832e0d8d858d7390975ec2e376894'
  '94973d39c2ef8983f1c0eb3c4ad4d5f453a61a95df397ce425a881c9007d30a7919a745418450a13bf9c56fb3ff26348899e819be43d2785bd5bbf095f8a40da'
  '13773243da8e3bec038730fee9b4408c341e9f9d735535325886b4a93aa0efd861c19f4b79f7c1e88b22cf0362507b2bc628fcb1fc5e96392b4ca05dda922684'
  'cd923f0094675cef139a204416dfe428d7d3d47ccad253e7cd7d37b73749af5e57dcf2a904f3aa6d064e715a13394d9a9ae073ec282f9aa5d7d0d1b20e8c9368'
  '73cbea7559943747f01119aba0958d5c6db4aecd4edbd83e0b8cb52f4cbcf9cd6777cbb865c98a284dc316b99b0b47a2177e1d590c28c7facae3e99ce551bf2a'
  '987dd32a9b5fa908998b90f0e172908e1817423a644aa308d8adf5c1bbdf1458737d65e47d48432a29f860b82e5fe9045c2be98136b58427bb595002779b1a6b'
  '239ccb001e3e3bf313e057800483fed2cc2a238166fb67cee610d47b13bcf2bcda386dd83eb8059a60ce7de1780bfcc32dd540c36283a1714c38d3048cab79df'
  '7e9b5e92147756cb51e56705da1184da5571bba93831f08b03b9bc21f8bbf12422382e0b51b3e56c1d598950a4363df5b4ff917cfbc1540d20baa6b411ac47d2'
  'ce0dd10298e6d9f7b7842374433892e868f924851df48d3fc90c4bf650df1217ba92e0a0b067bc268b77985ceae0c90f20e2048df6ad0cca2f5a7937fb623aa8'
  '51af652e94633c8cb1ab87a950ea603794886971a868e47515d15e65ad461b1a0461feeeef278dbd6d9324194f6e656faee8567f0608e033ea8e2c657b0979a8'
)
b2sums_aarch64=(
  '7c08e2cc2a58bee51f6979ce24c0edabd7039335d9a9007ead091477835be5810f8c348f6515e02b955323c867f5a397cd64e59f5befeee6809425e859c538b4'
  'da5ffe19132fef6bed58e368b5a063b702979544a34750c286a2e2db1e1c8665d292d670e89198470a06327c48a9e201e8d81cd8d0c62eae8246c8568283b22a'
  'e8902741b324e8ad313dab74447ba91c68625012dbedd1ed629546246f125e16655612eac64287cf92872febad4605cd10f4b448052ab19cbb307a9d31cb1d69'
  '058309a84406cce6d74030f7313336e615868a987fa0a5c32f968c4bb3f745a8a011dd3247e54920c66ae134a556f300c6e20ffd2ffa75a8b3bbae28b7955693'
  '5d9f4c013d538927714589ea28bdd1c6f322e1940d5af343ade33004994853b7b53b8edc893b365ae8a31d9a4defdfa69ffcf5168d579b721f3f865d9b143178'
  '6234ae08a6a259571254b488266ac2d5001ccc4b09bb87f7bcd02a485aa40edb573ce67d042891a0a199db58700783e6dfe6fe48e859382ebfe13877d2a932ab'
  'cb7ad7085aaf4b9825efa74b132e09d0a8635fe07274f794803795a3c760df4a2c67b6b957a80780ed19c4196c09e7eb47acbf1a6025f46b7ae12aae9bb1e03e'
  '9e3915da00d7285cfd2c8479133d8b538bbc1d6b32fcadb62750acd746dddd953385ecf2ef5969b4a61963dbdc0100720b4a18f2629ddb1466f6742455bd191a'
  '9993ccb71bf06ac34b3edbcebfcf699de0c2694aa24dbb23ad9cc14b80e664e8e8417039909e98adca5c0ed07048cf290377cd745c1ae085b3903dbc230d59e9'
  'd6005505f889ad37fd4bad584e377e8f403f25ead0802043f975a5d2a9ddde5bd320d773e47ca4c97516fc8d28186bba51753fbfe8d3a8888e4d639523786e4d'
  'e6b47614ee0f561f49a8eda1f48fe36b6ad57157dfc0133f0c49bb9e2f2e6135c9fb6cac6feb4a42da522a4896869fd901dcb9018d642a244637df2a0e31c9ab'
  '204d41c6f010f8082256817ed70d27c1a637d6ec1d4010dfc2672179cd8a1ac8894b811c674cfd4b25828170678f6fb42018fb4d4cab64ca5514bd6bc8cc860e'
  'dfad2e8da9fe4ac5ee1efbe35e1e67726fc8505a8f65c7317bbbda901f758ab91f2f93acbc72844ff2e189f141bc25f5e5a94a02b4e8c92480d50d05af173e46'
  '3b5137d8c6f3ddc613877fd3f6dd14ad80b3529763a1e8190fa4f7c487cbfe3b59bd55e8e11b8e2cd4e587b8a7aa025a51a8d7d8e28c4e56b911c908f585a2ab'
  '2a9768ed1a489e7880788b6151ec4eef07447810e3a6f76f328d2c2b8706c0c0c1a2ca8b173f4e0db94144b4304db4badac7c3726d421c5728400bdbba374213'
  '4e2106d36025b33d8ac4a0a07e18becd1e0a584596686b962f6c31a869784b6a19804485fc8f07587600665cfe0db722afd955205ef3e5797f1e9cf7035c3207'
  '26b863929c2d5c3c6d1ef39d77560e2199aa235cd12ed93a14f627b108dd19be740d75fb4a6dc6a99385a5075d6bdde8058a90a97a16196d232f6691459c5053'
  '6d328ed66fdedb32b0bb8ce7f9196a1d6f0d495ce05b0c2e98458e2435a3df090173d911e50705424e2466fa912cb5ce1b4a94ae7e9a9239eaefb7735f0c18b7'
  '002691929bdea11fe7db58dd907ecce3fb052bec3b9feea55f4a2fe29249ea60ea9998486da28a5241c2a70dda9b0129c9c080566ef4daba424e32d567d65557'
  '51e3f7a719a0e13a681d7e69521b4df1f265e454763c727c465ec06ebd61eaa961701e93af2d77304e2fd0325faa10af3bf78e51b34b9e8f7bc0ac6d38f5dcda'
  '0a5801f0883078f2338840859b05db00240579daddab8972d222dd981d874937f1ed5ef800fb709a90460fcf68aaeb355a00d49558b339e45722a7836a0bbcdf'
  '0277cd63f4f96fc27d67bc843c86e2299958b1fd26a60c871831ba8f17c62fb81626e24adfd0e66b81f92af8df3a6c13edf5fe50c0a7fc186dffb3d0935057c8'
  'd03f38c2f805de3234a45c52626953836038c1a3bd6f0e4008abeba5802598f4f89e376c6b6722f58f13ed677e838652a5cd5dc992b34ef64a32320f16c27e1f'
  '38fe0505f70163135e7b55905b0f29b72afb1522f5aab41b8663ca763c0e02884c8e43c985f9778d17a6a63d31af964a482a1d564e725f9f520946515947b487'
  '549eb570ff51604b32edbb490e05b5e6d8251eb351ba8ae07fb4e87805555b86c9a48e2b3f8d6fe4e17f79b480fb282178c1bd463b9bd75ea10d232e3faf0821'
  '6ea93c2a4a46937991bc1c8aa1d852df6cc48dda1db16c37c17b03731bdabe3bb02e927067a2b0fb297853662c36a176a528727174cb842bd49ec7a2619268a6'
  'f81209cca09d64a08336e6bb8ee90861fbe6c2f4dd7a98644aa40cec14356ee1b6ee903133b43ead4fa5d053eac4f5face5870897806059fbc097fd132b3b87d'
  '381e5abaee93fe35a86145f00f87d2763d230913b3908895146d379d0f761098f2b046c89fdfdc6bf6ec299c04369b291f5338ea2a87ed754661e9396218fb95'
  '1bac619fc00ad03ecfcd37f0bbcbbeefdfac58895e772895137f91c2e160181a1729ffd0e3844bd1ebde4497c3be4e55e177b734b9bf754384e3461f68ce0d0e'
  'b4b4b7604fff83b220d56328f24adddf3276349b2a2783e8e9bcbffb93aa65157d6e245cfacdaf2013aeb991091b1e7cdbc1fbae93f1790871ecd127bf73a108'
  'a2f5a34830f77e05b65aa810039ff2167817540fb0e9ac45490106af30e352b444a2884f163638f3362dc1dd081a714dd191efdf941ce1187ba0d048ce42f853'
  'd993c185b5ddc46f213587cce2d1f41acad5ca8a75424ed0cbc49110fcfb14ae6a1245474242f585c4db57a15447792c2d88139988d19e2d43a74ad168c6affb'
  '5fe928099a51958a0759a286a4ade936b8198bd68629ed1bfacdbbd1490c5a7479fd314fbfbfb2e54b14c3397c36791fa1fb1cf28b6abe0848716dfa50accb34'
  'a75c95c0e07d77f1e4049dc78c6dd40a3d426f912d829cddee811104a69a055fc30a511776130f1a5aafdb1aafc2f04b4af9256a29cfe9c39aa5fb81def3075a'
)
b3sums_aarch64=(
  '42ce56782a66d5aae90bf63708e6b45866ab1d8a98a8a40726ddb4232e6fdc9a'
  'b9fb01e247c68e3464784c758ecc713e90323835e57d12f1b796d1c911f39a42'
  '9ac98b8a040cd8aa2211648c2998d350f3b4c03bb5a65f4336dc22e1f821c2e0'
  'a69f71ec80be8489b1bb5fca0b1b3e3d0c230ff3cf2b217378e7d54d126a994d'
  '5e242d115013f74bf927a49147db9f1c116a00ac8923f65a1e07d28e925f77db'
  '7d05eca2d639cf42a7abbbf835908c0b20f3846959532737aa9359c304717358'
  'add402760ddc233cad0557c1c0153fce79dbd81c185c4d09e14f7d5ea6bc6f3c'
  '565c58743a32bc7f6c03548d548358e1d554b804a7fe458ea4caceed205ce935'
  '8287c99c1796a83fdd4fa6c8222a7e3f2748900ca86d4d873cb49953dfedd88b'
  '459703031ca66177b1a81f75e4a756c848ae7e25c0a44e0b53a803072a7e11a8'
  'c8eb074ee472504e7696454df6f623277050b80341018854b26be8b07e487ef5'
  '31fdac2b01686dfa5b1d7b36fce61d48919bb7715972b4a37752d2e94bff4f4f'
  '30790c65bb69a0cc95148bb47078ee91aa6a84cf94a1073fb3fc0a792ca1085e'
  '4ee38133730a1f0c5680c5fd357221db0b4faa7a42d6ec5dca518795acee88e9'
  '3381e9fdfc34592c65ef48fc39bac24ad3dd237076c5391e9d67d6388c537324'
  'b37f579ef87d93e60eb0f8ebb9cd75d3a73703695b4b4f94bdf9cf4aeef110b5'
  '391f8c0f483466aa1e35f638377016d4ed4cb345bf1e3cf80c2e1239ea11f618'
  '0933be6c16fea0ee1dd8715949111f696aac2d3f9e927a86f85f191633fc95d8'
  '62ba7ccb4de362c5be298335573581d7c01e6e0c6f0297d5514cd3c3c749c938'
  '87b1c701d3c5c011262a4a8b090ea3f120268754df501ee3ed316dd46c4451b0'
  'f41409aeed97c798b7ae0d98089dc812dc2fa7215a8dc3d5f70c3e093f88d066'
  'dfb6620f8001cccbdbd9ed54f63b93fd68f83ce9ac05cc70f69a9bf7cae9923e'
  '11d4c2db2af6d80f997d8e0eb21ab28455a79691127bc7d8ce0d52da7b18986d'
  '95dc0fda45ae8edade0ff0443b06699148d4126ace4b9961398d7492a2100e15'
  'da59ac422a5625bcd54e17bc537ed1257ece5c722acf07352b60fbd72a587593'
  '9a8f45371c35bcea72e34ad3c1ae57d0d6aa968f1b9d9f9d3acb67455519db30'
  'bb029f9d10b2b00f5b53cdb60b386740a4ee720fc8ed8c77241cbde295c12950'
  '24262c29eefe170bfc0fb87548bb2ea5f75435a974801ca2f75fe5392b8143fb'
  'df0b0b57b627fff036b2eba93fec3b009f1829ce6862d9ff085ce131bd68b291'
  'd80560fe3552c5e4d8a8bff495a55f3f314df21af6c595338f8cfb9e016187ef'
  'be15bcfb997adc60954abd1fa2ac6d30cef3637dd15f151e77129335383b288e'
  '1da4e4672e80547bf65f9a96db14f34e8b1dfab4b5a60aef08dba89858202cd9'
  '95d8fd2eac56c541aa5dc21d85a4a36b0108d0303b0ce3cf7e23e8c6dd41fc50'
  'fdf13389e4108133c6c049106b4399bf04081a95e12f527bbf7c6211db14731f'
)

package_nvidia-datacenter-gpu-manager-core-bin(){
  provides=("nvidia-datacenter-gpu-manager-core")
  conflicts=("nvidia-datacenter-gpu-manager-core")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-dcgmproftesterkernels-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-devel-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-config-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-diag-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-health-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-introspect-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-nvswitch-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-policy-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-module-sysmon-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-multinode-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-python3-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/dcgmi-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/libdcgm-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/nv-hostengine-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
  mv "${pkgdir}/usr/share/cmake" "${pkgdir}/usr/lib"
}

package_nvidia-datacenter-gpu-manager-cuda11-bin(){
  depends=("nvidia-datacenter-gpu-manager-core=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-cuda11")
  conflicts=("nvidia-datacenter-gpu-manager-cuda11")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda11-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_nvidia-datacenter-gpu-manager-cuda12-bin(){
  depends=("nvidia-datacenter-gpu-manager-core=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-cuda12")
  conflicts=("nvidia-datacenter-gpu-manager-cuda12")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda12-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-multinode-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_nvidia-datacenter-gpu-manager-cuda13-bin(){
  depends=("nvidia-datacenter-gpu-manager-core=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-cuda13")
  conflicts=("nvidia-datacenter-gpu-manager-cuda13")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-cublas-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-curand-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-cusparselt-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-nccl-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-cuda13-ubergemm2-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-multinode-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_nvidia-datacenter-gpu-manager-proprietary-bin(){
  depends=("nvidia-datacenter-gpu-manager-core=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-proprietary")
  conflicts=("nvidia-datacenter-gpu-manager-proprietary")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/lib64/"* "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/lib64/" "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_nvidia-datacenter-gpu-manager-proprietary-cuda11-bin(){
  depends=("nvidia-datacenter-gpu-manager-cuda11=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-proprietary-cuda11")
  conflicts=("nvidia-datacenter-gpu-manager-proprietary-cuda11")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda11-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_nvidia-datacenter-gpu-manager-proprietary-cuda12-bin(){
  depends=("nvidia-datacenter-gpu-manager-cuda12=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-proprietary-cuda12")
  conflicts=("nvidia-datacenter-gpu-manager-proprietary-cuda12")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda12-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

package_nvidia-datacenter-gpu-manager-proprietary-cuda13-bin(){
  depends=("nvidia-datacenter-gpu-manager-cuda13=${pkgver}")
  provides=("nvidia-datacenter-gpu-manager-proprietary-cuda13")
  conflicts=("nvidia-datacenter-gpu-manager-proprietary-cuda13")
  bsdtar -C "${pkgdir}" -xf "${srcdir}/datacenter-gpu-manager-4-proprietary-cuda13-${_pkgver:-${pkgver}}-${_rel:-1}.${CARCH}.rpm"
  mkdir -p "${pkgdir}/usr/lib"
  mv "${pkgdir}/usr/libexec/"* "${pkgdir}/usr/lib"
  rm -rf "${pkgdir}/usr/libexec/" "${pkgdir}/usr/lib/.build-id"
}

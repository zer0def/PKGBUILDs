export CUDA_PATH=/opt/cuda
export PATH=$PATH:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin
# NOTE: Make sure this is updated when the gcc host compiler dependency changes.
export NVCC_PREPEND_FLAGS='-ccbin /usr/bin/g++-12'

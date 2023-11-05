export CUDA_PATH=/opt/cuda
export PATH=$PATH:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin

# This line used to not be required but it somehow is with cuda 12.3.
# We reported this as a bug to NVIDIA. For now, this seems like a viable
# workaround.
export NVCC_PREPEND_FLAGS='-ccbin /opt/cuda/bin'

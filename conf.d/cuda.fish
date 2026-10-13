export CUDA_HOME=/local/projects/cuda13/cuda-13.0
fish_add_path $CUDA_HOME/bin
if set -q LD_LIBRARY_PATH
    export LD_LIBRARY_PATH=$CUDA_HOME/targets/x86_64-linux/lib:$LD_LIBRARY_PATH
else
    export LD_LIBRARY_PATH=$CUDA_HOME/targets/x86_64-linux/lib
end
export CUDBG_USE_LEGACY_DEBUGGER=1

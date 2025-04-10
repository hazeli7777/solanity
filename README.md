# A CUDA based ed25519 vanity key finder (in Base58)

This is a GPU based vanity key finder. It does not currently use a CSPRNG and
any key generated by this tool is 100% not secure to use. Great fun for Tour de
Sol though.

## Configure
Open `src/config.h` and add any prefixes you want to scan for to the list.

## Building
Make sure your cuda binary are in your path, and build:

```bash
$ export PATH=/usr/local/cuda/bin:$PATH
$ make -j$(nproc)
```

## Running

```bash
LD_LIBRARY_PATH=./src/release ./src/release/cuda_ed25519_vanity
```
## Building

**Prerequisites:**

*   **NVIDIA CUDA Toolkit:** 您需要安装兼容版本的 CUDA Toolkit。可以从 [NVIDIA Developer 网站](https://developer.nvidia.com/cuda-downloads) 下载。
*   **C++ Compiler:** `nvcc` 需要一个兼容的 C++ 编译器（例如 GCC 或 Clang）。这通常作为 CUDA Toolkit 安装的一部分或您系统的构建工具的一部分进行安装。
*   **Make:** 需要 `make` 构建自动化工具。

**Steps:**

1.  **确保 CUDA 在您的 PATH 中：** 确保可以找到 `nvcc` 编译器和其他 CUDA 工具。如有必要，请将 `/usr/local/cuda` 替换为您的实际 CUDA 安装路径。
    ```bash
    export PATH=/usr/local/cuda/bin:$PATH
    ```

2.  **构建项目：** 使用 `make`。`-j$(nproc)` 标志使用所有可用的处理器核心并行化构建。
    ```bash
    make -j$(nproc)
    ```

**主要更新说明:**

*   明确列出了所需的先决条件：CUDA Toolkit、C++ 编译器和 `make`。
*   提供了 CUDA Toolkit 的下载链接。
*   解释了 `make -j$(nproc)` 命令的作用。
*   确认了编译过程主要依赖 CUDA Toolkit 和内置源代码，没有发现需要手动安装的外部库依赖。
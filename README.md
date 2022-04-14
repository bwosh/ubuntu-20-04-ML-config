# Description
This project delivers scripts required to install GPU environment for Python 3.7 developmnet witl many useful Data Science libraries.  
The only **prerequisite** is: 
Clean Ubuntu 20.04 LTS installation (Normal, w/ 3rd party prop drivers)

# Initial installations

Script below updats system, installs some libraries, compiles Python 3.7 from source code.

```bash
bash 1_basics.sh
```

# NVidia GPU Driver

Script below is installing NVidia GPU driver valid for this configuration.

```bash
bash 2_gpu_driver.sh
```

**System REBOOT is needed now**

# CUDA, CUDNN

(Thos step must be done after rebooting system after driver installation).  
When prompred about istallation components afer running script below - **choose ONLY CUDA Toolkit**

Prerequisites for this step:
* cudnn-linux-x86_64-8.4.0.27_cuda11.6-archive.tar.xz (from here: https://developer.nvidia.com/rdp/cudnn-download)

```bash
bash 3_cuda.sh
```


# Create common python environment

Script mentioned below will create standarized python (v3.7) environment.  
Some highlights:
* TensorFlow 2.4
* Pytorch 1.7.1
* Numpy 1.19.5
* OpenCV 4.5.5.64
* Pandas 1.3.4
* Matplotlib 3.5.1
* Nltk 3.7

```bash
bash 4_new_env.sh
```
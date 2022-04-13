# Description
* Python 3.7.13
* CUDA 11.0
* cuDNN 8.4
* TF 2.4 
* PYTORCH 1.7.1 

# Initial installations

```bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install libssl-dev openssl git binutils gcc g++ make htop tmux mc zlib1g zlib1g-dev

cd
mkdir bootstrap
cd bootstrap

# Python installation
wget https://www.python.org/ftp/python/3.7.13/Python-3.7.13.tgz
tar xf Python-3.7.13.tgz 
cd Python-3.7.13/
sudo apt-get -y install 
./configure
make
sudo make install

sudo apt-get install -y python3-venv
```

# NVidia Driver, CUDA, CUDNN

```bash
### (NOT READy YET)
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install -y nvidia-driver-510

wget http://developer.download.nvidia.com/compute/cuda/11.0.2/local_installers/cuda_11.0.2_450.51.05_linux.runsudo sh cuda_11.0.2_450.51.05_linux.run

# REBOOT 
cd ~/bootstrap

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget http://developer.download.nvidia.com/compute/cuda/11.0.2/local_installers/cuda-repo-ubuntu2004-11-0-local_11.0.2-450.51.05-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-0-local_11.0.2-450.51.05-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-0-local/7fa2af80.pub

# REBOOT 

sudo apt-get update
sudo apt-get -y install cuda
```

# Python env creation
```bash
python3 -m venv default_env
source default_env/bin/activate
```

# Python packages installation
```
python3 -m pip install numpy==1.19.5
python3 -m pip install pyparsing==3.0.8
python3 -m pip install cycler==0.11.0
python3 -m pip install fonttools==4.32.0
python3 -m pip install typing-extensions==4.1.1
python3 -m pip install kiwisolver==1.4.2
python3 -m pip install packaging==21.3 
python3 -m pip install six==1.16.0
python3 -m pip install python-dateutil==2.8.2
python3 -m pip install pillow==9.1.0
python3 -m pip install matplotlib==3.5.1
python3 -m pip install pytz==2022.1
python3 -m pip install pandas==1.3.5
python3 -m pip install regex==2022.3.15
python3 -m pip install tqdm==4.64.0
python3 -m pip install zipp==3.8.0
python3 -m pip install importlib-metadata==4.11.3
python3 -m pip install joblib==1.1.0
python3 -m pip install click==8.1.2
python3 -m pip install nltk==3.7 
python3 -m pip install opencv-python==4.5.5.64
python3 -m pip install MarkupSafe==2.1.1 Send2Trash==1.8.0 argon2-cffi==21.3.0 argon2-cffi-bindings==21.2.0 attrs==21.4.0 backcall==0.2.0 beautifulsoup4==4.11.1 bleach==5.0.0 cffi==1.15.0 debugpy==1.6.0 decorator==5.1.1 defusedxml==0.7.1 entrypoints==0.4 fastjsonschema==2.15.3 importlib-resources==5.6.0 ipykernel==6.13.0 ipython==7.32.0 ipython-genutils==0.2.0 ipywidgets==7.7.0 jedi==0.18.1 jinja2==3.1.1 jsonschema==4.4.0  matplotlib-inline==0.1.3 mistune==0.8.4 nbclient==0.6.0 nbconvert==6.5.0 nbformat==5.3.0 nest-asyncio==1.5.5 notebook==6.4.10 pandocfilters==1.5.0 parso==0.8.3 pexpect==4.8.0 pickleshare==0.7.5 prometheus-client==0.14.1 prompt-toolkit==3.0.29 psutil==5.9.0 ptyprocess==0.7.0 pycparser==2.21 pygments==2.11.2 pyrsistent==0.18.1 pyzmq==22.3.0 qtconsole==5.3.0 qtpy==2.0.1 soupsieve==2.3.2 terminado==0.13.3 tinycss2==1.1.1 tornado==6.1 traitlets==5.1.1 wcwidth==0.2.5 webencodings==0.5.1 widgetsnbextension==3.6.0
python3 -m pip install jupyter-client==7.2.2 jupyter-console==6.4.3 jupyter-core==4.9.2 jupyterlab-pygments==0.2.1 jupyterlab-widgets==1.1.0
python3 -m pip install jupyter==1.0.0 
python3 -m pip install setuptools==62.1.0
python3 -m pip install absl-py==0.15.0 astunparse==1.6.3 cachetools==5.0.0 certifi==2021.10.8 charset-normalizer==2.0.12 flatbuffers==1.12 gast==0.3.3 google-auth==2.6.4 google-auth-oauthlib==0.4.6 google-pasta==0.2.0 grpcio==1.32.0 h5py==2.10.0 idna==3.3 markdown==3.3.6 oauthlib==3.2.0 opt-einsum==3.3.0 protobuf==3.20.0 pyasn1==0.4.8 pyasn1-modules==0.2.8 requests==2.27.1 requests-oauthlib==1.3.1 rsa==4.8 six==1.15.0  termcolor==1.1.0 typing-extensions==3.7.4.3 urllib3==1.26.9 werkzeug==2.1.1 wheel==0.37.1 wrapt==1.12.1
python3 -m pip install keras-preprocessing==1.1.2 
python3 -m pip install tensorboard==2.8.0 tensorboard-data-server==0.6.1 tensorboard-plugin-wit==1.8.1 
python3 -m pip install tensorflow-estimator==2.4.0
python3 -m pip install tensorflow==2.4.0
pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
python3 -m pip install scipy==1.7.3
python3 -m pip install threadpoolctl==3.1.0
python3 -m pip install scikit-learn==1.0.2
python3 -m pip install tensorboardX==2.5
python3 -m pip install PyWavelets==1.3.0 PyYAML==6.0 tifffile==2021.11.2 networkx==2.6.3
python3 -m pip install opencv-python-headless==4.5.5.64 
python3 -m pip install imageio==2.10.5
python3 -m pip install scikit-image==0.19.2
python3 -m pip install albumentations==1.0.0
```



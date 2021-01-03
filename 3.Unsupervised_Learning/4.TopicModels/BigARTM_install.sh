# Step 1. Update and install dependencies
apt-get --yes update
apt-get --yes install git make cmake build-essential libboost-all-dev

# Step 2. Insall python packages
apt-get --yes install python-numpy python-pandas python-scipy
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install protobuf tqdm wheel

# Step 3. Clone repository and build
git clone --branch=stable https://github.com/bigartm/bigartm.git
cd bigartm
mkdir build && cd build
cmake ..
make

# Step 4. Install BigARTM
make install
export ARTM_SHARED_LIBRARY=/usr/local/lib/libartm.so

# Alternative step 4 - installing only the Python package
pip install python/bigartm*.whl

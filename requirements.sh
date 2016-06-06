#!/bin/bash

set -e 

pushd .

# keystone
cd /tmp
git clone https://github.com/keystone-engine/keystone.git
mkdir -p keystone/build && cd keystone/build
cmake .. && make -j8
sudo make install
cd ../bindings/python && sudo make install # or sudo make install3 for Python3

# capstone
cd /tmp
git clone https://github.com/aquynh/capstone.git
mkdir -p capstone/build && cd capstone/build
cmake .. && make -j8
sudo make install
cd ../bindings/python 
sudo make install 
sudo make install3 for Python3

# unicorn
cd /tmp
git clone https://github.com/unicorn-engine/unicorn.git
./make.sh -j8
sudo ./make.sh install
cd ./bindings/python 
sudo make install 
sudo make install3

popd

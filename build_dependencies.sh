#!/bin/bash
set -e
set -x
##############################
GITHUB_WORKSPACE="${PWD}"
ls -la ${GITHUB_WORKSPACE}
cd ${GITHUB_WORKSPACE}

# # ############################# 
#1. Install Dependencies and packages

apt update
apt-get install -q -y automake libtool autotools-dev software-properties-common build-essential cmake libsystemd-dev libctemplate-dev libjsoncpp-dev libdbus-1-dev libnl-3-dev libnl-route-3-dev libsystemd-dev libyajl-dev libcap-dev libboost-dev lcov clang valgrind meson libyaml-dev
pip3 install xmltodict
pip3 install requests
############################
# git clone --recurse-submodules https://github.com/containers/libocispec.git
# cd libocispec

# git submodule update --init --recursive
# git clean -dfx
# ./autogen.sh
# ./configure
# make
# make install
# echo "completed building ocispec"
# cd -

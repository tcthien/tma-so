#!/bin/bash

if [ -z "${1}" ]; then
    echo "Please include ENV Variable :<ubuntu (u) | raspbian (r)>"
    exit
fi

export TMA_SO_HOME=~/tma-so-software/
export TMA_SO_TARGET_OS=$1

# Check & create TMA_SO_HOME
if [ -d "${TMA_SO_HOME}" ]; then
    rm -rf ${TMA_SO_HOME}
fi
mkdir ${TMA_SO_HOME}
chmod 777 ~/tma-so-software

# Check & clone exec source from github
cd ${TMA_SO_HOME}
if [ -d "${TMA_SO_HOME}/sources" ]; then
    rm -rf ${TMA_SO_HOME}/sources
fi
git clone https://github.com/tcthien/tma-so sources

# Run setup
cd ${TMA_SO_HOME}/sources/scripts
./setup ${1}
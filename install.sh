#!/bin/bash

if [ -z "${1}" ]; then
    echo "Please include ENV Variable :<ubuntu (u) | raspbian (r)>"
    exit
fi

export TMA_SO_HOME=~/tma-so-software/
export TMA_SO_TARGET_OS=$1

mkdir ${TMA_SO_HOME}
chmod 777 ~/tma-so-software
cd ${TMA_SO_HOME}
git clone https://github.com/tcthien/tma-so sources
cd ${TMA_SO_HOME}/sources/scripts

./setup ${1}
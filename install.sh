#!/bin/bash

# Check & create TMA_SO_HOME
if [ -d "${TMA_SO_HOME}" ]; then
    rm -rf ${TMA_SO_HOME}
fi
mkdir ${TMA_SO_HOME}
chmod 777 ${TMA_SO_HOME}

# Check & clone exec source from github
cd ${TMA_SO_HOME}
if [ -d "${TMA_SO_HOME}/sources" ]; then
    rm -rf ${TMA_SO_HOME}/sources
fi
git clone https://github.com/tcthien/tma-so sources
chmod 777 ${TMA_SO_HOME}/sources/scripts/bin/run

# Run setup
cd ${TMA_SO_HOME}/sources/scripts
./setup ${1}

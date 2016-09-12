#!/bin/bash

if [ -z "${1}" ]; then
    echo "Please include ENV Variable :<ubuntu (u) | raspbian (r)>"
    exit
fi

export TMA_SO_HOME=~/tma-so-software/
export TMA_SO_TARGET_OS=$1

rm -rf ~/${TMA_SO_HOME}


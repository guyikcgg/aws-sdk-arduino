#!/bin/sh

usage() {
    echo ""
    echo "Usage:"
    echo "$0 architecture"
    echo ""
    echo "available architectures: "
    ls src
}

if [ $# -ne 1 ]
then
    echo "$0: error: invalid number of arguments"
    usage
    exit
fi

ARCH=$1
LIB=libraries/aws-sdk-arduino-$ARCH

mkdir -p $LIB/src $LIB/examples

cp src/$ARCH/*.h src/$ARCH/*.cpp $LIB/src/
cp samples/*.ino $LIB/examples

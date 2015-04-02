#!/bin/bash
LIB_PATH="${1}/lib"
T_TMP_PATH="${LIB_PATH}/treat/tmp"
T_BIN_PATH="${LIB_PATH}/treat/bin"
T_MOD_PATH="${LIB_PATH}/treat/models"

mkdir -p $T_TMP_PATH $T_BIN_PATH $T_MOD_PATH

cd $T_TMP_PATH
mkdir ./stan-nlp
cd stan-nlp
wget http://louismullie.com/treat/stanford-core-nlp-all.zip
unzip stanford-core-nlp-all.zip
rm stanford-core-nlp-all.zip
mkdir -p "${T_BIN_PATH}/stanford"
mv ./*.jar "${T_BIN_PATH}/stanford/"
mkdir -p "${T_MOD_PATH}/stanford"
rmdir -Rf "./__MACOSX"
mv ./* "${T_MOD_PATH}/stanford/"

cd "${LIB_PATH}/.."

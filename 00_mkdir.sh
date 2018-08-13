#!/bin/bash

df="$HOME/.fonts"
if [ -d "$df" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for fonts ..."
    mkdir $df
fi
#export DIR_FONT=$df

ds="$HOME/Sources"
if [ -d "$ds" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for Sources ..."
    mkdir $ds
fi
#export DIR_SRC=$ds

dg="$HOME/GitHub"
if [ -d "$dg" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for GitHub ..."
    mkdir $dg
fi
#export DIR_GH=$dg

do="$HOME/opt"
if [ -d "$do" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for Options ..."
    mkdir $do
fi
#export DIR_OPT=$do

db="$HOME/bin"
if [ -d "$db" ]
then
    echo "Directory exists! Skipping ..."
else
    echo "Create directory for fonts ..."
    mkdir $db
fi
#export DIR_BIN=$db

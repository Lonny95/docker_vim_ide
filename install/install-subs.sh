#!/bin/bash
cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
dir=$1
tmpDir=tmp
for inst in $( ls $cur_dir/$dir/ ); do
    mkdir $cur_dir/$tmpDir
    cp $cur_dir/$dir/$inst $cur_dir/$tmpDir/
    cd $cur_dir/$tmpDir
    ./$inst
    cd ..
    rm -r ./$tmpDir
done

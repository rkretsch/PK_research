#!/bin/bash

for i in {0..21}
  do
    echo $i
    mkdir $i
    cd $i
    cp ../run.sbatch .
    sed -i "s/NUM/$i/g" run.sbatch
    sbatch run.sbatch
    cd ..
  done

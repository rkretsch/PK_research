#!/bin/bash
#SBATCH -J shapeknots
#SBATCH -o run.out
#SBATCH -e run.err
#SBATCH -p biochem
#SBATCH -t 24:00:00
#SBATCH -n 1
#SBATCH -N 1

module load gcc
cd $GROUP_SCRATCH/gnye8/threshknot_fold_benchmarking/run_6/21
python $GROUP_HOME/rkretsch/PK/arnie/scripts/evaluate_shapeknots_fold.py /scratch/groups/rhiju/gnye8/threshknot_fold_benchmarking/shapeknots_seqs/21.fasta /scratch/groups/rhiju/gnye8/threshknot_fold_benchmarking/shapeknots_reactivity/21.txt

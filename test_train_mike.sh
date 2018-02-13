#!/bin/bash
#$ -P rse
#$ -pe smp 1
#$ -l rmem=5005G
#$ -l h_rt=96:00:00
#$ -m bea
#$ -N trainNDL

module load apps/python/conda
source activate ooominds_debug

export TMPDIR=/scratch
ipython3 test_train.py  "/shared/ooominds1/Shared/noun_allomorphy/data/event_files/tri.gz" "./tri_test.nc"

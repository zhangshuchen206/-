#!/bin/bash

BENCHMARKS="XSBench gapbs-pr"
#BENCHMARKS="gapbs-pr"
NVM_RATIO="1:0"

sudo dmesg -c

for BENCH in ${BENCHMARKS};
do
    for NR in ${NVM_RATIO};
    do
	./scripts/run_bench.sh -B ${BENCH} -R ${NR} -V memtis-all
    done
done

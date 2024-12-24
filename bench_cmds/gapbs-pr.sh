#!/bin/bash

######## changes the below path
BIN=/sharenvme/usershome/zhangsc/memtis/memtis-userspace/bench_dir/gapbs
GRAPH_DIR=${BIN}/benchmark/graphs/raw

BENCH_RUN="${BIN}/pr -f ${GRAPH_DIR}/twitter.el -i1000 -t1e-4 -n20"
BENCH_DRAM=""


# twitter.sg: ~12600MB 

if [[ "x${NVM_RATIO}" == "x1:32" ]]; then
    BENCH_DRAM="382MB"
elif [[ "x${NVM_RATIO}" == "x1:16" ]]; then
    BENCH_DRAM="740MB"
elif [[ "x${NVM_RATIO}" == "x1:8" ]]; then
    BENCH_DRAM="1400MB"
elif [[ "x${NVM_RATIO}" == "x1:4" ]]; then
    BENCH_DRAM="2520MB"
elif [[ "x${NVM_RATIO}" == "x1:2" ]]; then
    BENCH_DRAM="4200MB"
elif [[ "x${NVM_RATIO}" == "x1:1" ]]; then
    BENCH_DRAM="6300MB"
elif [[ "x${NVM_RATIO}" == "x1:0" ]]; then
    BENCH_DRAM="70000MB"
fi


export BENCH_RUN
export BENCH_DRAM

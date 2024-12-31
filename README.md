# MEMTIS userspace

## For artifact evaluation
1) Install benchmarks to ./bench\_dir

2) Create ./bench\_cmds/[Benchmark].sh file

3) Execute ./run-all-nvm.sh, ./run-all-nvm-fig7.sh for obtaining baseline performance

4) Execute ./run-fig5-6-10.sh, 

Execution time may vary depending on system configurations. Execution times for each script in our machine are as follows:
- ./run-fig5-6-10.sh --> 7h


** Running MEMTIS in the CXL emulation mode after rebooting the server. 

You can parse results by using "parse-results.sh"
- Fig.5: memtis-perf.dat
- Fig.6: results/${BENCH}/memtis-all/[Memory config.]/hotness\_stat.txt
- Fig.7: memtis-scalability.dat
- Fig.8: memtis-stat.dat
- Fig.9: results/[btree or silo]/memtis-all/1:8/throughput.out 
- Fig.10: memtis-hitratio.dat
- Fig.11: memtis-cxl.dat

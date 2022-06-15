#!/bin/bash

timestamp=$(date +"%Y%m%d_%H%M%S")

for n in 2 4 8 16;
do
    for i in $(seq 1 10);
    do
        pts=$((500*$i))
        OMP_NUM_THREADS=$n ./bin/area_parallel_reduce $pts > out/parallel_reduce/$timestamp-parallelreduce-$n-$pts.out;
    done;
done
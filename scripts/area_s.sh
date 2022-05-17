#!/bin/bash

#!/bin/bash

timestamp=$(date +"%Y%m%d_%H%M%S")

for i in $(seq 1 10);
do
    pts=$((500*$i))
    ./bin/area_sequential $pts > out/$timestamp-sequential-$pts.out;
done
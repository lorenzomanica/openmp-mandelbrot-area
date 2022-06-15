compile:
	gcc -o bin/area_sequential src/area_sequential.c -lm -fopenmp
	gcc -o bin/area_parallel src/area_parallel.c  -lm -fopenmp
	gcc -o bin/area_parallel_load src/area_parallel_load.c  -lm -fopenmp
	gcc -o bin/area_parallel_reduce src/area_parallel_reduce.c -lm -fopenmp

seq: compile
	sh ./scripts/area_s.sh
	
p: compile
	sh ./scripts/area_p.sh

plb: compile
	sh ./scripts/area_l.sh

pr: compile
	sh ./scripts/area_r.sh

clean:
	rm bin/*
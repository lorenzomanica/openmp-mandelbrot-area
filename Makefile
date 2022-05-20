compile:
	gcc -o bin/area_sequential src/area_sequential.c -lm -fopenmp
	gcc -o bin/area_parallel src/area_parallel.c  -lm -fopenmp
	gcc -o bin/area_parallel_load src/area_parallel_load.c  -lm -fopenmp

seq: compile
	sh ./scripts/area_s.sh
	
par: compile
	sh ./scripts/area_p.sh

pal: compile
	sh ./scripts/area_l.sh

clean:
	rm bin/*
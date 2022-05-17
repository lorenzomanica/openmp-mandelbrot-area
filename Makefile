compile:
	gcc -o bin/area_sequential src/area_sequential.c -lm -fopenmp
	gcc -o bin/area_parallel src/area_parallel.c  -lm -fopenmp

seq: compile
	sh ./scripts/area_s.sh
	
run: compile
	sh ./scripts/area_p.sh

clean:
	rm bin/*

image:image.c image.h
	gcc -g image.c -o image -lm
imageomp: imageomp.c image.h
	gcc -g imageomp.c -o imageomp -lm -fopenmp
imagep: imagepthread.c imagep.h
	gcc -g imagepthread.c -o imagep -lm -lpthread
clean:
	rm -f image imageomp output.png

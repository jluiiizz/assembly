CC=nasm
OPT=-felf64 -o input.o

all: build link run

build: input.asm
	$(CC) $(OPT) input.asm

link: input.o
	ld input.o -o input.out

run:
	./input.out

clean: 
	rm -rf *.out
	rm -rf *.o
CC=nasm
OPT=-felf64 -o hello.o

all: build link run

build: hello.asm
	$(CC) $(OPT) hello.asm

link: hello.o
	ld hello.o -o hello.out

run:
	./hello.out

clean: 
	rm -rf *.out
	rm -rf *.o
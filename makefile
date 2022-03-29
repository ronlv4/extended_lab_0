all: clean main

main: main.o numbers.o
	gcc -g -m32 -Wall -o main main.o numbers.o

main.o: main.c
	gcc -m32 -g -Wall -c -o main.o main.c

numbers.o: numbers.c
	gcc -m32 -g -Wall -c -o numbers.o numbers.c

clean:
	mkdir -p "bin"
	rm -rf ./bin
build:
	mkdir -p build

exit.o:
	as exit.s -o exit.o

exit: build exit.o
	ld exit.o -o build/exit

run: exit
	./build/exit
	echo $$?
#	echo $$status  # for fish shell

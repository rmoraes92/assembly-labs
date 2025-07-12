build:
	mkdir -p build

maximum.o:
	as \
		-g \
	maximum.s -o maximum.o

maximum: build maximum.o
	ld maximum.o -o ./build/maximum

debug: maximum
	gdb ./maximum

run: maximum

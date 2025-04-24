exit.o:
	as exit.s -o exit.o

exit: exit.o
	ld exit.o -o exit

run: exit
	./exit
	echo $$?
#	echo $$status  # for fish shell

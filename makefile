all: vecprod vecmain out

vecprod: vecprod.c
	gcc -Wall -c vecprod.c

vecmain: vecmain.c
	gcc -Wall -c vecmain.c

out: vecprod.o vecmain.o
	gcc vecprod.o vecmain.o -o out 

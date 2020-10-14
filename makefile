all: vecprod vecdot vecadd vecmain out

vecprod: vecprod.c
	gcc -Wall -c vecprod.c

vecdot: vecdot.c
	gcc -Wall -c vecdot.c

vecadd: vecadd.c
	gcc -Wall -c vecadd.c

vecmain: vecmain.c
	gcc -Wall -c vecmain.c


out: vecprod.o vecdot.o vecadd.o vecmain.o
	gcc vecprod.o vecdot.o vecadd.o vecmain.o -o out 

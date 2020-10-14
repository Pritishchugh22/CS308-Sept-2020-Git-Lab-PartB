all: vecprod vecdot vecmain out

vecprod: vecprod.c
	gcc -Wall -c vecprod.c

vecdot: vecdot.c
	gcc -Wall -c vecdot.c

vecmain: vecmain.c
	gcc -Wall -c vecmain.c

out: vecprod.o vecdot.o vecmain.o
	gcc vecprod.o vecdot.o vecmain.o -o out 

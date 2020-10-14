all: vecprod vecdot vecadd vecnorm vecangle vecmain out

vecprod: vecprod.c
	gcc -Wall -c vecprod.c

vecdot: vecdot.c
	gcc -Wall -c vecdot.c

vecadd: vecadd.c
	gcc -Wall -c vecadd.c

vecnorm: vecnorm.c
	gcc -Wall -c vecnorm.c 

vecangle: vecangle.c
	gcc -Wall -c vecangle.c

vecmain: vecmain.c
	gcc -Wall -c vecmain.c


out: vecprod.o vecdot.o vecadd.o vecnorm.o vecangle.o vecmain.o
	gcc vecprod.o vecdot.o vecadd.o vecnorm.o vecangle.o vecmain.o -o out -lm
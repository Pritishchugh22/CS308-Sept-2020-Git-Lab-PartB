all: vecprod vecdot vecadd vecnorm vecmain out

vecprod: vecprod.c
	gcc -Wall -c vecprod.c

vecdot: vecdot.c
	gcc -Wall -c vecdot.c

vecadd: vecadd.c
	gcc -Wall -c vecadd.c

vecnorm: vecnorm.c
	gcc -Wall -c vecnorm.c 

vecmain: vecmain.c
	gcc -Wall -c vecmain.c


out: vecprod.o vecdot.o vecadd.o vecnorm.o vecmain.o
	gcc vecprod.o vecdot.o vecadd.o vecnorm.o vecmain.o -o out -lm
# all:
# 	$(CC) *.c -lm
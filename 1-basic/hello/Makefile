.PHONY: run all

all: run

hell: hell.f90
	gfortran hell.f90 -o hell

run: hell
	./hell

clean:
	rm -f hell

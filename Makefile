all: airline.out

airline.out:	main.o plane.o flight.o utilities.o
	g++ -o airline.out -ansi -Wall -g main.o plane.o flight.o utilities.o

main.o:	main.cpp flight.h plane.h utilities.h
	g++ -o main.o -ansi -Wall -g -c main.cpp

flight.o: flight.cpp flight.h utilities.h
	g++ -o flight.o -ansi -Wall -g -c flight.cpp

plane.o:	plane.cpp plane.h utilities.h
	g++ -o plane.o -ansi -Wall -g -c plane.cpp

utilities.o:	utilities.cpp utilities.h
	g++ -o utilities.o -ansi -Wall -g -c utilities.cpp

clean:
	-rm -f *.o airline.out
objects = main.o Student.o Date.o Room.o Reservation.o Library.o

a1: $(objects)
	g++ -o a1 $(objects)

main.o: main.cc Student.h Date.h Room.h Reservation.h Library.h a1-global.cc
	g++ -c main.cc 

Library.o: Library.h Reservation.h Room.h Date.h Student.h Library.cc
	g++ -c Library.cc

Reservation.o:	Reservation.h Room.h Date.h Student.h Reservation.cc
	g++ -c Reservation.cc

Room.o: Room.h Room.cc
	g++ -c Room.cc
	
Date.o:	Date.h Date.cc
	g++ -c Date.cc
	
Student.o:	Student.h Student.cc
	g++ -c Student.cc

clean:
	rm -f a1 *.o	

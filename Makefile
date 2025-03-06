## V1
hello: main.cpp printhello.cpp fatorial.cpp
	g++ -o hello main.cpp printhello fatorial
	
## V2
CXX = g++
TARFET = hello
OBJ = main.o printhello.o fatorial.o
$(TARFET):$(OBJ)
	$(CXX) -o $(TARFET) $(OBJ)

main.o: main.cpp
	#(CXX) -c main.cpp

printhello.o: printhello.cpp
	#(CXX) -c printhello.cpp

fatorial.o: fatorial.cpp
	#(CXX) -c fatorial.cpp

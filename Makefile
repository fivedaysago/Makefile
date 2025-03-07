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


#-g 可执行程序包含调试信息 目的是为了给GBD工具调试使用
#-o 指定输出文件名
#-c 只编译不连接  产生 .o的文件 不产生可执行文件
# $@表示就是冒号前面的东西及target目标
# $^表示就是冒号后的东西及obj依赖
# $<依赖中的第一个


##V3
CXX = g++
TARFET = hello
OBJ = main.o printhello.o fatorial.o

CXXFLASS = -c -Wall

$(TARFET):$(OBJ)
	$(CXX) -o $@ $^

%.o: %.cpp
	#(CXX) $(CXXFLASS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o $(TARFET)

##V4
CXX = g++
TARFET = hello
SRC = $(wildcard *.cpp)
OBJ = $(patsubst *.cpp , %.o $(SRC))

CXXFLASS = -c -Wall

$(TARFET):$(OBJ)
	$(CXX) -o $@ $^

%.o: %.cpp
	#(CXX) $(CXXFLASS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o $(TARFET)


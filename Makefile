CXX=g++
#CXX=clang++
all:
	$(CXX) -g -c f.cpp -o f.o
	$(CXX) -g -c weak.cpp -o weak.o
	@ar -rc libf.a f.o
	$(CXX) -g -lf -L./ weak.o -o weak
	#$(CXX) -g f.o weak.o -o weak

clean:
	rm -rf *.o weak libf.a


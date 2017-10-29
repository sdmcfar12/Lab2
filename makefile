#directory for include files (such as matops.h)
IDIR= .

#specify the compiler that will be used for compilation
CC=gcc

#specify the compiler optimization options
OPTFLAGS = -g -std=c99

CFLAGS = -I$(IDIR) -I. $(OPTFLAGS)

#speficy the directories to any libraries that might be used
LIBSDIR= -L.. -I/usr/include
#specify the libraries that will be used (we only use the math library -lm)
LIBS= -lm

#now specify that he code will be re-compiled to produce the *.o files
matops: main.o multiply.o
	$(CC) -o $@ $^ $(CFLAGS) $(LIBSDIR) $(LIBS)

#this is the clean command, which we define it to remove all the *.o file
#it is usually used before starting a clean code build
clean:
	rm -f *.o

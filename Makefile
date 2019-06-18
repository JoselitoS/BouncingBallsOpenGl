CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.cc
OBJECTS=$(SOURCES:.cc=.o)
EXECUTABLE=ejecutable

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -rf *.o

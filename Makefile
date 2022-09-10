
UNAME := $(shell uname)

ifeq ($(OS),Windows_NT)
	DELETE := del /Q /S *.o *.exe
else
	DELETE := rm -rf *.o *.ch
endif


.PHONY: clean

hello: hello_world.c
	gcc -o hello hello_world.c

clean:
	${DELETE} hello
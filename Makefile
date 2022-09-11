
ifeq ($(OS),Windows_NT)
	DELETE := del /Q /S
else
	DELETE := rm -rf
endif


.PHONY: clean

hello_world: hello_world.c
	gcc -o hello_world hello_world.c

clean:
	${DELETE} hello_world
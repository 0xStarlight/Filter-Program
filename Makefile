.DEFAULT_GOAL:=all
.PHONY: all
all: bin/filter

CC=clang-11
WARNING_FLAGS=-Qunused-arguments -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow
CFLAGS=-ggdb3 -O0 -std=c11 $(WARNING_FLAGS)
LDFLAGS=-lm

bin/filter: src/filter.c src/helpers.c src/bmp.h src/helpers.h bin
	$(CC) $(CFLAGS) src/filter.c src/helpers.c -o $@ $(LDFLAGS)

bin:
	mkdir bin

.PHONY: clean
clean:
	-rm -rf bin/*

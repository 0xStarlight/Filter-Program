.PHONY: all
all: bin/filter

bin/filter: src/bmp.h src/filter.c src/helpers.c src/helpers.h
	mkdir bin
	clang -ggdb3 -O0 -Qunused-arguments -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow -lm -o bin/filter src/filter.c src/helpers.c

.PHONY: clean
clean:
	-rm -rf bin

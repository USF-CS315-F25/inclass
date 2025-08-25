.PHONY: all clean
CC      := gcc
CFLAGS  := -g -O2 -Wall -Wextra
LDFLAGS := -g

PROGS := hello strings counting pointers concepts
HELLO_OBJS := hello.o
STRINGS_OBJS := strings.o
COUNTING_OBJS := counting.o
POINTERS_OBJS := pointers.o
CONCEPTS_OBJS := concepts.o

OBJS := ${HELLO_OBJS} ${STRINGS_OBJS} ${COUNTING_OBJS} \
        ${POINTERS_OBJS} ${CONCEPTS_OBJS}

%.o: %.c
	${CC} -c ${CFLAGS} -o $@ $<

all: ${PROGS}

hello: ${HELLO_OBJS}
	${CC} ${LDFLAGS} -o $@ $^

strings: ${STRINGS_OBJS}
	${CC} ${LDFLAGS} -o $@ $^

counting: ${COUNTING_OBJS}
	${CC} ${LDFLAGS} -o $@ $^

pointers: ${POINTERS_OBJS}
	${CC} ${LDFLAGS} -o $@ $^

concepts: ${CONCEPTS_OBJS}
	${CC} ${LDFLAGS} -o $@ $^

clean:
	rm -rf ${PROGS} ${OBJS}

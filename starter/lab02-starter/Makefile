PROGS := add2 mul2 add4 mul4
ADD2_OBJS := add2_c.o add2_s.o add2.o
ADD4_OBJS := add4_c.o add4_s.o add4.o
MUL2_OBJS := mul2_c.o mul2_s.o mul2.o
MUL4_OBJS := mul4_c.o mul4_s.o mul4.o

OBJS := ${ADD2_OBJS} ${ADD4_OBJS} ${MUL2_OBJS} ${MUL4_OBJS}

%.o: %.s
	as -g -o $@ $<

%.o: %.c
	gcc -c -g -o $@ $<

all: ${PROGS}

add2: $(ADD2_OBJS)
	gcc -g -o $@ $^

add4: $(ADD4_OBJS)
	gcc -g -o $@ $^

mul2: $(MUL2_OBJS)
	gcc -g -o $@ $^

mul4: $(MUL4_OBJS)
	gcc -g -o $@ $^
	

clean:
	rm -rf ${PROGS} ${OBJS}

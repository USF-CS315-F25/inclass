PROGS = first_c first_s
FIRSTC_OBJS = first_c.o
FIRSTS_OBJS = first_s.o

CLEAN_OBJS = ${FIRSTC_OBJS} ${FIRSTS_OBJS}

%.o : %.s
	as -g -o $@ $<

%.o : %.c
	gcc -g -c -o $@ $<

all : ${PROGS}

first_c : ${FIRSTC_OBJS}
	gcc -g -o $@ $^

first_s : ${FIRSTS_OBJS}
	gcc -g -o $@ $^

clean:
	rm -rf ${CLEAN_OBJS} ${PROGS}

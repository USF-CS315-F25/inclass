.PHONY: all clean
CC      := gcc
CFLAGS  := -g -O2 -Wall -Wextra
LDFLAGS := -g

PROGS := echorepeat echorepeat_cfg
ECHOREPEAT_OBJS := echorepeat.o
ECHOREPEAT_CFG_OBJS := echorepeat_cfg.o

OBJS := ${ECHOREPEAT_OBJS} ${ECHOREPEAT_CFG_OBJS}

%.o: %.c
	${CC} -c ${CFLAGS} -o $@ $<

all: ${PROGS}

echorepeat: ${ECHOREPEAT_OBJS}
	${CC} ${LDFLAGS} -o $@ $^

echorepeat_cfg: ${ECHOREPEAT_CFG_OBJS}
	${CC} ${LDFLAGS} -o $@ $^


clean:
	rm -rf ${PROGS} ${OBJS}

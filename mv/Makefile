# baseutils mv Makefile

CC ?=		cc
CFLAGS ?=	-O2 -pipe
CFLAGS +=	-I../libopenbsd -include openbsd.h

LIBS =	../libopenbsd/libopenbsd.a

PREFIX ?=	/usr/local
MANDIR ?=	/usr/local/share/man

PROG =	mv
OBJS =	cp.o mv.o rm.o

all: ${OBJS}
	${CC} ${LDFLAGS} -o ${PROG} ${OBJS} ${LIBS}

install:
	install -c -s -m 555 ${PROG} ${PREFIX}/exec/${PROG}
	install -c -m 444 ${PROG}.1 ${MANDIR}/man1

clean:
	rm -f ${PROG} ${OBJS}

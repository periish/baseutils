# baseutils grep Makefile

CC ?=		cc
CFLAGS ?=	-O2 -pipe
CFLAGS +=	-I../libopenbsd -include openbsd.h `pkg-config --cflags zlib`

LIBS =	`pkg-config --libs zlib` ../libopenbsd/libopenbsd.a

PREFIX ?=	/usr/local
MANDIR ?=	/usr/local/share/man

PROG =	grep
OBJS =	binary.o file.o grep.o mmfile.o queue.o util.o

all: ${OBJS}
	${CC} ${LDFLAGS} -o ${PROG} ${OBJS} ${LIBS}

install:
	install -c -s -m 555 ${PROG} ${PREFIX}/exec/${PROG}
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/egrep
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/fgrep
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/zgrep
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/zegrep
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/zfgrep
	install -c -m 444 ${PROG}.1 ${MANDIR}/man1

clean:
	rm -f ${PROG} ${OBJS}

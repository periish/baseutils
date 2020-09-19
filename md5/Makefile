# baseutils md5 Makefile

CC ?=		cc
CFLAGS ?=	-O2 -pipe
CFLAGS +=	-I../libopenbsd -include openbsd.h -I../md5

LIBS =	../libopenbsd/libopenbsd.a

PREFIX ?=	/usr/local
MANDIR ?=	/usr/local/share/man

PROG =	md5
OBJS =	crc.o md5.o

all: ${OBJS}
	${CC} ${LDFLAGS} -o ${PROG} ${OBJS} ${LIBS}

install:
	install -c -s -m 555 ${PROG} ${PREFIX}/exec/${PROG}
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/sha1
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/sha256
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/sha512
	ln -s ${PREFIX}/exec/${PROG} ${PREFIX}/exec/cksum
	install -c -m 444 ${PROG}.1 ${MANDIR}/man1
	install -c -m 444 cksum.1 ${MANDIR}/man1

clean:
	rm -f ${PROG} ${OBJS}

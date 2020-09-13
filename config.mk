PREFIX ?=   /pkg/baseutils
MANDIR ?=   /pkg/baseutils/man
BINDIR ?=   /pkg/baseutils/exec

CFLAGS ?= -pipe -O2

UTILS =\
    libopenbsd \
	yacc \
	mv \
	sed \
	apply \
	arch \
	awk \
	banner \
	basename \
	bc \
	biff \
	cal \
	cat \
	cmp \
	col \
	colrm \
	column \
	comm \
	cp \
	csplit \
	ctags \
	cut \
	date \
	dd \
	deroff \
	diff \
	dirname \
	du \
	echo \
	ed \
	env \
	expand \
	expr \
	false \
	fmt \
	fold \
	grep \
	indent \
	join \
	jot \
	ln \
	ls \
	mkdir \
	nl \
	paste \
	patch \
	pax \
	printf \
	pwd \
	rm \
	rmdir \
	sleep \
	sync \
	tee \
	test \
	true \
	uname \
	unifdef \
	uniq \
	wc \
	who \
	whois \
	xargs \
	yes

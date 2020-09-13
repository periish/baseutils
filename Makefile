# baseutils top Makefile

include config.mk

all:
	for util in $(UTILS); do echo "make  $$util"; make -C $$util >/dev/null; done 

install:
	for util in $(UTILS); do echo "install  $$util"; make -C $$util install >/dev/null; done 

clean:
	for util in $(UTILS); do echo "clean  $$util"; make -C $$util clean >/dev/null; done 

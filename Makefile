# baseutils top Makefile

include config.mk

all:
	for util in $(UTILS); do echo "make  $$util"; (cd $$util; $(MAKE))  >/dev/null; done 

install:
	for util in $(UTILS); do echo "install  $$util"; (cd $$util; $(MAKE) install) >/dev/null; done 

clean:
	for util in $(UTILS); do echo "clean  $$util"; (cd $$util; $(MAKE) clean) >/dev/null; done 

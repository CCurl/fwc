BITS ?= 64

all: fwc

fwc: *.c *.h
	$(CC) -m$(BITS) -O3 -o fwc *.c
	ls -l fwc

clean:
	rm -f fwc

run: fwc
	./fwc

bin: fwc
	cp -u -p fwc ~/bin/

boot: fwc-boot.fth
	cp -u -p fwc-boot.fth ~/bin/

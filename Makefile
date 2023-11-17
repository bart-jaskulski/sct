.PHONY: clean install uninstall

PREFIX = /usr/local

SCTDLIBS = -lXrandr -lX11

sct: sct.o
	$(CC) $(CFLAGS) -o $@ sct.c $(LDFLAGS) $(SCTDLIBS)

install: sct
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp sct $(DESTDIR)$(PREFIX)/bin/sct

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/sct

clean:
	rm -f sct *.o

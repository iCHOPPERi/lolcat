
CC ?= gcc
LOLCAT_SRC ?= lolcat.c
CFLAGS ?= -std=c11 -Wall -Wextra -O3 -Wno-sign-compare
LIBS := -lm

DESTDIR ?= /usr/local/bin

all: lolcat

debug: CFLAGS += -g
debug: all

lolcat: $(LOLCAT_SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f lolcat
	rm -f lolcat.o

include ../config.mk

BIN=ShellTest
OBJ=$(patsubst %.c, %.o, $(wildcard *.c))

CFLAGS=-m32 
CC:=$(CC) $(CFLAGS)

$(BIN) : $(OBJ)
	$(CC) -o $@ $^
	execstack -s $@

%.o : %.c
	$(CC) -o $@ -c $<

.PHONY : install

install : $(BIN)
	@install $(BIN) $(PREFIX)/$(BIN)

.PHONY : clean

clean : 
	$(RM) $(BIN) $(OBJ)

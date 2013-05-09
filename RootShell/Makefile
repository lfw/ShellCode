BIN=rootshell
SRC=rootshell.asm

ASFLAGS=--32
BIN2SHELL=../Scripts/Bin2Shell

AS:=$(AS) $(ASFLAGS)

$(BIN) : $(SRC).o
	$(BIN2SHELL) $< $@
	#$(LD) -m elf_i386 -o $@ $(SRC).o

%.asm.o : %.asm
	$(AS) -o $@ $<

.PHONY : install

install : $(BIN)
	echo No Install for Shellcode: $BIN

.PHONY : clean

clean : 
	$(RM) $(BIN) $(SRC).o


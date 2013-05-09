DIRS=Exit RootShell Scripts ShellTest
CLEANDIRS=$(DIRS:%=clean-%)
INSTDIRS=$(DIRS:%=install-%)

.PHONY : all $(DIRS)
.PHONY : clean $(CLEANDIRS)
.PHONY : install $(INSTDIRS)

all : $(DIRS)

$(DIRS) :
	$(MAKE) -C $@

clean : $(CLEANDIRS)

$(CLEANDIRS) :
	$(MAKE) -C $(@:clean-%=%) clean

install : $(INSTDIRS)

$(INSTDIRS) :
	$(MAKE) -C $(@:install-%=%) install

Exit : Scripts
RootShell : Scripts


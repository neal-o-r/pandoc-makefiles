SOURCE_DOCS := $(wildcard *.md)

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.md=.pdf) \

RM=/bin/rm

PANDOC=pandoc

PANDOC_OPTIONS=--smart --standalone

%.pdf : %.md
	$(PANDOC) -t beamer $(PANDOC_OPTIONS) -o $@ $<


# Targets and dependencies

.PHONY: all clean

all : $(EXPORTED_DOCS)

clean:
	- $(RM) $(EXPORTED_DOCS)

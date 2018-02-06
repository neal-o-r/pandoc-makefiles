SOURCE_DOCS := $(wildcard *.md)

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.md=.html) \

RM=/bin/rm

PANDOC=pandoc

PANDOC_OPTIONS=-V revealjs-url=http://lab.hakim.se/reveal-js \
-V theme="white"

%.html : %.md
	$(PANDOC) -t revealjs $(PANDOC_OPTIONS) -s -o $@ $<


# Targets and dependencies

.PHONY: all clean

all : $(EXPORTED_DOCS)

clean:
	- $(RM) $(EXPORTED_DOCS)

# This file is input to Gnu Make
#  https://www.gnu.org/software/make/manual/html_node/index.html

# Make .png files from .puml files using PlantUML:
#   http://plantuml.com
# This Makefile depends on there being a script 'plantuml' in
# the execution path that invokes java with the plantuml.jar file

# Source all .puml files in this directory
PUMLS := $(wildcard *.puml)
PNGS := $(patsubst %.puml,%.png,$(PUMLS))
CMAPXS := $(patsubst %.puml,%.cmapx,$(PUMLS))

all : $(PNGS)

clean :
	rm -f $(PNGS) $(CMAPXS)

%.png : %.puml
	plantuml $<


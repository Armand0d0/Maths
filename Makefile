EXE ?= pdflatex
SHELL=/bin/bash

all: 
	biber main
	$(EXE) main.tex
	

watch:
	while true; do \
		inotifywait -qre close_write .; \
		#inotifywait $(PAPER); \
		make all; \
	done

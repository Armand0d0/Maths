EXE ?= pdflatex
SHELL=/bin/bash

all: 
	biber main
	$(EXE) main.tex
	cp main.pdf ../Exos_sympas.pdf
	
	

watch:
	while true; do \
		inotifywait -qre close_write .; \
		#inotifywait $(PAPER); \
		make all; \
	done



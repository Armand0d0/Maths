EXE ?= pdflatex
SHELL=/bin/bash


all: 
	biber main
	$(EXE) main.tex
	cp main.pdf ../Exos_sympas.pdf

nolib: 
	$(EXE) main.tex
	cp main.pdf ../Exos_sympas.pdf

	
push:
	git add ..
	git commit -m "typing..."
	git push

watch:
	while true; do \
		inotifywait -qre close_write .; \
		make all; \
	done



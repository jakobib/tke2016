NAME=tke2016

.SUFFIXES: .tex .pdf
SHELL=/bin/bash

default: ${NAME}.pdf
	
.tex.pdf: tke2016.tex
	pdflatex ${NAME}
	bibtex ${NAME}
	pdflatex ${NAME}
	pdflatex ${NAME}

slides.pdf: slides.md
	pandoc -s -S --template vzg-slides.tex -t beamer -V documentclass=beamer -o $@ $<

clean:
	rm -f ${NAME}.{ps,pdf,log,aux,out,dvi,bbl,blg}

NAME=tke2016

.SUFFIXES: .tex .pdf
SHELL=/bin/bash

default: ${NAME}.pdf
	
.tex.pdf: tke2016.tex
	pdflatex ${NAME}
	bibtex ${NAME}
	pdflatex ${NAME}
	pdflatex ${NAME}

clean:
	rm -f ${NAME}.{ps,pdf,log,aux,out,dvi,bbl,blg}

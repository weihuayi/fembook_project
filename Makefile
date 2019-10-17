
all: space-1d.pdf \
     FEM-1d.pdf \

space-1d.pdf: space-1d.tex
	xelatex -shell-escape space-1d.tex
	bibtex space-1d.aux
	xelatex -shell-escape space-1d.tex
	xelatex -shell-escape space-1d.tex
	evince space-1d.pdf&

project.pdf: project.tex
	xelatex -shell-escape project.tex
	bibtex project.aux
	xelatex -shell-escape project.tex
	xelatex -shell-escape project.tex
	evince project.pdf&

FEM-1d.pdf: FEM-1d.tex
	xelatex -shell-escape FEM-1d.tex
	bibtex FEM-1d.aux
	xelatex -shell-escape FEM-1d.tex
	xelatex -shell-escape FEM-1d.tex
	evince FEM-1d.pdf&

.PHONY:clean  
clean:
	-rm -fr *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *~ *.tid *.tms *.pdf *.bak *.blg *.bbl *.gz *.snm *.nav _minted*


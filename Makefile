
project.pdf:project.tex prelude.tex figures/*
	pdflatex $<
	pdflatex $<
	bibtex project.aux
	pdflatex $<



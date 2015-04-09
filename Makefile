
poster.pdf:poster.tex figures/*
	pdflatex $<

project.pdf:project.tex prelude.tex figures/*
	pdflatex $<
	pdflatex $<
	bibtex project.aux
	pdflatex $<



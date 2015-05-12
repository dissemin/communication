
poster.pdf:poster.tex figures/*
	pdflatex $<
	bibtex poster.aux

slides.pdf:
	pandoc -t beamer slides.txt -s -o slides.pdf

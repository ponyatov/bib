BIB  = python.bib
BIB += eskd.bib
BIB += electronics.bib

bib.pdf: bib.tex $(BIB)
	pdflatex --output-directory=tmp bib
	biber tmp/bib
	pdflatex --output-directory=tmp bib

.PHONY: clean
clean:
	rm -f tmp/*

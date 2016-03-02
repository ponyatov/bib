BIB  = python.bib
BIB += eskd.bib
BIB += electronics.bib
BIB += latex.bib
BIB += sat.bib
BIB += sysdesign.bib
BIB += math.bib
BIB += stanki.bib
BIB += osdev.bib

bib.pdf: bib.tex $(BIB)
	pdflatex --output-directory=tmp bib
	biber tmp/bib
	pdflatex --output-directory=tmp bib

.PHONY: clean
clean:
	rm -f tmp/bib.*

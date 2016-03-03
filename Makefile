TEX = pdf.tex bib.tex

LATEX = pdflatex -halt-on-error
bib.pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $< && mv pdf.pdf $@


MAIN = Bewerbung
LATEX = pdflatex -shell-escape
VIEWER = evince

view: pdf
	$(VIEWER) $(MAIN).pdf

pdf:
	$(LATEX) $(MAIN).tex

clean:
	rm -f *.aux *.log *Gen* *.fdb_latexmk

tidy: clean
	rm -f *.dvi *.ps *.pdf

.PHONY : pdf view clean tidy

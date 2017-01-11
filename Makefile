all:
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

html:
	latex2html main
	bibtex main
	latex2html main
	latex2html main

clean:
	@rm *.dvi *.aux *.log *.out *.bak *.blg *.bbl *.toc *.lof *.lot *.pdf

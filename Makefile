all:
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main
clean:
	@rm *.dvi *.aux *.log *.out *.bak *.blg *.bbl *.toc *.lof *.lot *.pdf

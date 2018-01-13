all:
	pdflatex main >/dev/null
	bibtex main 
	pdflatex main > /dev/null
	pdflatex main 

html:
	latex2html main
	bibtex main
	latex2html main
	latex2html main

clean:
	@rm *.dvi *.aux *.log *.out *.bak *.blg *.bbl *.toc *.lof *.lot *.pdf

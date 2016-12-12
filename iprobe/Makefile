FILES=abstract.tex conclusion.tex design.tex experiments.tex implementation.tex introduction.tex iprobe.tex related_work.tex fperf_eva.tex fperf.tex tramp.tex safety.tex advanced.tex

all: iprobe.pdf

spell: ${FILES}
	ispell ${FILES}

iprobe.pdf: ${FILES}
	latex iprobe.tex
	bibtex iprobe
	latex iprobe.tex
	latex iprobe.tex
	dvipdf iprobe.dvi iprobe.pdf
	@dvips -o iprobe.ps -t Letter -Ppdf -G0 iprobe.dvi
	@ps2pdf iprobe.ps iprobe.pdf

ps: paper.ps.gz
	@ggv paper.pdf &

paper.ps.gz: ${FILES}
	@latex paper.tex
	@bibtex paper
	@latex paper.tex
	@latex paper.tex
	@dvips -o paper.ps -t Letter -Pcmz -G0 paper.dvi
	@ps2pdf paper.ps clue.pdf
	@gzip -9 -f paper.ps

pdf: paper.pdf
	@ggv paper.pdf &

clean:
	rm -f all.* iprobe.bbl *.aux *.blg *.dvi *.log *.ps
	rm -f iprobe.ps.gz iprobe.pdf


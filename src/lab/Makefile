ifeq ($(OS),Windows_NT)
	SHELL=%WINDIR%/cmd.exe
	DROPBOX_PUBLIC=$(USERPROFILE)/Dropbox/Public
else
	SHELL=/usr/bin/env sh
	DROPBOX_PUBLIC=$(HOME)/Dropbox/Public
endif
PDFLATEX = pdflatex
REPORT_PDF = report
TITLE_PDF = title
BIBTEX = bibtex
RM = rm -f
GREP = grep


all: $(REPORT_PDF).pdf clean


fast: *.tex
	latexmk -pdf -pdflatex="pdflatex" $(REPORT_PDF)
	mv $(REPORT_PDF).pdf $(REPORT_PDF)-`date +'%m-%d-%H-%M-%S'`.pdf

fastcheck: *.tex
	$(PDFLATEX) $(REPORT_PDF)
	$(BIBTEX) $(REPORT_PDF).aux
	$(PDFLATEX) $(REPORT_PDF)
	$(PDFLATEX) $(REPORT_PDF)
	mv $(REPORT_PDF).pdf $(REPORT_PDF)-`date +'%m-%d-%H-%M-%S'`.pdf


no_bibliography: *.tex
	$(PDFLATEX) $(REPORT_PDF)


setup:
	ln -s ../lib/*.tex ./


$(REPORT_PDF).pdf: *.tex
	$(PDFLATEX) $(REPORT_PDF)
	$(BIBTEX) $(REPORT_PDF).aux
	$(PDFLATEX) $(REPORT_PDF)
	$(PDFLATEX) $(REPORT_PDF)


cleanall: clean
	$(RM)  *.pdf

.PHONY: clean
clean:
	$(RM) *.aux *.log *.out *.toc *.gz *.gz\(busy\) *.blg *.bbl $(REPORT_PDF).pdf $(TITLE_PDF).pdf


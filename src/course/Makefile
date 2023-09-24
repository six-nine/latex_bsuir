ifeq ($(OS),Windows_NT)
	SHELL=%WINDIR%/cmd.exe
	DROPBOX_PUBLIC=$(USERPROFILE)/Dropbox/Public
else
	SHELL=/usr/bin/env sh
	DROPBOX_PUBLIC=$(HOME)/Dropbox/Public
endif
PDFLATEX = pdflatex
COURSE_REPORT_PDF = course_report
BIBTEX = bibtex
RM = rm -f
GREP = grep


all: $(COURSE_REPORT_PDF).pdf


setup:
	ln -s ../lib/* ./


$(COURSE_REPORT_PDF).pdf: *.tex
	$(PDFLATEX) $(COURSE_REPORT_PDF)
	$(BIBTEX) $(COURSE_REPORT_PDF).aux
	$(PDFLATEX) $(COURSE_REPORT_PDF)
	$(PDFLATEX) $(COURSE_REPORT_PDF)
	cp $(COURSE_REPORT_PDF).pdf ../example_course_project.pdf


cleanall: clean
	$(RM)  *.pdf

.PHONY: clean
clean:
	$(RM) *.aux *.log *.out *.toc *.gz *.gz\(busy\) *.blg *.bbl


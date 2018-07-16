# Dossiers
CODE := $(shell pwd)
PDFDIR = ../../_pdf/4_quatrieme
THEME = 

# Visualiser les pdf
LOG=evince

# Créer le dossier pdf s'il n'éxiste pas.
target:
	test -d $(PDFDIR) || mkdir $(PDFDIR)

all: img poly proper

# Générations des images
FIGSRC = $(wildcard sources/ch2-thm-pythagore/*.ipe sources/ch3-trigonometrie/*.ipe sources/ch5-thales/*.ipe )

FIGOBJ = $(FIGSRC:.ipe=.pdf)

img: $(FIGOBJ)

sources/ch2-thm-pythagore/%.pdf: sources/ch2-thm-pythagore/%.ipe
	ipetoipe -pdf $<
	

# Chapitre 1 - Théorème de Pythagore

4.1_pythagore:
	pdflatex tex/c4_ch1_pythagore.tex
	pdflatex tex/c4_ch1_pythagore.tex
	mv c4_ch1_pythagore.pdf '$(PDFDIR)'/c4-ch1_-pythagore.pdf
	


# nettoyage			
proper:
	rm -f *.log *.toc *.aux *.nav *.snm *.out *.bbl *.blg *.dvi
	rm -f *.backup *~

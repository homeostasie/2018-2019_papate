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

4.1_pythagore/sources/%.pdf: 4.1_pythagore/sources/%.ipe
	ipetoipe -pdf $<
	

# Chapitre 1 - Théorème de Pythagore

4.1_pythagore:
	pdflatex 4.1_pythagore/tex/4.1_pythagore.tex
	pdflatex 4.1_pythagore/tex/4.1_pythagore.tex
	mv 4.1_pythagore.pdf '$(PDFDIR)'/4.1_pythagore.pdf
	


# nettoyage			
proper:
	rm -f *.log *.toc *.aux *.nav *.snm *.out *.bbl *.blg *.dvi
	rm -f *.backup *~

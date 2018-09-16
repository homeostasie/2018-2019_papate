# Dossiers
CODE := $(shell pwd)
PDFDIR = ../_pdf/3_troisieme
THEME = 

# Visualiser les pdf
LOG=evince

# Créer le dossier pdf s'il n'éxiste pas.
target:
	test -d $(PDFDIR) || mkdir $(PDFDIR)

all: img poly proper

# Générations des images
FIGSRC = $(wildcard 4x1-pythagore/sources/*.ipe 4x2-pythagore/sources/*.ipe)

FIGOBJ = $(FIGSRC:.ipe=.pdf)

img: $(FIGOBJ)

4x1-pythagore/sources/%.pdf: 4x1-pythagore/sources/%.ipe
	ipetoipe -pdf $<
	
4x2-trigonometrie/sources/%.pdf: 4x2-trigonometrie/sources/%.ipe
	ipetoipe -pdf $<

# Chapitre 1 - Théorème de Pythagore

3x1_statistiques-dm1:
	pdflatex 3x1-statistiques/tex/3x1-statistiques-dm1.tex
	pdflatex 3x1-statistiques/tex/3x1-statistiques-dm1.tex
	mv 3x1-statistiques-dm1.pdf '$(PDFDIR)'/3x1-statistiques-dm1.pdf
	

# nettoyage			
proper:
	rm -f *.log *.toc *.aux *.nav *.snm *.out *.bbl *.blg *.dvi
	rm -f *.backup *~
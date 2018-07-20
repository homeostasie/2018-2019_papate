# Dossiers
CODE := $(shell pwd)
PDFDIR = ../_pdf/4_quatrieme
THEME = 

# Visualiser les pdf
LOG=evince

# Créer le dossier pdf s'il n'éxiste pas.
target:
	test -d $(PDFDIR) || mkdir $(PDFDIR)

all: img poly proper

# Générations des images
FIGSRC = $(wildcard 4x1-pythagore/sources/*.ipe )

FIGOBJ = $(FIGSRC:.ipe=.pdf)

img: $(FIGOBJ)

4x1-pythagore/sources/%.pdf: 4x1-pythagore/sources/%.ipe
	ipetoipe -pdf $<
	

# Chapitre 1 - Théorème de Pythagore

4x1_pythagore:
	pdflatex 4x1-pythagore/tex/4x1-pythagore.tex
	pdflatex 4x1-pythagore/tex/4x1-pythagore.tex
	mv 4x1-pythagore.pdf '$(PDFDIR)'/4x1-pythagore.pdf
	


# nettoyage			
proper:
	rm -f *.log *.toc *.aux *.nav *.snm *.out *.bbl *.blg *.dvi
	rm -f *.backup *~

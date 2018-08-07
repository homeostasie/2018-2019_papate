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
FIGSRC = $(wildcard 4x1-pythagore/sources/*.ipe 4x2-pythagore/sources/*.ipe)

FIGOBJ = $(FIGSRC:.ipe=.pdf)

img: $(FIGOBJ)

4x1-pythagore/sources/%.pdf: 4x1-pythagore/sources/%.ipe
	ipetoipe -pdf $<
	
4x2-trigonometrie/sources/%.pdf: 4x2-trigonometrie/sources/%.ipe
	ipetoipe -pdf $<

# Chapitre 1 - Théorème de Pythagore

4x1_pythagore:
	pdflatex 4x1-pythagore/tex/4x1-pythagore.tex
	pdflatex 4x1-pythagore/tex/4x1-pythagore.tex
	mv 4x1-pythagore.pdf '$(PDFDIR)'/4x1-pythagore.pdf
	
4x1e_pythagore-exo:
	pdflatex 4x1-pythagore/tex/4x1-pythagore-exo.tex
	pdflatex 4x1-pythagore/tex/4x1-pythagore-exo.tex
	mv 4x1-pythagore-exo.pdf '$(PDFDIR)'/4x1-pythagore-exo.pdf


# Chapitre 2 - Trigonométrie

4x1_pythagore:
	pdflatex 4x2-trigonometrie/tex/4x2-trigonometrie.tex
	pdflatex 4x2-trigonometrie/tex/4x2-trigonometrie.tex
	mv 4x2-trigonometrie.pdf '$(PDFDIR)'/4x2-trigonometrie.pdf
	
4x1e_pythagore-exo:
	pdflatex 4x2-trigonometrie/tex/4x2-trigonometrie-exo.tex
	pdflatex 4x2-trigonometrie/tex/4x2-trigonometrie-exo.tex
	mv 4x2-trigonometrie-exo.pdf '$(PDFDIR)'/4x2-trigonometrie-exo.pdf


# nettoyage			
proper:
	rm -f *.log *.toc *.aux *.nav *.snm *.out *.bbl *.blg *.dvi
	rm -f *.backup *~
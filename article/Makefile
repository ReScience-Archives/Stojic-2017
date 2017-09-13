all: Stojic-2017.tex Stojic-2017.pdf clean

Stojic-2017.tex: Stojic-2017.md	
	pandoc --standalone --filter pandoc-crossref --template=rescience-template.tex --latex-engine=xelatex --biblatex --bibliography=Stojic-2017.bib -M "crossrefYaml=crossref.yaml" --output Stojic-2017.tex Stojic-2017.md

Stojic-2017.pdf: Stojic-2017.tex
	xelatex Stojic-2017
	biber Stojic-2017
	xelatex Stojic-2017
	xelatex Stojic-2017

clean:
	rm -f *.aux *.out *.log *.nav *.toc *.snm *.ttt *.blg *.bbl *.fff *.suppinfo *latexmk *fls *synctex.gz *.bcf *.xml

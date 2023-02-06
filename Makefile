default:
	xelatex -synctex=1 -interaction=nonstopmode main.tex
	makeindex main.idx
	makeglossaries main
	xelatex -synctex=1 -interaction=nonstopmode main.tex
cover:
	pdflatex CoverPage.tex
index:
	makeindex main.idx
gloss:
	pdflatex -synctex=1 -interaction=nonstopmode main.tex
	makeglossaries main

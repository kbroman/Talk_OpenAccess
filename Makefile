openaccess.pdf: openaccess.tex
	xelatex openaccess

web: openaccess.pdf
	scp openaccess.pdf broman-2:public_html/presentations/

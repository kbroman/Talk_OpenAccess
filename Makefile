openaccess.pdf: openaccess.tex
	xelatex openaccess

web: openaccess.pdf dropbox
	scp openaccess.pdf broman-2:public_html/presentations/

dropbox: ~/Dropbox/Talks/openaccess.pdf

~/Dropbox/Talks/openaccess.pdf: openaccess.pdf
	cp openaccess.pdf ~/Dropbox/Talks/

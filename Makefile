openaccess.pdf: openaccess.tex
	xelatex openaccess

handout: openaccess_handout.pdf

all: openaccess.pdf handout

openaccess_handout.pdf: openaccess_handout.tex
	xelatex openaccess_handout
	pdfnup openaccess_handout.pdf --nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.8
	mv openaccess_handout-nup.pdf openaccess_handout.pdf

openaccess_handout.tex: openaccess.tex makeHandout.rb
	makeHandout.rb openaccess.tex openaccess_handout.tex

web: openaccess.pdf dropbox
	scp openaccess.pdf broman-2:public_html/presentations/

dropbox: ~/Dropbox/Talks/openaccess.pdf

~/Dropbox/Talks/openaccess.pdf: openaccess.pdf
	cp openaccess.pdf ~/Dropbox/Talks/

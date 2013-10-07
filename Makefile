openaccess.pdf: openaccess.tex
	xelatex openaccess

notes: openaccess_notes.pdf

all: openaccess.pdf notes

openaccess_notes.pdf: openaccess_notes.tex
	xelatex openaccess_notes
	pdfnup openaccess_notes.pdf --nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.9
	mv openaccess_notes-nup.pdf openaccess_notes.pdf

openaccess_notes.tex: openaccess.tex makeNotes.rb
	makeNotes.rb openaccess.tex openaccess_notes.tex

web: openaccess.pdf dropbox
	scp openaccess.pdf broman-2:public_html/presentations/

dropbox: ~/Dropbox/Talks/openaccess.pdf

~/Dropbox/Talks/openaccess.pdf: openaccess.pdf
	cp openaccess.pdf ~/Dropbox/Talks/

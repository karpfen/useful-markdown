RFILE = cv

all: knitpdf opencomplete

knitpdf: $(RFILE).Rmd
	echo "rmarkdown::render('$(RFILE).Rmd',output_file='$(RFILE).pdf')" | R --no-save -q
	pdftk $(RFILE).pdf dump_data output metadata.txt
	pdftk $(RFILE).pdf credentials/karma.pdf output $(RFILE)_tmp.pdf
	pdftk $(RFILE)_tmp.pdf update_info metadata.txt output $(RFILE)_credentials.pdf
	rm $(RFILE)_tmp.pdf metadata.txt

open: $(RFILE).pdf
	xdg-open $(RFILE).pdf &

opencomplete: $(RFILE)_credentials.pdf
	xdg-open $(RFILE)_credentials.pdf &

start:
	vim cv.Rmd svm-latex-cv.tex cv-refs.bib -p

clean:
	rm -rf *.pdf *.xml

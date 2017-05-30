RFILE = document

all: knitpdf addheader

knitpdf:
	echo "rmarkdown::render('$(RFILE).Rmd',output_file='$(RFILE).pdf')" | R --no-save -q

addheader:
	./addheader.sh $(RFILE).tex

open:
	xdg-open $(RFILE).pdf &

clean:
	rm -rf *.pdf *.aux *.log *.out *.xmpi 

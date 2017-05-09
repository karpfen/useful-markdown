RFILE = document
rep = ++output_format++

ioslides = ioslides_presentation
slidy = slidy_presentation
pdf = pdf_document:\n    toc: true\n    toc_depth: 2
html = html_document:\n    highlight: zenburn
tufte_ho = tufte::tufte_handout:\n    citation_package: natbib
tufte_html = tufte::tufte_html: default

pdf:
	sed 's/$(rep)/$(pdf)/g' $(RFILE).Rmd > tmp.$(RFILE).Rmd
	echo "rmarkdown::render('tmp.$(RFILE).Rmd', output_file='$(RFILE).pdf')" | R --no-save -q
	rm tmp.$(RFILE).Rmd

ioslides:
	sed 's/$(rep)/$(ioslides)/g' $(RFILE).Rmd > tmp.$(RFILE).Rmd
	echo "rmarkdown::render('tmp.$(RFILE).Rmd', output_file='$(RFILE).html')" | R --no-save -q
	rm tmp.$(RFILE).Rmd

slidy:
	sed 's/$(rep)/$(slidy)/g' $(RFILE).Rmd > tmp.$(RFILE).Rmd
	echo "rmarkdown::render('tmp.$(RFILE).Rmd', output_file='$(RFILE).html')" | R --no-save -q
	#rm tmp.$(RFILE).Rmd

html:
	sed 's/$(rep)/$(html)/g' $(RFILE).Rmd > tmp.$(RFILE).Rmd
	echo "rmarkdown::render('tmp.$(RFILE).Rmd', output_file='$(RFILE).html')" | R --no-save -q
	rm tmp.$(RFILE).Rmd

# requires package 'tufte'
tufte_handout:
	sed 's/$(rep)/$(tufte_ho)/g' $(RFILE).Rmd > tmp.$(RFILE).Rmd
	echo "rmarkdown::render('tmp.$(RFILE).Rmd', output_file='$(RFILE).pdf')" | R --no-save -q
	rm tmp.$(RFILE).Rmd

# requires package 'tufte'
tufte_html:
	sed 's/$(rep)/$(tufte_html)/g' $(RFILE).Rmd > tmp.$(RFILE).Rmd
	echo "rmarkdown::render('tmp.$(RFILE).Rmd', output_file='$(RFILE).html')" | R --no-save -q
	rm tmp.$(RFILE).Rmd

clean:
	rm -rf *.pdf *.html

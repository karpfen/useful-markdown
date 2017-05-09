all: letter open

letter:
	pandoc letter.md --template=template-letter.tex -o letter.pdf

open:
	xdg-open letter.pdf

clean:
	rm -rf *.pdf

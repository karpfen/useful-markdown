# Rmd to PDF/A

This set of files is an attempt to create [PDF/A](https://en.wikipedia.org/wiki/PDF/A) compliant documents from Rmd files in one go.

## Usage

1. Edit `document.Rmd`
2. Run `make`

A tool for checking if your PDF is PDF/A compliant can be downloaded
[here](http://mirror.klaus-uwe.me/apache/pdfbox/2.0.6/preflight-app-2.0.6.jar). Check PDF with
```{shell}
java -jar preflight-app-2.0.6.jar yourpdf.pdf
```

## FAQ

> Isn't this a horrible hack and probably won't work for anything other than this specific example?

Yes.

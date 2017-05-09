# Generic Rmd documents

This Rmd document has a generic document type placeholder that is replaced using `sed` in the makefile. Every target creates a new temporary
`Rmd` file, parses it and deletes the temporary file. Output file extensions vary.

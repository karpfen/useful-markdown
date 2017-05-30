#!/bin/bash
temptex=`mktemp`
cat headerstuff.tex > $temptex
tail -n +2 $1 >> $temptex
cat $temptex > test.tex
lualatex $temptex

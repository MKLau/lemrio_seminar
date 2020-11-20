#! /bin/bash
echo \\setbeameroption{hide notes} > .mk.out
pdflatex \\nonstopmode\\input talk.tex
bibtex --min-crossref=100 talk
pdflatex \\nonstopmode\\input talk.tex
pdflatex \\nonstopmode\\input talk.tex
mv talk.pdf talk_talk.pdf
echo \\setbeameroption{show only notes} > .mk.out
pdflatex \\nonstopmode\\input talk.tex
mv talk.pdf notes.pdf
echo \\setbeameroption{notes} > .mk.out
pdflatex \\nonstopmode\\input talk.tex
mv talk.pdf talk_notes.pdf

pdftotext talk_talk.pdf talk_talk.txt
pdftotext talk_notes.pdf talk_notes.txt

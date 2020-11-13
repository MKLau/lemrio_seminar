#! /bin/bash
echo \\setbeameroption{hide notes} > make.out
pdflatex \\nonstopmode\\input talk.tex
bibtex --min-crossref=100 talk
pdflatex \\nonstopmode\\input talk.tex
pdflatex \\nonstopmode\\input talk.tex
mv talk.pdf talk_talk.pdf
echo \\setbeameroption{show only notes} > make.out
pdflatex \\nonstopmode\\input talk.tex
mv talk.pdf talk_notes.pdf

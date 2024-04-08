# pandoc to pdf
PANDOC = pandoc
FILTER = --citeproc

# Define the reveal.js URL
REVEALJS_URL = "https://unpkg.com/reveal.js/"
JS_OPTION = -t revealjs -s --mathjax

BM_OPTION = -t beamer

SLIDES_OPTION = --slide-level 2 $(FILTER)

all: html beamer

beamer: slides.md
	$(PANDOC) slides.md $(BM_OPTION) -o slides.pdf $(SLIDES_OPTION)

html: slides.md
	$(PANDOC) slides.md $(JS_OPTION) -o slides.html $(SLIDES_OPTION)

clean:
	rm -f *.pdf *.html

.PHONY: all clean

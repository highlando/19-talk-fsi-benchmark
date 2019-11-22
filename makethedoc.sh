pandoc concept.md -o concept-slides.html \
    --filter pandoc-citeproc -t revealjs --slide-level=2 -s \
    --mathjax='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML' \
    -V revealjs-url=https://revealjs.com \
    -V theme=solarized -V hash=true \
    -V viewDistance=15 -V width=1280 -V height=960 -V margin=0.05

# ## base theme slides -- works well
pandoc concept.md --filter pandoc-citeproc -t beamer -o base-theme-slides.pdf -H def.tex
pandoc concept.md --filter pandoc-citeproc -t beamer -o base-theme-slides.tex -H def.tex


# THEMEOPS=CSC,layouttwo,english,adjustframetitle
# pandoc concept.md --filter pandoc-citeproc -t beamer --slide-level=2 -o concept-slides.pdf -H def.tex -V classoption:aspectratio=43 -V theme=mpi2015 -V themeoptions=$THEMEOPS
# pandoc concept.md -o concept-slides.tex \
#     --filter pandoc-citeproc --natbib -t beamer --slide-level=2 \
#     -H def.tex --table-of-contents \
#     -V classoption:aspectratio=43 -V theme=mpi2015 -V themeoptions=$THEMEOPS

# ## just create the body of the slides
pandoc concept.md --slide-level 2 -t beamer -o slides-body.tex
# ## delete the bottom 3 lines (where there is the references)
sed -i '$d' slides-body.tex
sed -i '$d' slides-body.tex
sed -i '$d' slides-body.tex

pdflatex -interaction=nonstopmode mpi-style-skeleton.tex
pdflatex -interaction=nonstopmode mpi-style-skeleton.tex
bibtex mpi-style-skeleton.aux
pdflatex -interaction=nonstopmode mpi-style-skeleton.tex
latexmk -c

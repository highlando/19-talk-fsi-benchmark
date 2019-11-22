pandoc concept.md -o index.html \
    --filter pandoc-citeproc -t revealjs --slide-level=2 -s \
    --mathjax='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML' \
    -V revealjs-url=https://revealjs.com \
    -V theme=solarized -V hash=true \
    -V viewDistance=15 -V width=1280 -V height=960 -V margin=0.05


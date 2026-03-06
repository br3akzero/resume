#!/bin/bash
docker run --rm --platform linux/amd64 -v "$(pwd):/data" -w /data pandoc/latex:3.9 \
  --pdf-engine=xelatex \
  -H header.tex \
  -V geometry:margin=1in \
  -V colorlinks=true \
  -V urlcolor=blue \
  -V linkcolor=blue \
  README.md -o Daniel_Reshad_Resume.pdf

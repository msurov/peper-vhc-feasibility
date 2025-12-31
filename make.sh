#!/bin/bash

set -e
mkdir -p build
cd tex
# rm build/vhc-feasibility.bbl
texfot pdflatex -interaction=nonstopmode -file-line-error -output-directory=../build vhc-feasibility.tex
texfot bibtex ../build/vhc-feasibility
texfot pdflatex -interaction=nonstopmode -file-line-error -output-directory=../build vhc-feasibility.tex

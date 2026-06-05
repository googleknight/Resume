#!/bin/bash
# Build the resume PDF from the LaTeX source.
# Usage: ./build.sh

set -e

SRC="Shubham_Mathur_Resume.tex"
PDF="Shubham_Mathur_Resume.pdf"

echo "🚀 Building resume..."

# XeLaTeX (fontspec + TeX Gyre Heros OTF). Run twice so the layout settles.
xelatex -interaction=nonstopmode -halt-on-error "$SRC" > /dev/null
xelatex -interaction=nonstopmode -halt-on-error "$SRC" > /dev/null

# Clean up LaTeX build artifacts.
rm -f Shubham_Mathur_Resume.{aux,log,out,xdv,fls,fdb_latexmk,synctex.gz}

echo "✅ Done! Output: $PDF"

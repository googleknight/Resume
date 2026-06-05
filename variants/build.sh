#!/bin/bash
# Build the serif variant (XeLaTeX: fontspec + TeX Gyre Pagella OTF).
# Usage: ./build.sh
set -e

SRC="Shubham_Mathur_Resume_Serif"

echo "🚀 Building $SRC..."
xelatex -interaction=nonstopmode -halt-on-error "$SRC.tex" > /dev/null
xelatex -interaction=nonstopmode -halt-on-error "$SRC.tex" > /dev/null
rm -f "$SRC".{aux,log,out,xdv,fls,fdb_latexmk}
echo "✅ $SRC.pdf"

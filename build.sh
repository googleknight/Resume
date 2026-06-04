#!/bin/bash
# Build the resume PDF from the LaTeX source.
# Usage: ./build.sh

set -e

SRC="Shubham_Mathur_Resume.tex"
PDF="Shubham_Mathur_Resume.pdf"

echo "🚀 Building resume..."

# Run twice so the layout settles (titlesec / fancyhdr).
pdflatex -interaction=nonstopmode -halt-on-error "$SRC" > /dev/null
pdflatex -interaction=nonstopmode -halt-on-error "$SRC" > /dev/null

# Clean up LaTeX build artifacts.
rm -f Shubham_Mathur_Resume.{aux,log,out,fls,fdb_latexmk,synctex.gz}

echo "✅ Done! Output: $PDF"

#!/bin/bash

# Configuration
OUTPUT_NAME="Shubham_Mathur_Resume_2026"

echo "🚀 Starting resume build..."

# Run latexmk
# -xelatex: Use XeLaTeX engine
# -interaction=nonstopmode: Don't stop for errors
# -jobname: Specify output filename
latexmk -xelatex -interaction=nonstopmode -jobname="$OUTPUT_NAME" main.tex

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "🧹 Cleaning up temporary files..."
    latexmk -c -jobname="$OUTPUT_NAME" main.tex
    rm -f "$OUTPUT_NAME.xdv"
    echo "✨ Done! Output: $OUTPUT_NAME.pdf"
else
    echo "❌ Build failed. Check main.log for details."
    exit 1
fi

#!/bin/bash

# Configuration
OUTPUT_NAME="Shubham_Mathur_Resume_Legacy"
SRC="Shubham_Mathur_Resume_Legacy.tex"

echo "🚀 Starting resume build..."

# Run latexmk
# -xelatex: Use XeLaTeX engine
# -interaction=nonstopmode: Don't stop for errors
# -jobname: Specify output filename
latexmk -xelatex -interaction=nonstopmode -jobname="$OUTPUT_NAME" "$SRC"

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "🧹 Cleaning up temporary files..."
    latexmk -c -jobname="$OUTPUT_NAME" "$SRC"
    rm -f "$OUTPUT_NAME.xdv"
    echo "✨ Done! Output: $OUTPUT_NAME.pdf"
else
    echo "❌ Build failed. Check the .log for details."
    exit 1
fi

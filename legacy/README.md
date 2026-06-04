# Shubham Mathur - Resume

This repository contains the LaTeX source code for my professional resume. It is designed to be easily compiled locally into a high-quality PDF.

## 📄 View Resume

You can view or download the latest version of my resume here:  
👉 **[Shubham_Mathur_Resume_2026.pdf](./Shubham_Mathur_Resume_2026.pdf)**

## 🛠️ Local Setup

To compile this resume on your local machine, follow these steps:

### 1. Install LaTeX

Ensure you have a TeX distribution installed:

- **macOS:** [MacTeX](https://tug.org/mactex/) or [BasicTeX](https://tug.org/mactex/morepackages.html)
- **Linux:** `texlive-full`
- **Windows:** [MiKTeX](https://miktex.org/)

### 2. Install Required Packages

If you are using a minimal distribution like BasicTeX, you might need to install these packages:

```bash
tlmgr install titlesec enumitem multicol pifont fontawesome5 fancyhdr xcolor etoolbox refcount calc setspace lipsum xparse relsize
```

### 3. Install Fonts

This resume uses the **TeX Gyre Heros** font. It should be included in most TeX distributions, but ensure it's available on your system.

## 🚀 How to Run

I've included a helper script to simplify the build process.

### Using the Build Script

Run the following command in your terminal:

```bash
./build.sh
```

This script will:

1. Compile the LaTeX source using `xelatex`.
2. Generate the output as `Shubham_Mathur_Resume_2026.pdf`.
3. Clean up all intermediate build files (`.aux`, `.log`, etc.).

### Manual Compilation

If you prefer running it manually:

```bash
xelatex -jobname=Shubham_Mathur_Resume_2026 main.tex
```

## 📁 Repository Structure

- `main.tex`: The main LaTeX source file.
- `resume_config.cls`: Custom LaTeX class for styling and layout.
- `build.sh`: Shell script for one-click compilation and cleanup.
- `Shubham_Mathur_Resume_2026.pdf`: The final compiled resume.

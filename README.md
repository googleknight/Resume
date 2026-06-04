# Resume — Shubham Mathur

Source-controlled resume content and builds.

## Layout

| Path                        | What it is                                                                                                     |
| --------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `Shubham_Mathur_Resume.tex` | **Current resume source** (Jake's template, ATS-optimized single column). Build → `Shubham_Mathur_Resume.pdf`. |
| `Shubham_Mathur_Resume.pdf` | Current one-page master PDF (Senior Software Engineer) — the file you send.                                    |
| `build.sh`                  | Builds the PDF from the source (`pdflatex` ×2 + cleanup).                                                      |
| `resume_reference.md`       | Full inventory of real, defensible material — for tailoring, intros, and interview prep. Not for submission.   |
| `legacy/`                   | Previous resume code (`main.tex`, `resume_config.cls`, `build.sh`, `Shubham_Mathur_Resume_2026.pdf`).          |

## Build

```bash
./build.sh                     # produces Shubham_Mathur_Resume.pdf (one page)
```

Requires a TeX distribution (TeX Live). Build artifacts (`*.aux`, `*.log`, `*.out`) are gitignored.

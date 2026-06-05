# Resume — Shubham Mathur

Source-controlled resume content and builds.

## Layout

| Path                        | What it is                                                                                                              |
| --------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `Shubham_Mathur_Resume.tex` | **Primary resume source** (Jake's template, Helvetica/Heros sans, ATS-optimized single column). Build → `Shubham_Mathur_Resume.pdf`. |
| `Shubham_Mathur_Resume.pdf` | The one-page master PDF (Senior Software Engineer) — the file you send.                                                  |
| `build.sh`                  | Builds the primary PDF from the source (`xelatex` ×2 + cleanup).                                                         |
| `variants/`                 | **Serif alternative** — `Shubham_Mathur_Resume_Serif.tex` (TeX Gyre Pagella / Palatino, blue accent) + its `build.sh`.   |
| `legacy/`                   | **Original format** — `Shubham_Mathur_Resume_Legacy.tex` (Heros sans, navy headings) + `resume_config.cls`, `build.sh`. |
| `resume_reference.md`       | Full inventory of real, defensible material — for tailoring, intros, and interview prep. Not for submission.            |

All three formats are single-column and ATS-safe; pick whichever look you prefer.

## Build

```bash
./build.sh                              # primary → Shubham_Mathur_Resume.pdf
( cd variants && ./build.sh )           # serif   → Shubham_Mathur_Resume_Serif.pdf
( cd legacy   && ./build.sh )           # legacy  → Shubham_Mathur_Resume_Legacy.pdf
```

Requires a TeX distribution with XeLaTeX (the OTF fonts need it). Build artifacts (`*.aux`, `*.log`, `*.out`, …) are gitignored.

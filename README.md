# A Special Academic Resume

This is a (amazing, beautiful, the best) LaTeX resume template. It is current made for academics, but easily also be used for software dev resumes or any other use, and is adapted from [Trey Hunner's template](https://github.com/treyhunner/resume). 

## Preview
| Long Version | Short Version |
|:---:|:---:|
|[<img src="https://raw.githubusercontent.com/abrandenberger/academic-resume/main/imgs/long-resume.png">](https://github.com/abrandenberger/academic-resume/blob/main/long-resume.pdf)  |[<img src="https://raw.githubusercontent.com/abrandenberger/academic-resume/main/imgs/short-resume.png">](https://github.com/abrandenberger/academic-resume/blob/main/short-resume.pdf) |

## Layout

Each CV lives in its own folder, and the PDF has the same name as its `.tex` source:

| Folder | Version | Notes |
|---|---|---|
| `carolina_branas_cv_english/` | Academic CV, English | research-facing, with supervisors and full coursework |
| `carolina_branas_cv_espanol/` | Academic CV, Spanish | same, in Spanish |
| `carolina_branas_cv_corp_english/` | Corporate CV, English | one page, for AI / data science / ML roles in industry |
| `carolina_branas_cv_corp_espanol/` | Corporate CV, Spanish | one page, same content in Spanish |
| `carolina_branas_cv_phd/` | PhD application CV | targeted at the [DIKU / Global Wetland Center fellowship in Machine Learning for Environmental Sciences](https://employment.ku.dk/phd/?show=165934) |
| `carolina_branas_cv_english_no_pic/` | Academic CV, English, no photo | |
| `branas_cv_all/` | Full history CV | includes hospitality work and volunteering |
| `template/` | Upstream template | `long.tex` + preview PDFs |

The corporate versions differ from the academic ones by design: technical skills sit at the
top, supervisor names and elective course lists are dropped, bullets are written around
tooling and delivery rather than research contribution, and everything is squeezed onto a
single page.

Shared files stay at the repo root: `resume.cls`, `profile.jpg`, `biblio.bib`, `bibshort.bib`.

## How to use

* **Local**: `make` builds every CV, or `make carolina_branas_cv_english` for a single one. (Under the hood it just runs `pdflatex` with `TEXINPUTS` pointed at the repo root so `resume.cls` and `profile.jpg` are found.) `make clean` removes `.aux`/`.log`/`.out` leftovers.
* **Overleaf**: upload the whole repo as a .zip and set the main document to the `.tex` inside the folder you want; the root `resume.cls` and `profile.jpg` resolve automatically.

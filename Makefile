# Each CV lives in its own folder; resume.cls and profile.jpg are shared at the
# repo root and found via TEXINPUTS. Output PDF lands next to its .tex source.

CVS := carolina_branas_cv_english \
       carolina_branas_cv_espanol \
       carolina_branas_cv_corp_english \
       carolina_branas_cv_corp_espanol \
       carolina_branas_cv_phd \
       carolina_branas_cv_english_no_pic \
       branas_cv_all

.PHONY: all clean $(CVS) template

all: $(CVS)

$(CVS):
	TEXINPUTS=".:$(CURDIR):" pdflatex -interaction=nonstopmode \
		-output-directory=$@ $@/$@.tex

template:
	TEXINPUTS=".:$(CURDIR):" pdflatex -interaction=nonstopmode \
		-output-directory=template template/long.tex

clean:
	rm -f */*.aux */*.log */*.out

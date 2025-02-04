default:
    just --list
    
view:
    xdg-open LipkinGM_CV.pdf

run:
    md2pdf LipkinGM_CV.md LipkinGM_CV.pdf
    xdg-open LipkinGM_CV.pdf

update:
    md2pdf LipkinGM_CV.md LipkinGM_CV.pdf

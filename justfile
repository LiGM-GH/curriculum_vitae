default:
    just --list
    
view:
    xdg-open LipkinGM_CV.pdf

run:
    md2pdf LipkinGM_CV.md LipkinGM_CV-md.pdf --css ./style.css
    xdg-open LipkinGM_CV-md.pdf

update:
    md2pdf LipkinGM_CV.md LipkinGM_CV-md.pdf --css ./style.css

to-odt:
    pandoc -f markdown -t odt ./LipkinGM_CV.md -o ./LipkinGM_CV.odt

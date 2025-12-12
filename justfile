name := "LipkinGM_CV"
main_pdf := name + "-md.pdf"
main_typ := name + ".typ"

default:
    just --list
    
# Open {{main_md}}
view:
    xdg-open {{main_pdf}}

# Convert {{main_typ}} to PDF and do XDG-open
run: update
    xdg-open {{main_pdf}}

watch:
    typst watch {{main_typ}} {{main_pdf}}

update:
    typst compile -f pdf ./{{main_typ}} ./{{main_pdf}}

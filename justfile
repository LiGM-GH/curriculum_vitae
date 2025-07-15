name := "LipkinGM_CV"
main_md := name + ".md"
main_pdf := name + "-md.pdf"
polling_interval := "500ms"
stylefile := "style.css"

default:
    just --list
    
# Open {{main_md}}
view:
    xdg-open {{main_pdf}}

# Convert {{main_md}} to PDF and do XDG-open
run:
    md2pdf {{main_md}} {{main_pdf}} --css {{stylefile}}
    xdg-open {{main_pdf}}

# Watch and update PDF file according to {{main_md}}
watch:
    watchexec --poll {{polling_interval}} -w ./{{main_md}} 'just update'

# Update current PDF using {{main_md}}
update:
    md2pdf {{main_md}} {{main_pdf}} --css {{stylefile}}

# Convert {{main_md}} to ODT
to-odt:
    pandoc -f markdown -t odt {{main_md}} -o ./LipkinGM_CV.odt

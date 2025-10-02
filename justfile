name := "LipkinGM_CV"
main_md := name + ".md"
main_css := "style.css"
main_pdf := name + "-md.pdf"
main_odt := name + ".odt"
polling_interval := "500ms"
stylefile := "style.css"

default:
    just --list
    
# Open {{main_md}}
view:
    xdg-open {{main_pdf}}

# Convert {{main_md}} to PDF and do XDG-open
run:
    md2pdf {{main_md}} {{main_pdf}}
    xdg-open {{main_pdf}}

# Watch and update PDF file according to {{main_md}}
watch:
    watchexec --poll {{polling_interval}} -w ./{{main_md}} -w ./{{main_css}} 'just update'

# Update current PDF using {{main_md}}
update:
    md2pdf {{main_md}} {{main_pdf}}

name := "LipkinGM_CV"
main_pdf := name + "-md.pdf"
main_typ := name + ".typ"

default:
    just --list --list-submodules

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

# # Watch and view
# [script("nu")]
# both:
#     let second = job spawn --tag "xdg-open" { evince {{main_pdf}} }
#     let first = job spawn --tag "typst" { typst watch {{main_typ}} {{main_pdf}} }
#     input "Stop? " --numchar 1
#     try { job kill $first } catch { echo $in.rendered }
#     try { job kill $second } catch { echo $in.rendered }

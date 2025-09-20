# Note this works, but I want to also place the cursor
function s_test() {
  print -z "git commit -m ''"
}

function s_content_search() {
  print -z "rg -l TEST | fz_minimal_ui | xargs realpath | xclip"
}

# NVIM not working
# function s_content_open() {
#   print -z "nvim $(rg -l TEST | fz_minimal_ui | xargs realpath)"
# }

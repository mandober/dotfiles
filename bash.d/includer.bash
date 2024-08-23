#| file name     : include.bash
#| function name : include
#|
#|====================================================================
function includer {
  # dotfile dir
  local udir=$HOME/dots/bash
  # user dotfiles array
  local ucf=( prompt env term shopt history glob aliases functions completions locale xdg tips )
  # local var for file names
  local fn

  # include found dotfiles
  for f in ${ucf[@]}; do
    # construct filename
    fn=$udir/$f.bash
    # if the file exists (is readable, -r)
    if [[ -r $fn ]]; then
      # source the file
      . "$fn"
      # confirm (if there is a tty)
      if [[ -t 2 ]]; then
        printf "[\e[32m✔ \e[0m] %s\n" "Sourcing: $fn" >&2
      fi
    # no such file 
    else
      # feedback: no such file (if tty)
      if [[ -t 2 ]]; then
        printf "[\e[31m✘ \e[0m] %s\n" "No file: $fn" >&2
      fi
    fi
  done
}



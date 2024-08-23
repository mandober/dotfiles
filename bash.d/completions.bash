#|=========================================================== bash completions

#| Complete words starting with $ with var names
complete -A variable -P '"${' -S '}"' echo printf

#| Complete {set,unset,declare,export,readonly} builtins with var names
#complete -A variable set unset declare export readonly

#| Complete {setopt,shopt,set} builtins with {setopt,set} names
#complete -A shopt -A setopt shopt set

# package: bash_completion
#
#  /usr/share/bash-completion/bash_completion

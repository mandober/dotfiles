#|==================================================================== aliases
alias l='ls --group-directories-first --human-readable --color=auto --classify --almost-all'
alias ll='l -l'

#| one-letter aliases
alias w='type -ap'
#alias v=vim
#alias n=nvim
# sudo (-E preserves the user's env)
alias s='sudo -E'

#| misc
alias 'cd..=cd ..'
#  alias 'cd=pushd . && cd'
alias mkdir='mkdir -p'
alias ping='ping -c 5'
alias grep='grep -P --color=auto'
alias bat=batcat
alias serve='python3 -m http.server'

#| apt
alias sas='apt search'
alias sai='sudo apt install'
alias sad='sudo apt update && sudo apt upgrade -y'
alias see='apt show -a' # '-a' means show all info records
#alias sau='sudo apt update'
#alias sag='sudo apt upgrade -y'
# alias sar='sudo apt remove'

#| vscode
#alias vcode=/mnt/c/Users/ivan/AppData/Local/Programs/vscode/bin/code


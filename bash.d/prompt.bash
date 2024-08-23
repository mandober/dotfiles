#| prompt.bash - configure prompt 

#| expand vars in $PS
shopt -s promptvars

#| PROMPT_DIRTRIM
#| Trim cwd to fit your prompt layout.

#| PROMPT_COMMAND
#| Bash examines value of array var PROMPT_COMMAND just before
#| printing each primary prompt. If any elements in PROMPT_COMMAND
#| are set and non-null, Bash executes each value, in numeric order,
#| just as if it had been typed on the command line.


#| pronto v.0.1
#export PS1='\[\e[33m\]\u@\h \[\e[34m\]\w\[\e[0m\] \[\e[38;2;50;50;50m\]\s\v jobs:\j cmd:\# hist:\! shlv:$SHLVL pid:$$\[\e[0m\] \[\e[31m\]$?\[\e[0m\] \nλ '

#| pronto v.0.2
#export PS1='\[\e[33m\]\h:\[\e[34m\]\w \[\e[38;2;50;50;50m\]shlvl:${SHLVL} \[\e[31m\][$?] \[\e[38;2;50;50;50m\]pipes:\[\e[31m\] ${PIPESTATUS[@]}\[\e[m\]\nλ '

#| pronto v.0.3
export PS1='\[\e[0;31m\] \[\e[0m\] \[\e[94m\]\w\[\e[m\] [\j] \[\e[0;37m\]shlvl:\[\e[m\]\[\e[0;33m\]$SHLVL\[\e[m\] \[\e[0;37m\]exit:\[\e[0;31m\]${PIPESTATUS[@]}\[\e[0m\]\n\[\e[0;91;108m\]\[\e[0m\] '


#| parts
#|   DSC-start    \[
#|   DSC-end      \]
#|
#|   os     ubuntu  |  |  |   |
#|   host   \h      docker | 
#|   user   \u
#|   env     github |  git |  github |  Dropbox
#|   proj    Haskell |  Elm |  C |  HTML |  Markdown
#|           Rust |  Python |  vim |  js |  ts
#|   pwd    \w
#|   jobs   \j
#|   shvlv  $SHLVL
#|   exit   ${PIPESTATUS[@]}
#|   p-sign > λ ψ κ π ௹   ⇒ => 


#| Prompt special chars which can appear in PS0, PS1, PS2, PS4
#|
#|   \[   begin control sequence (non-printing chars are important for…)
#|   \]   end control sequence (…calculating the width of the prompt)
#|   \H   hostname
#|   \h   hostname up to first dot
#|   \u   username of current user
#|   \w   value of $PWD, with $HOME as tilde; uses $PROMPT_DIRTRIM
#|   \W   basename of $PWD, with $HOME as tilde
#|   \v   bash version (e.g. 2.00)
#|   \V   bash release: version + patchlevel (e.g. 2.00.0)
#|   \s   shell name - the basename of $0 (portion after the final slash)
#|   \j   number of jobs currently managed by the shell
#|   \l   basename of the shell’s terminal device name
#|   \!   history number of this command
#|   \#   command number of this command
#|
#| The command number and the history number are usually different:
#| the history number of a command is its position in the history list,
#| which may include commands restored from the history file, while
#| the command number is the position in the sequence of commands
#| executed during the current shell session.
#|
#| After the PS string is decoded, it is expanded via
#| - parameter expansion
#| - command substitution
#| - arithmetic expansion
#| - quote removal
#| and subject to the value of `promptvars` shell option.
#|
#| This can have unwanted side effects if escaped portions of the string appear
#| within command substitution or contain characters special to word expansion.

#| name: pronto prompt v.0.4
#| date: 2024-01-05
#| 
#| We must wrap all ANSI escapes in DCS tags so bash knows
#| exactly how many printable characters are on the line 
#| so it can calculate the line wrapping correctly. This
#| especially affects multiline command-lines.
#|
#| An ANSI escape sequence for basic fg color start with
#| '\e[', a number 30-37, then 'm', e.g. '\e[33m' would
#| introduce red colored text, until the reset sequence,
#| '\e[m' is encountered.

#| The complete example of printing " ABC " in red is '\e[33m ABC \e[m'
#| 
#| However, since we are doing this in the prompt, we must add DSC tags,
#| so the example really is: '\[\e[33m\] ABC \[\e[m\]'

#| \u@\h  user@host
#| \w     cwd
#| \j     jobs
#| $SHLVL
#| ${PIPESTATUS[@]}
#| ornament: 
#| 

declare dscS='\['
declare dscE='\]'
declare esc='\e'
declare dsi='\e['
declare reset='\e[m'
declare -a fg=( 30 31 32 33 34 35 36 37 )
declare -a bg=( 40 41 42 43 44 45 46 47 )

declare path="$dscS $dsi 94m $dscE \w $dscS $reset $dscE"



export PS1='\[\e[0;31m\] \[\e[0m\] \[\e[94m\]\w\[\e[m\] [\j] \[\e[0;37m\]shlvl:\[\e[m\]\[\e[0;33m\]$SHLVL\[\e[m\] \[\e[0;37m\]exit:\[\e[0;31m\]${PIPESTATUS[@]}\[\e[0m\]\n\[\e[0;91;108m\]\[\e[0m\] '


#| parts
#|   DSC-start    \[
#|   DSC-end      \]
#

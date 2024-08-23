#|===================================================================== history
#| history configuration artefacts:
#| * envars
#| * shellopts
#| * shopts
#| * readline


#|---------------------------------------------- history: envars

# num of commands stored in the history file (default 500)
export HISTFILESIZE=10000

# num of commands stored in memory for the current session (500)
export HISTSIZE=${HISTFILESIZE}

# what should be saved to .bash_history on user logout
export HISTCONTROL="ignorespace:ignoredups"
#   ignorespace: exclude space-leading lines
#   ignoredups:  exclude consequtive dups
#   ignoreboth:  use both ignorespace and ignoredups
#   erasedups:   delete dups by checking entire history


#| Especialy with multi-sessions, ensure all commands are saved,
#| ensuring synchronicity between memory and bash's history file
#| That is, sync history across multiple bash tty's.
#|
#| See to re-export the $PROMPT_COMMAND if it was already set to
#| execute some function (just like prepending to the $PATH).
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"

#|------------------------------------------------ history: shopt

#| By default, bash commits the accrued history entries
#| at the end of each session, overwriting the existing
#| file with the updated version. This means if you are
#| running multiple bash sessions, only the last one to
#| exit will have its history saved properly, because a
#| session overwrites, rathar then appending to history
#| file. To append by the default, set the 'histappend'
#| option.
shopt -s histappend


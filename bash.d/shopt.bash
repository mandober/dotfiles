#|------------------------------------------------------ globbing: shopt
#| enable extended regex ERE
#| default is BRE, is featureless friendly
shopt -s extglob

#| match hidden items
shopt -s dotglob

#| case-insensitive globbing
shopt -s nocaseglob

#| glob pattern something something
shopt -s nullglob

#| If set, glob that doesn't match anything fails with an error.
#| if unset failed glob disappears, which may give unexpected results
#| e.g. if there are no md files, "ls *.md" lists all (as if it was "ls") 
shopt -s failglob

#| If set then ...err
shopt -s globasciiranges

#| If set, the pattern "**" used in a pathname expansion context:
#| matches: all files and zero or more (sub)dirs
#| default: unset
shopt -s globstar

#| make RHS of the last pipe exec in current shenv (all but one exec in subshell)
shopt -s lastpipe


#|======================================================================= shopt
#| correct small typos
shopt -s cdspell

#| correct small dirname typos
shopt -s dirspell

#| bare dir implies cd
shopt -u autocd

#| vars expand wo $ for cd builtin: cd HOME == cd $HOME
shopt -s cdable_vars

#| kill all processes on bash exit
shopt -s huponexit

#| look busy
shopt -s checkjobs

#| expand/use aliases also in scripts
shopt -s expand_aliases

#| 'exec' builtin error brings down the house
shopt -u execfail

#| check cache for FQ program path
shopt -s checkhash

#| react on terminal window resize
shopt -s checkwinsize

#| allow typing a comment (hash) on cmd line
#shopt -s interactive_comments

#| auto-set if the shell abides
#shopt -s login_shell

#| make shell check mail
#shopt -u mailwarn

#| 'case' keyword explodiren
#shopt -u nocasematch


#|========================================================= bash compatibility
#| randomize echo's compatibility
shopt -s xpg_echo

#| extensively quote words
shopt -s extquote

#| search PATH when dotsourcing a bare name
shopt -s sourcepath

#| nonsense
#shopt -u gnu_errfmt

#| lock it down
#shopt -u restricted_shell


#|=========================================================== bash completions
#| main completions switch
shopt -s progcomp

#| quote the words fully, not half-assed
shopt -s complete_fullquote

#| expand in all directions, not just left
shopt -u direxpand

#| do not consult fignore even as a last chance for completion
shopt -s force_fignore

#| keep disabled
shopt -s no_empty_cmd_completion

#| complete hosts from $HOSTFILE
#shopt -s hostcomplete


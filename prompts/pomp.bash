# custom prompt
#
# shows last exit status, subshell level, jobs, hist cmd, cmd nr, bash pid,
# marks prompt lines so you can scroll to previous prompts:
# in mintty: Shift+LEFT/RIGHT
# \[\e[?7711h\]"
# https://github.com/mintty/mintty/wiki/CtrlSeqs#scroll-markers

#PS1="...
#\[\e[7m\]\W\[\e[0m\] \
# \$ 
#\[\e[?7711h\]"


PS1="\[\e]0m;\w\a\]\n\[\e[33m\]\
\u@\h \
($MSYSTEM) \
\[\e[34m\]\w\[\e[0m\] \
\[\e[38;2;50;50;50m\] \
\s \V \
jobs:\j \
hist:\! \
cmd:\# \
pid:$$\
\[\e[0m\] \
\[\e[31m\]$?\[\e[0m\] \
\n\
\[\e[32m\]λ\[\e[0m\] "
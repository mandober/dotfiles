#|-------------------------------------------------------------------- punchin
#| Punch in when this file is loaded (at login and if there is a tty)
#[[ -t 2 ]] && { printf "[\e[32m✔ \e[0m] %s\n" '.bashrc' >&2; }


#|--------------------------------------------------------------------- limits

#| file creation contra-mod
#| the default umask is set in /etc/profile
#| install libpam-umask to set umask for ssh logins
umask 0022

#| max recursive calls
export FUNCNEST=100

#| check mail every: never
#| abuse this and other MAIL* envars as a file-watcher (watch for file changes)
export MAILCHECK=0

#|------------------------------------------------------------------- defaults

#| Default terminal editor
#export EDITOR='emacs -nw'
export EDITOR=vim

#| Default x editor
export VISUAL=vim

#| Default app for man
export MANPAGER=most

#| Generally, opening files in Ubuntu is done thru xdg-open command;
#| this entry is just for http protocols that want to open a browser,
#| i.e. xdg-open will consult $BROWSER to see which app is used for browsing
export BROWSER='/mnt/t/bin/chrome'


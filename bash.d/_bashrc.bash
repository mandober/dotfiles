#!/bin/bash
#|
#| ~/.bashrc: executed by bash(1) for non-login shells.
#| see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)

# ============================================================================
# .bashrc - loaded if: user, shell, bash, nonlogin-shell
#
# Config:
#  - terminal: stty, TERM, keybindings
#  - locale
#  - limits: umask, ulimit, FUNCNEST
#  - enwars: bash, apps
#  - apps: config via enwars
#  - shell options: shopts, setopts
#  - completions
#  - globbing
#  - history
#  - prompt
#  - paths: PATH, SPATH, FPATH, CDPATH, MANPATH, INFOPATH
#
# Ref:
#   bash param expansions:
#   - add colon to also account for null vars (besides unset vars):
#     alt1=
#     alt2=bingo
#     echo ${var:-${alt1:-${alt2:?}}}      # prints: bingo
#
#   - assign expanded value form:
#       : ${var=${var:-${alt:?}}}
#
#     var is assigned $var if exists, otherwise $alt if exists,
#     otherwise it fails and var is null; it set but null.
#
#
# ============================================================================

#|-------------------------------------------------------------------- punchin
#| Punch in when this file is loaded (at login and if there is a tty)
[[ -t 2 ]] && { printf "[\e[32m✔ \e[0m] %s\n" '.bashrc' >&2; }

#|------------------------------------------------------------ terminal colors
#| Set styles for the output of `ls`
eval "$(dircolors -b ~/.dircolors)"

#| Set COLORTERM if the terminal really does support 24bit color mode.
export COLORTERM=truecolor

#| ANSI code example for RGB true colors, 38;2;R;G;Bm
#| printf "\x1b[38;2;125;178;54mTRUECOLOR\x1b[0m\n"


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


#|------------------------------------------------------------------------ XDG
#export ${XDG_DATA_HOME:-$HOME/.local/share}
#export XDG_CONFIG_HOME=$HOME/.config
#export XDG_CACHE_HOME=$HOME/.cache


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


#|--------------------------------------------------------------------- ranger
#| source this bash function so theshell updates to
#| lwd when ranger exits
#. $HOME/dotfiles.d/apps/ranger/ranger.d/shell_automatic_cd.bash



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


#|=================================================================== globbing

#|--------------------------------------------------- globbing: envars

# CSL of filename patterns for pathname expansion to ignore
export GLOBIGNORE='*.exe:*.dll:*.cpl:*mmc'

# CSL of shell patterns defining the list of filenames to be ignored by
# command search using PATH. Files whose full pathnames match one of these
# patterns are not considered executable files for the purposes of completion
# and command execution via PATH lookup. This does not affect the behavior
# of the [, test, and [[ commands. Full pathnames in the command hash table
# are not subject to EXECIGNORE. Use this variable to ignore shared library
# files that have the executable bit set, but are not executable files.
# The pattern matching honors the setting of the extglob shell option.
export EXECIGNORE='/c/**:/t/**:/v/**:/mnt/**'

# CSL of suffixes to ignore when performing filename completion.
# A filename whose suffix matches one of the entries in FIGNORE is excluded
# from the list of matched filenames. A sample value is ‘.o:~’
export FIGNORE='.exe:.dll:.cpl:mmc'


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


#|======================================================== early bash functions

#| Source the file if it exists
#slurp () { [[ -f "$1" ]] && { . "$1"; echo "$1 slurped."; } }

#|=================================================================== X server

#| The usual DIPLAY value
# export DISPLAY=localhost:0

#| Kissass DISPLAY value
# export DISPLAY=localhost:0.0

gui() {

  #| Forcing windowing X-server system for older wls using vcxsrc on windows side
  export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0

  #| Enable external libgl if mesa is not installed
  if (command -v glxinfo > /dev/null 2>&1); then
    unset LIBGL_ALWAYS_INDIRECT
  else
    export LIBGL_ALWAYS_INDIRECT=1
  fi

  #| If dbus-launch is installed then load it
  if (command -v dbus-launch >/dev/null 2>&1); then
    eval "$(timeout 2s dbus-launch --auto-syntax)"
  fi

  #| Speed up some GUI apps like gedit
  export NO_AT_BRIDGE=1
}


#| Fix scrolling issues with 'clear' if you have them
#| '-x' skips clearing backscroll
#alias clear='clear -x'


# ====================================================================== PROMPT
#| expand vars in PS
#shopt -s promptvars

#| pronto v.0.1
#export PS1='\[\e[33m\]\u@\h \[\e[34m\]\w\[\e[0m\] \[\e[38;2;50;50;50m\]\s\v jobs:\j cmd:\# hist:\! shlv:$SHLVL pid:$$\[\e[0m\] \[\e[31m\]$?\[\e[0m\] \nλ '

#| pronto v.0.2
#export PS1='\[\e[33m\]\h:\[\e[34m\]\w \[\e[38;2;50;50;50m\]shlvl:${SHLVL} \[\e[31m\][$?] \[\e[38;2;50;50;50m\]pipes:\[\e[31m\] ${PIPESTATUS[@]}\[\e[m\]\nλ '

#| pronto v.0.3
export PS1='\[\e[0;33m\]\h\[\e[0m\] \[\e[34m\]\w\[\e[m\] \[\e[2;37m\]shlvl:\[\e[m\]\[\e[0;33m\]$SHLVL\[\e[m\] \[\e[2;37m\]exit:\[\e[0;31m\]${PIPESTATUS[@]} \[\e[m\]\nπ '


#|==================================================================== includer
function includer {
  # dotfile dir
  local udir=$HOME/dots
  # user dotfiles array
  local ucf=( prompt env terminal shopt history glob aliases functions completions )
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

# call includer
includer


#|================================================================= source dir 
# source dir (default ~/.dotfiles.d)

function srcdir {
  # If not running interactively, bail out
  [[ $- != *i* ]] && return

  # turn on globbing
  shopt -s extglob extquote

  local dir="$HOME/dots"

  if [[ -d $dir ]]; then
    echo "dir to source: $dir"
    for file in $dir/*; do

      # ...if file is readable
      if [[ -r "$file" ]]; then

         # ...if file doesn't start with underscore
         if [[ ! $(basename "$file") =~ ^_ ]]; then

           # ...then source file
           #builtin source "$file" 2> /dev/null

           # feedback
	   local bbRet=$?
           if [[ $bbRet == 0 ]]; then
             printf "[\e[32m✔\e[0m] %s\n" "file sourced: $file" >&2
           else
             printf "[\e[31m✗\e[0m] %s [%s]\n" "error sourcing: $file" "$bbRet" >&2
           fi

         else
           printf "[\e[31m✗\e[0m] %s\n" "skipped (underscore): $file" >&2
         fi
    
      else
        printf "[\e[31m✗\e[0m] %s\n" "skipped (unreadable): $file" >&2
      fi

    done
  fi
}

#|========================================================================== ∎


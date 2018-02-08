#!/bin/bash
#=============================================================================
# FILE: history
# DESC: bash history settings
# REPO: https://github.com/mandober/dotfiles
# EDIT: 2017-10-01
# NOTE: history settings
#       - setopt
#       - env
#       - shopt
#       - prompt
#       - readline
#=============================================================================

# Every bash interactive session maintains its own history in
# memory. When the shell exits, history is saved in $HISTFILE


#                                                                  BASH SETOPT
# ============================================================================
# history, histexpand

# history
# Main switch that controls enabling/disabling of history.
# Default: ON (when the shell is interactive).
# Enable:  `set -o history` or `shopt -os history`
# Disable: `set +o history` or `shopt -ou history`

# histexpand
# Bang (!) style history substitution on comand line.
# Default: ON (when the shell is interactive).
# Enable:  `set -H` or `set -o histexpand` or `shopt -os histexpand`
# Disable: `set +H` or `set +o histexpand` or `shopt -ou histexpand`



#                                                                  ENVIRONMENT
# ============================================================================
# HISTCONTROL, HISTIGNORE, HISTSIZE, HISTFILE, HISTFILESIZE,
# HISTTIMEFORMAT, HISTCMD, histchars, FCEDIT


# HISTCONTROL
# Colon-separated list of values controlling how commands are saved to history:
# * "ignorespace"  lines which begin with a space are not saved in the history. 
# * "ignoredups"   lines matching the previous history entry are not saved.
# * "ignoreboth"   is shorthand for "ignorespace" and "ignoredups". 
# * "erasedups"    causes all previous lines matching the current line to be
#                  removed from the history list before that line is saved. 
# - Any value not in the above list is ignored. 
# - If HISTCONTROL is unset, or not a valid value, all lines read by the shell
#   parser are saved on the history list, subject to the value of HISTIGNORE. 
# - The second and subsequent lines of a multi-line compound command are not
#   tested, and are added to the history regardless of the value of HISTCONTROL.
export HISTCONTROL="ignorespace:ignoredups:erasedups"

# HISTIGNORE
# Colon-separated list of patterns used to decide which lines should go to history:
# - Each pattern is anchored at the beginning of the line and must match the
#   complete line (no implicit `*' is appended). 
# - Each pattern is tested against the line after the checks specified by 
#   HISTCONTROL are applied.
# - In addition to the normal shell pattern matching characters, "&" matches
#   the previous history line. & may be escaped using a backslash; the backslash
#   is removed before attempting a match. The second and subsequent lines of a
#   multi-line compound command are not tested, and are added to the history
#   regardless of the value of HISTIGNORE.
#export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'

# HISTSIZE
# Number of history entries remembered in memory. 
# - If the value is 0, commands are not remembered.
# - Numeric values less than zero mean that there is no limit. 
# - The shell sets the default value to 500 after reading any startup files,
#   so this variable will be present in the environment.
#export HISTSIZE=500

# HISTFILE
# The name of the file in which command history is saved. 
# The default value is ~/.bash_history, so this var will be present in the env.
# If unset, the command history is not saved when a shell exits.
#export HISTFILE $HOME/.bash_history

# HISTFILESIZE
# The maximum number of lines contained in the history file. 
# - When this variable is assigned a value, history file is truncated, if necessary, 
#   to contain no more than that number of lines by removing the oldest entries. 
# - history file is also truncated to this size after writing it when a shell exits. 
# - If the value is 0, the history file is truncated to zero size. 
# - Non-numeric values and numeric values less than zero inhibit truncation. 
# - The shell sets the default value to the value of $HISTSIZE after reading 
#   any startup files, so this var will be present in the env.
#export HISTFILESIZE=500

# HISTTIMEFORMAT
# If this variable is set and not null, its value is used as a format string
# for strftime(3) to print the time stamp associated with each history entry 
# displayed by the history builtin. If this variable is set, time stamps are 
# written to the history file so they may be preserved across shell sessions.
# This uses the history comment character to distinguish timestamps from other
# history lines.

# histchars
# The two or three characters which control history expansion and tokenization. 
# - The first character is the history expansion character, the character which
#   signals the start of a history expansion, normally ! 
# - The second character is the quick substitution character, which is used as
#   shorthand for re-running the previous command entered, substituting one
#   string for another in the command. The default is ^
# - The optional 3.character is character which indicates that the remainder of
#   the line is a comment when found as the 1.character of a word, normally #
# The history comment character causes history substitution to be skipped for
# remaining words on the line. It does not necessarily cause the shell parser
# to treat the rest of the line as a comment.

# HISTCMD
# The history number of a command is its position in the history list,
# which may include commands restored from the history file. 
# This var will be present in the env.
# If unset, it loses its special properties, even if it is subsequently reset.

# FCEDIT
# Default editor used by `fc -e` builtin command, which is meant for editing
# of history entries in text editor.
# fc is used to list or edit and re-execute commands from the history list.


#                                                                  BASH SHOPT
# ============================================================================
# histappend, histreedit, histverify, lithist, cmdhist 

# histappend
# If set, the history list is appended to the file named by the value of
# the HISTFILE variable when the shell exits, rather than overwriting the file.
# Default is OFF (shopt -u histappend)
shopt -s histappend

# histreedit
# If set, and readline is being used, a user is given the opportunity to re-edit
# a failed history substitution. Default is OFF.
# Turn it on: `shopt -s histreedit`

# histverify
# If set, and readline is being used, the results of history substitution are not
# immediately passed to the shell parser. Instead, the resulting line is loaded
# into the readline editing buffer, allowing further modification. Default is OFF.
# Turn it on: `shopt -s histverify`

# lithist
# If set, and cmdhist option is enabled, multi-line commands are saved to history
# with embedded newlines rather than using semicolon separators where possible.
# Turn it on: `shopt -s lithist`. Default is OFF.

# cmdhist
# If set, bash attempts to save all lines of a multiple-line command in the
# same history entry. This allows easy re-editing of multi-line commands.
# Turn it on: `shopt -s cmdhist`. Default is OFF.


#                                                                       PROMPT
# ============================================================================
# the history number of this command: \! (also see $HISTCMD)
# the command number of this command: \#

# The command number and the history number are usually different: 
# - the history number of a command is its position in the history list, which
#   may include commands restored from the history file, while 
# - the command number is the position in the sequence of commands executed 
#   during the current shell session. After the string is decoded, it is
#   expanded via parameter expansion, command substitution, arithmetic
#   expansion, and word splitting


# PROMPT_COMMAND
# If set, the value is executed as a command prior to issuing each primary prompt.
# This can be used to write immediately to history file after before each prompt:
#export PROMPT_COMMAND="history -a"


#                                                           READLINE VARIABLES
# ============================================================================
# ALL READLINE SETTTINGS are better off set in ~/.inputrc

# history-preserve-point (Off)
# If set to On, the history code attempts to place point at the same location
# on each history line retrieved with previous-history or next-history.
#bind 'history-preserve-point Off'

# history-size (0)
# Set the maximum number of history entries saved in the history list. 
# * If zero, any existing history entries are deleted and no new entries are saved. 
# * If set to a value less than zero, number of history entries is not limited. 
# By default, the number of history entries is not limited.
bind "history-size ${HISTSIZE:-500}"

# mark-modified-lines (Off)
# If On, history lines that have been modified are displayed with a preceding 
# asterisk
#bind 'set mark-modified-lines off'

# revert-all-at-newline (Off)
# If On, readline will undo all changes to history lines before returning when
# accept-line is executed. By default, history lines may be modified and retain
# individual undo lists across calls to readline.
#bind 'revert-all-at-newline Off'

# isearch-terminators (`C-[C-J')
# The string of characters that should terminate an incremental search without
# subsequently executing the character as a command. If this variable has not 
# been given a value, the characters ESC and C-J will terminate an incremental
# search.


bind '"^[OP": "\e0\e."' # F1 inserts word 0 (command) from previous history line
bind '"^[OQ": "\e1\e."' # F2 inserts word 1 (arg 1)
bind '"^[OR": "\e2\e."' # F3 inserts word 2 (arg 2)
bind '"^[OS": "\e3\e."' # F4 inserts word 3 (arg 3)

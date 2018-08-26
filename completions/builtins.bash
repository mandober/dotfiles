#!/bin/bash
#=========================================================================
# FILE: common.bash
# DESC: bash completions for common commands and builtins
# LAST: 2017-09-06
#=========================================================================

# variables: export unset
complete -A variable export unset

# alias: unalias
complete -A alias unalias

# directories
complete -d cd pushd popd rmdir

# set
complete -A setopt set

# shopt
complete -A shopt shopt

# help topics
complete -A helptopic help

# readline bindings
complete -A binding bind

# signals
complete -A signal kill

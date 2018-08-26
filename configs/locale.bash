#!/bin/bash
#===============================================================================
# FILE: locale.bash
# DESC: All locale related settings
# REPO: https://github.com/mandober/dotfiles
# EDIT: 2018-02-07
#===============================================================================


# globasciiranges
#
# If set, range expressions used in pattern matching bracket expressions behave
# as if in the traditional C locale when performing comparisons. That is, 
# current locale's collating sequence (LC_COLLATE, LC_CTYPE) is not taken into
# account, so b will not collate between A and B, and upper-case and lower-case
# ASCII characters will collate together.
shopt -s globasciiranges



# save current locale
#
: locale > "${DOTS:-$HOME/dots}/temp/locale_def_$(date +%s)"


# main locale and fallback for unset LC_* vars
export LANG="en_US.UTF-8"


# LC_COLLATE
#
# collation order used when sorting the results of filename expansion,
# behavior of range expressions, equivalence classes, and collating
# sequences within filename expansion and pattern matching.
export LC_COLLATE="C"
# sets letter sorting as in C


# LC_CTYPE
#
# interpretation of characters and the behavior of character
# classes within filename expansion and pattern matching.
export LC_CTYPE="C"
# sets character classes as in C


# LC_TIME
#
# determines the locale category used for data and time formatting.
export LC_TIME="en_DK.UTF-8"
# sets date to euro type dd-mm-yyyy, sets time to 24hrs

# TZ
#
export TZ=Europe/Belgrade


# save new locale
# locale > "${DOTS:-$HOME/dots}/temp/locale_new_$(date +%s)"




# C or POSIX is a special locale that disables all localization: all programs
# standardized by POSIX use English messages and an unspecified character encoding
# (often US-ASCII, but sometimes also ISO-8859-1 or UTF-8, depending on the OS).

# List all locale's keywords
# locale -k LC_CTYPE LC_COLLATE LC_TIME

# differences between 2 locales for specified category:
# diff <(LC_ALL=C locale -k LC_CTYPE) <(LC_ALL=C.UTF-8 locale -k LC_CTYPE)
# diff <(LC_ALL=en_US.UTF-8 locale -k LC_COLLATE) <(LC_ALL=sr_RS.UTF-8@latin locale -k LC_COLLATE)

# LOCS=(LC_CTYPE LC_COLLATE LC_NUMERIC LC_TIME)  # LC_MESSAGES, etc.
# locale -k ${LOCS[@]}
# diff <(LC_ALL=en_US.UTF-8 locale -k ${LOCS[@]}) <(LC_ALL=sr_RS.UTF-8@latin locale -k ${LOCS[@]})

#C
#POSIX
#C.UTF-8
#en_US.UTF-8
#sr_RS@latin
#sr_RS.UTF-8@latin

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


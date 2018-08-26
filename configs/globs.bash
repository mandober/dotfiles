#!/bin/bash
#=========================================================================
# FILE: glob.bash
# DESC: bash globbing settings
# EDIT: 2017-09-26
#=========================================================================

# GLOBBING
# shell > bash > shopt
# shell > bash > env vars
# shell > bash > readline



# EDITING
# Settings (set, shopt, env.vars) that related to shell editing: globbing, parameter expansion, etc.



shopt -s dotglob
# If set, bash includes filenames beginning with a `.' in the results of pathname expansion.

shopt -s extglob
# If set, the extended pattern matching features.

shopt -u failglob
# If set, patterns which fail to match filenames during pathname expansion result in an expansion error.

shopt -s globstar
# If set, the pattern ** used in a pathname expansion context will match all files and zero or more
# directories and subdirectories. If the pattern is followed by a /, only directories and subdirectories match.

shopt -s nocaseglob
# If set, bash matches filenames in a case-insensitive fashion when performing pathname expansion.

shopt -s nullglob
# If set, bash allows patterns which match no files to expand to a null string, rather than themselves.

shopt -s globasciiranges
# If set, range expressions used in pattern matching bracket expressions behave as if in the traditional
# C locale when performing comparisons. That is, the current locale's collating sequence is not taken into
# account, so b will not collate between A and B, and upper-case and lower-case ASCII characters will
# collate together.

shopt -u force_fignore
# If set, the suffixes specified by the FIGNORE shell variable cause words to be ignored
# when performing word completion even if the ignored words are the only possible completions.
# This option is enabled by default.

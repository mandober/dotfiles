#!/bin/bash
#=========================================================================
# FILE: shopt
# DESC: 
# EDIT: 2017-09-20
#=========================================================================


# shopt -u autocd
# shopt -u cdable_vars
# shopt -s cdspell
# shopt -u checkhash
# shopt -u checkjobs
# shopt -u checkwinsize
# shopt -s cmdhist
# shopt -u compat31
# shopt -u compat32
# shopt -u compat40
# shopt -u compat41
# shopt -u compat42
# shopt -u compat43
# shopt -u completion_strip_exe
# shopt -s complete_fullquote
# shopt -u direxpand
# shopt -u dirspell
# shopt -u dotglob
# shopt -u execfail
# shopt -s expand_aliases
# shopt -u extdebug
# shopt -u extglob
# shopt -s extquote
# shopt -u failglob
# shopt -s force_fignore
# shopt -u globasciiranges
# shopt -u globstar
# shopt -u gnu_errfmt
# shopt -s histappend
# shopt -u histreedit
# shopt -u histverify
# shopt -s hostcomplete
# shopt -u huponexit
# shopt -u inherit_errexit
# shopt -s interactive_comments
# shopt -u lastpipe
# shopt -u lithist
# shopt -s login_shell
# shopt -u mailwarn
# shopt -u no_empty_cmd_completion
# shopt -s nocaseglob
# shopt -u nocasematch
# shopt -u nullglob
# shopt -s progcomp
# shopt -s promptvars
# shopt -u restricted_shell
# shopt -u shift_verbose
# shopt -s sourcepath
# shopt -u xpg_echo


#dirspell
#spelling correction attempt on directory names during word completion. Default: UNSET

#cdspell
#spelling correction of minor errors of directory component in a cd command. The errors checked for: 1) transposed characters, 2) missing character and 3) one character too many. If a correction is found, the corrected filename is printed, and the command proceeds.This option is only used by interactive shells. Default: UNSET

#autocd
#if set, a command name that is the name of a directory is executed as if it were the argument to the cd command. This option is only used by interactive shells. (hint: avoid it). Default: UNSET

#cdable_vars - If set, an argument to the cd builtin command that is not a directory is assumed to be the name of a variable whose value is the directory to change to. Default: UNSET

#checkhash - If set, bash checks that a command found in the hash table exists before trying to execute it. If a hashed command no longer exists, a normal path search is performed. Default: UNSET

#checkjobs - If set, bash lists the status of any stopped and running jobs before exiting an interactive shell. If any jobs are running, this causes the exit to be deferred until a second exit is attempted without an intervening command. The shell always postpones exiting if any jobs are stopped. Default: UNSET

#checkwinsize - If set, bash checks the window size after each command and, if necessary, updates the values of LINES and COLUMNS. Default: UNSET

#cmdhist - If set, bash attempts to save all lines of a multiple-line command in the same history entry. This allows easy re-editing of multi-line commands. Default: SET

#complete_fullquote - If set, bash quotes all shell metacharacters in filenames and directory names when performing completion. If not set, bash removes metacharacters such as the dollar sign from the set of characters that will be quoted in completed filenames when these metacharacters appear in shell variable references in words to be completed. This means that dollar signs in variable names that expand to directories will not be quoted; however, any dollar signs appearing in filenames will not be quoted, either. This is active only when bash is using backslashes to quote completed filenames. This variable is set by default, which is the default bash behavior in versions through 4.2. Default: SET

#completion_strip_exe - Cygwin only: strip .exe from executable files when doing autocompletion. Default: UNSET

#direxpand - If set, bash replaces directory names with the results of word expansion when performing filename completion. This changes the contents of the readline editing buffer. If not set, bash attempts to preserve what the user typed. Default: UNSET

#dotglob - If set, bash includes filenames beginning with a dot (.) in the results of pathname expansion. Default: UNSET

#execfail - If set, a non-interactive shell will not exit if it cannot execute the file specified as an argument to the exec builtin command. An interactive shell does not exit if exec fails. Default: UNSET

#expand_aliases - If set, aliases are expanded as described above under ALIASES. This option is enabled by default for interactive shells. Default: SET

#extglob - If set, the extended pattern matching features are enabled. Default: SET

#extquote - If set, $'string'\e0m and $"string" quoting is performed within ${parameter} expansions enclosed in double quotes. This option is enabled by default. Default: SET

#failglob - If set, patterns which fail to match filenames during pathname expansion result in an expansion error. Default: UNSET

#force_fignore - If set, the suffixes specified by the FIGNORE shell variable cause words to be ignored when performing word completion even if the ignored words are the only possible completions. Default: SET

#globasciiranges - If set, range expressions used in pattern matching bracket expressions behave as if in the traditional C locale when performing comparisons. That is, the current locale collating sequence is not taken into account, so b will not collate between A and B, and upper-case and lower-case ASCII characters will collate together. Default: UNSET

#globstar - If set, the pattern ** used in a pathname expansion context will match all files and zero or more directories and subdirectories. If the pattern is followed by a /, only directories and subdirectories match. Default: UNSET

#gnu_errfmt - If set, shell error messages are written in the standard GNU error message format. Default: UNSET

#histappend - If set, the history list is appended to the file named by the value of the HISTFILE variable when the shell exits, rather than overwriting the file. Default: UNSET

#histreedit - If set, and readline is being used, a user is given the opportunity to re-edit a failed history substitution. Default: unset.

#histverify - If set, and readline is being used, the results of history substitution are not immediately passed to the shell parser. Instead, the resulting line is loaded into the readline editing buffer, allowing further modification. Default: UNSET

#lithist - If set, and the cmdhist option is enabled, multi-line commands are saved to the history with embedded newlines rather than using semicolon separators where possible. Default: UNSET

#hostcomplete - If set, and readline is being used, bash will attempt to perform hostname completion when a word containing a @ is being completed (see Completing). This is enabled by default.

#huponexit - If set, bash will send SIGHUP to all jobs when an interactive login shell exits. Default: UNSET

#interactive_comments - If set, allow a word beginning with # to cause that word and all remaining characters on that line to be ignored in an interactive shell. Default: SET

#lastpipe - If set, and job control is not active, the shell runs the last command of a pipeline not executed in the background in the current shell environment. Default: UNSET

#mailwarn - If set, and a file that bash is checking for mail has been accessed since the last time it was checked, the message 'The mail in mailfile has been read' is displayed. Default: UNSET

#no_empty_cmd_completion - If set, and readline is being used, bash will not attempt to search the PATH for possible completions when completion is attempted on an empty line. Default: UNSET

#nocaseglob - If set, bash matches filenames in a case-insensitive fashion when performing pathname expansion. Default: UNSET

#nocasematch - If set, bash matches patterns in a case-insensitive fashion when performing matching while executing 'CASE' or '[[' conditional commands. Default: UNSET

#nullglob - If set, bash allows patterns which match no files to expand to a null string, rather than themselves. Default: UNSET

#progcomp - If set, the programmable completion facilities are enabled. Default: SET

#promptvars - If set, prompt strings undergo parameter expansion, command substitution, arithmetic expansion, and quote removal after being expanded as described in PROMPTING. Default: SET

#shift_verbose - If set, the shift builtin prints an error message when the shift count exceeds the number of positional parameters.Default: UNSET

#sourcepath - If set, the source (.) builtin uses the value of PATH to find the directory containing the file supplied as an argument. Default: SET

#xpg_echo - If set, the echo builtin expands backslash-escaped characters/sequences \n = <newline>, \E = escape character ... are expanded. Default: UNSET

#extdebug - If set, behavior intended for use by debuggers is enabled: 1) The -F option to the declare builtin displays the source file name and line number corresponding to each function name supplied as an argument. 2) If the command run by the DEBUG trap returns a non-zero value, the next command is skipped and not executed. 3) If the command run by the DEBUG trap returns a value of 2, and the shell is executing in a subroutine (a shell function or a shell script executed by the . or source builtins), a call to return is simulated. 4) BASH_ARGC and BASH_ARGV are updated as described in their descriptions above. 5) Function tracing is enabled: command substitution, shell functions, and subshells invoked with ( command ) inherit the DEBUG and RETURN traps. 6) Error tracing is enabled: command substitution, shell functions, and subshells invoked with ( command ) inherit the ERR trap. Default: UNSET

#restricted_shell - The shell sets this option if it is started in restricted mode.The value may not be changed. This is not reset when the startup files are executed,allowing the startup files to discover whether or not a shell is restricted. Default: UNSET

#login_shell - The shell sets this option if it is started as a login shell. The value may not be changed. Default: SET



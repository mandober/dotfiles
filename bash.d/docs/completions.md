# bash completions



- completion provider
- completion mark
- completion type
- completion controller
- completion configuration
- completion fallback


Providers
- user-defined
- provided by utility: ghcup, cabal, stack, lua, luarocks, etc.
- installable addon: `bash_completions` package

Elements
- completion controllers: shopt, setopt, envars
- completion providers: addon, user-defined, app-provided
- completion users:
  - specific command
  - bash builtins
  - user functions (completions defined by user)
- completion types:
  - specific command
  - on empty cmdline
  - after shell-breaks (e.g. after a pipe)
- completers (compspecs)
  - all kinds of system resources, in general
  - list of files
  - list of dirs
  - list of commands (on PATH)
  - list of functions
    - list of user functions
    - list of aliases
    - list of user scripts (on PATH)
  - list of users, groups, UIDs, GIDs, hosts
  - list of builtins, setopt, shopt, services, keywords
  - list of vars
    - list of ass arrays
    - list of user vars
    - list of bash envvars
    - list of shell envvars
    - list of exported envvars



"\e\e":   complete
"\e!":    complete-command
"\e/":    complete-filename
"\e@":    complete-hostname
"\e{":    complete-into-braces
"\e~":    complete-username
"\e$":    complete-variable

"\C-x!":  possible-command-completions
"\e=":    possible-completions
"\e?":    possible-completions
"\C-x/":  possible-filename-completions
"\C-x@":  possible-hostname-completions
"\C-x~":  possible-username-completions
"\C-x$":  possible-variable-completions

"\C-i":   menu-complete
"\e[Z":   menu-complete-backward
          old-menu-complete (not bound)
"\e\C-i": dynamic-complete-history
"\e\C-e": shell-expand-line 
"\e&":    tilde-expand
 

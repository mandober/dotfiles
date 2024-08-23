# bash aspects

Aspects are misc entities and configurables things regarding bash.

bash aspects:
- environment
  - envars
    - bash envars
    - shell envars
    - user envars
    - app config envars
    - XDG dirs
- locale
- colors
  - ls
  - LS_COLORS
  - dircolors
  - theme: shell, prompt
  - app themes (vim, ranger, tmux)
- command line
  - history
    - history shopt
    - history envars
    - history substitution (!)
  - globbing
    - shopt, setop configuation
    - igoring files and dirs
      - .gitigore
      - glob ignore env vars
        - GLOBIGNORE
        - EXECIGNORE
        - FIGNORE
- shell options
  - shopt
  - setopt
  - envars
  - controlling execution

- app config

- PATH
  - PATH management
  - PATH order
  - BASH_HASH

- incude files and Dirs
- limits: umask, ulimits, FUNCNEST
- readline: .inputrc, vars, functions, bindings
- prompt
  - distro
  - current dir
  - $SHLVL
  - last exit status
- terminal
  - stty settings (raw, cooked, bindings, etc.)
  - $TERM env var
- cmdline
  - line editing
  - spellng errors
  - shopts: cdspell, dirspell, autocd, cdable_vars
  - custom cmdline bindings
    - invoke '--help' of first cmdline word
    - prepend 'sudo ' to first cmdline word
- completions
  - lazy loading
  - shopts: progcomp, complete_fullquote, direxpand, force_fignore, no_empty_cmd_completion, hostcomplete
- bash hooks:
  - PROMPT_COMMAND
  - file-not-found
  - preexec hook
- bash functions
  - lazy loading
- bash aliases
- bash builtins
  - enhanced builtins
  - enable/disable builtins
- jobs
  - `set -m` Enable jobs
  - `set -b` Report failure of bg jobs immediately
- users
- groups
- hostnames
  - $HOSTFILE
- permissions



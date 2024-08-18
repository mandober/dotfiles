# dotfiles

- DESC: Linux dotfiles
- EDIT: 2024-07-31


## Shartefacts

- Environment
  - terminal
    - terminal settings, stty
    - terminal envars
  - locale

  - bash dotfiles
  - ulimit
  - PATH
  - user envars
    - EDITOR
    - VISUAL
    - BROWSER
- bootstrap (installations, setup)
- apps
  - ranger
    - install ranger: sudo apt install ranger
    - install apps used by ranger 
    - copy the entire config: ranger --copy-config=all
    - ranger envars
      - RANGER_LOAD_DEFAULT_RC
        Prevent ranger from also loading config from /etc/ranger 
        when the entire config was copied to ~/.config/ranger
    - ranger config: customize config in ~/.config/ranger
- bash history
- bash globbing
- bash shopt, bash setopt
- bash vars
- bash completions
- bash aliases
- bash functions
- bash prompts


## Tasks

- individual configuration files located in `task.d` subdir relative to `task` file
- Environment variables
  - best place to set system envars
  - best place to set user envars
- system-wide tasks
- user-specific tasks
- shell tasks
  - cross-shell tasks
  - shell-specific tasks
    - sh tasks
    - bash tasks
    - zsh tasks
    - fish tasks
- bash tasks
- readline tasks
  - keybindings
  - macros
  - rl tasks
- App tasks
  - most
  - batcat
  - vim
  - emacs
  - htop
  - ranger
  - mc
  - plocate
  - fish
  - zsh



### Terminal tasks

- stty
- set terminal envars
- install terminal emulator
- configure, restore settings

## XDG tasks

- set XDG env vars
- config XDG user folders

## Locale tasks

- set locale
- set LC_* env vars
- set other locale env vars
- locale: en_DK
- charset: UTF-8

## Key bindings tasks

- readline variables
- readline functions
- readline macros
- bash's `bind` builtin
- .inputrc
- modify keyboard layout
  - swap `[]` and `()`
  - swap `;` and `:`
  - swap `-` and `_`
- configure compose key and compose files
- .XCompose
- .xinputrc

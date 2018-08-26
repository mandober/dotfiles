# dotfiles

- DESC: Dotfiles for POSIX environments
- REPO: https://github.org/mandober/dotfiles
- EDIT: 2018-02-01

Dotfiles for POSIX environments, be it a proper Linux system or POSIX emulation 
layer for Windows like WSL, Cygwin, MSYS2, etc. All settings are heavily 
commented and explained. Leaning towards bash shell at the moment.

Systems:
- Windows 10 (host)
- WSL: Ubuntu 18.10, apt, bash
- WSL: ArchLinux, pacman, bash
- MSYS2: MinGW64, pacman, bash
- MSYS2: Msys, pacman, bash
- Cygwin, custom, bash


Environments:
* `LP` Linux proper
* `EL` Emulation Layer (for Windows)
* `NT` Windows
- `$DOTS_SYS` = LP|EL|NT

Bitness:
* `86` x86
* `64` x86_64 (default)
- `$DOTS_BIT` = 86|64




- `L`inux
  - `U`buntu
  - `A`rchLinux
  - Al`p`ine
- `P`OSIX emulation layer for Windows
  - `W`SL
  - `C`ygwin
  - `M`SYS2
    - Min`G`W64
    - Ms`y`s

Package managers:
- `a`pt
- `p`acman
- `c`ustom

Shells:
- bash


`$DOTF=$HOME/dotfiles` = env dotfiles, this repo


## Artefacts
- terminal
- locale
- history
- globbing
- shopt
- bash vars
- ulimit
- PATH
- completions
- aliases
- functions
- enwars
- prompts


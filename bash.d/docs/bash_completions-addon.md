# bash complitions add-on

https://github.com/scop/bash-completion/blob/master/CHANGELOG.md
https://github.com/scop/bash-completion/blob/master/doc/configuration.md
https://github.com/scop/bash-completion/blob/master/doc/api-and-naming.md
https://fvue.nl/wiki/Bash_completion_library



- source code:
  - https://github.com/scop/bash-completion
  - https://salsa.debian.org/debian/bash-completion
- my version: 2.11
- latest version: 2.11 

```bash
#| Enable add-on for bash programmable completions.
#| Put user completions in: ~/.bash_completion
#| This file is sourced last.
#| Addon files at: 
#|

[[ -f /etc/bash_completion ]] && . /etc/bash_completion
```

However, the file `/etc/bash_completion` only contains:

```
. /usr/share/bash-completion/bash_completion
```

and that file contains the init for
`bash_completion` - programmable completion functions.

## profile.d
These commands install the completions and helpers, as well as `profile.d` script 
that loads bash_completion where appropriate.

If your system does not use the profile.d dir mechanism
(i.e. does not automatically source shell scripts in it)
you can source `etc/ofile.d/bash_completion.sh` script.

The profile.d script provides a configuration file hook that can be
used to prevent loading bash_completion on per user basis when it's
installed system wide. To do this:

Turn off programmable completion with `shopt -u progcomp`
in `$XDG_CONFIG_HOME/bash_completion`
(or ~/.config/bash_completion if $XDG_CONFIG_HOME is not set)
Turn it back on (e.g. in `~/.bashrc`) if you want to use
programmable completion for other purposes.


## Key bindings

- `m-/` to attempt file name completion on the text to the left of the cursor,
circumventing any file type restriction put in place by the bash completion code.

* To use bash default completion instead of one provided by addin
  override the compl for a cmd by placing this in a file in `~/.bash_completion`
  `complete -o default -o bashdefault $cmd`

## User completions

Define completions for user-defined functions (if they take args).

Define completions for index-quasi-functions, 
that list bash aspects (system resources) like
- bash keywords, defined aliases and fn names
- shopt, setopt
- bash envars, shell envars, user envars, app envars
- sysv dirs
- systemd commands
- readline vars, fns, keyseq
- known hosts, signals, MACs, IPs
- kernel versions, kernel modules
- uids, gids, services
and anything interesting like that.


## FAQ

### Where should I install my own local completions?
A. Put them in the completions subdir of $BASH_COMPLETION_USER_DIR
(defaults to $XDG_DATA_HOME/bash-completion or
~/.local/share/bash-completion
if $XDG_DATA_HOME is not set) to have them loaded automatically
on demand when the respective command is being completed.

See also the next question's answer for considerations for these
files' names, they apply here as well. Alternatively, you can write
them directly in ~/.bash_completion which is loaded eagerly by
our main script.

### Where to put completions for a package

Install it in one of the directories pointed to by
bash-completion's `pkgconfig` file variables.

The recommended directory is `completionsdir`, which you can get with
`pkg-config --variable=completionsdir bash-completion`

From this directory, completions are automatically loaded on demand based 
on invoked commands' names, so be sure to name your completion file accordingly
and to include (for example) symbolic links in case the file provides
completions for more than one command.

The other directory (which only present for backwards compatibility)
is `compatdir` (get it with `pkg-config --variable=compatdir bash-completion`) 
from which files are **loaded eagerly** when bash_completion is loaded.

### CVS with SSH
I use CVS in combination with passwordless SSH access to my remote
repository. How can I have the cvs command complete on remotely
checked-out files where relevant?

Define `$COMP_CVS_REMOTE`
Setting this to anything will result in the behaviour you would like.

### tar files

If you would rather have correct path completion for tar file
contents, define `$COMP_TAR_INTERNAL_PATHS` before sourcing
bash_completion.

### symlinks
When completing on a symlink to a directory, bash does not append
the trailing / and I have to hit <Tab> again. I don't like this.

This has nothing to do with bash_completion. It's the default for
completing symlinks to directories since bash 2.05a, and was added
because sometimes you want to operate on the symlink itself, rather
than what it points to.

You can get the pre-2.05a behaviour back by putting 
`set mark-symlinked-directories` 
in in your `/etc/inputrc` or `~/.inputrc` file.






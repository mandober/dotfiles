#| Enable bash programmable completion feature
#| This snippet also apperas in /etc/bash.bashrc,
#| which is sourced by /etc/profile file, so maybe
#| this is already enabled from there.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

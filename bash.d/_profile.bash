#| ============================================================================
#| ~/.profile:
#|    executed by ALL SHELLS (not just bash - avoid bashisms!)
#|    executed by ALL login SHELLS
#|    not read by bash if ~/.bash_profile or ~/.bash_login exists
#| ============================================================================

#| ====================================================================== umask
#| default umask is set in /etc/profile
#| for setting the umask for ssh, install libpam-umask
#umask 022

#| ================================================================== bash-only
if [ -n "$BASH_VERSION" ]; then
  . "$HOME/.bashrc"
fi

#| ============================================================================
# set PATH to include $HOME/bin or $HOME/.local/bin (if exist)
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

#| ======================================================================== lua
export PATH=.:$HOME/.luarocks/bin/:/usr/local/lib/luarocks/bin/:$PATH


#| ====================================================================== ghcup
[ -f /home/ivan/.ghcup/env ] && . /home/ivan/.ghcup/env


#|========================================================================== ∎


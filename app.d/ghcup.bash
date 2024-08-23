#| ghcup
#[[ -r /home/ivan/.ghcup/env ]] && . /home/ivan/.ghcup/env

#| ~/dots/app.d/ghcup.bash
#| just puts two dirs in the PATH: .ghcup/bin and .cabal/bin

declare bin1=$HOME/.ghcup/bin
declare bin2=$HOME/.cabal/bin

#| ghcup
case ":$PATH:" in
  # if bin1 dir already in PATH do nothing 
  *:$bin1:*)
  ;;
  # otherwise, prepend it to the PATH
  *)
    export PATH="$bin1:$PATH"
  ;;
esac

#| cabal
case ":$PATH:" in
  # if bin2 dir already in PATH do nothing 
  *:$bin2:*)
  ;;
  # otherwise, prepend it to the PATH
  *)
    export PATH="$bin2:$PATH"
  ;;
esac

unset bin1 bin2


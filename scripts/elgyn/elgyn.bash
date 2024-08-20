#!/bin/bash

# global CSI
CSI='\e['

# move cursor in DIR direction by N cells
# direction, DIR, is one of: 
# A (up), B (down), C (forward), D (back)
cursor_move () {
  declare DRN=${1:-A}
  declare CELL=${amount:-1}

  echo "${CSI}${CELL}${DRN}"
  echo -n "title"
}


# Alternative screen buffer (asb). Works! yey!
altEnter () {
  # sent a signal with "kill -signal $$"
  trap altExit RETURN

  echo "Entering alternative screen buffer…"
  echo "${CSI}?1049h"
  echo "Where am I"
  sleep 3
  echo "Where is this"
}

altExit () {
  echo "Exiting alternative screen buffer…"
  echo "${CSI}?1049l"
}

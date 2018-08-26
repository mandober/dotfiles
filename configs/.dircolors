#!/bin/bash
#=========================================================================
# FILE: .dircolors
# REPO: https://github.com/mandober/dotfiles
# DESC: colors for ls
# EDIT: 2017-09-24
# NOTE: eval $(dircolors -b ~/.dircolors)
#=========================================================================


#                                                                     INFO
#=========================================================================
 # Database file is initially set to /etc/DIR_COLORS then overridden 
 # with one of the following (from lowest to highest priority): 
 #      /etc/DIR_COLORS
 #      /etc/DIR_COLORS.$TERM
 #      ~/.dircolors
 #      ~/.dircolors.$TERM
 #      ~/.dir_colors
 #      ~/.dir_colors.$TERM
 #
 # it uses a precompiled database in the absence of dir_colors file.
 # issue: https://github.com/trapd00r/LS_COLORS/issues/11
 # 
 # COLOR:
 #   tty - add colour to ls when output is on the command line
 #   all - add colours even when piping 
 #   none - switch off
 COLOR tty
 #
 # EIGHTBIT:
 #   allows setting extra options to the ls command
 #   1 = allow 8-bit output
 #   0 = disallow 8-bit output
 EIGHTBIT 1
 #
 #
 # COLORS & ATTRIBUTES:
 #   colour definitions for file type and file
 #   extensions where colors can use these attributes:
 #
 #   01=bold   03=italic   04=underscore  00=reset
 #   05=blink  07=reverse  08=concealed
 #
 #   RGB: 38;2;R;G;B (text)   48;2;R;G;B (bg)
 #

#                                                                     TERM
#=========================================================================
 # TERM entries, which can be a glob patterns, to match against
 # the TERM environment variable to determine if it is colorizable.
 # (one line per terminal type that supports colour)
TERM xterm-256color
TERM xterm*
TERM tmux*
TERM con[0-9]*x[0-9]*
TERM cons25
TERM eterm-color
TERM gnome-256color
TERM hurd
TERM jfbterm
TERM mach-gnu-color
TERM rxvt*
TERM screen*
TERM st
TERM st-256color
TERM terminator


#                                                                 BY GROUP
#=========================================================================
 #
 # 38;2;244;231;55  yellow
 # 38;2;236;6;133   magenta
 # 38;2;240;148;9   orange
 # 38;2;77;244;126  green
 # 38;2;50;50;50    dark as bg (35)
 # 38;2;60;128;202;1   # blue-ish bold

NORMAL 0
FILE 0
RESET 0
DIR 1     # 1 bold 38;2;60;128;202;
LINK 0
FIFO  0
SOCK 0
DOOR 0
BLK 0
CHR 0
ORPHAN 3   # 3 italic 38;2;236;6;133;3
MISSING 3  # 3 italic 38;2;236;6;133;3
MULTIHARDLINK 0
OTHER_WRITABLE 0
SETUID 0
SETGID 0
CAPABILITY 0
STICKY_OTHER_WRITABLE 0
STICKY 0
EXEC 0


#                                                                FILETYPES
#=========================================================================
.md  38;2;157;206;255   # blue-ish
.py  38;2;55;137;198    # blue
.pl  38;2;236;6;133     # red
.js  38;2;73;221;123    # green
.rb  38;2;232;9;14      # red
.c   38;2;200;200;180   # pale
.h   38;2;200;180;180   # pale-ish

# 1;38;2;0;0;0  # black-bold
# 38;2;50;50;50 # dark gray (almost hide)

#                                                                 ARCHIVES
#=========================================================================
.gz   1;38;2;150;150;150
.tar  1;38;2;150;150;150
.zip  1;38;2;150;150;150
.rpm  1;38;2;150;150;150
.deb  1;38;2;150;150;150

#                                                                  SYSTEMD
#=========================================================================
.service              38;2;77;244;126
*@.service            38;2;77;244;126
.socket               38;2;77;244;126
.swap                 38;2;77;244;126
.device               38;2;77;244;126
.mount                38;2;77;244;126
.automount            38;2;77;244;126
.target               38;2;77;244;126
.path                 38;2;77;244;126
.timer                38;2;77;244;126
.snapshot             38;2;77;244;126

#                                                               junk files
#=========================================================================
.selected_editor          38;2;70;70;70 # grey
.sudo_as_admin_successful 38;2;70;70;70 # grey

#                                                                     bash
#=========================================================================
.sh                     38;2;144;251;55 # bright green
*.bash                  38;2;144;241;55 # bright green
.bash_history           38;2;144;241;55 # bright green
.bash_login             38;2;144;241;55 # bright green
.bash_logout            38;2;144;241;55 # bright green
.bash_profile           38;2;144;241;55 # bright green
.bashrc                 38;5;1          # red

#                                                                     dots
#=========================================================================
.profile                38;5;1
.tmux.conf              38;5;1
.inputrc                38;5;1
#.dircolors              38;5;65
#.gemrc                  38;5;65
#.lesshst                38;5;65


#                                                                      vim
#=========================================================================
# 38;2;114;172;225  # blue
# 38;2;244;201;55   # yellow
.vimrc.local            38;2;244;201;55 # yellow
.viminfo                38;2;244;201;55 # yellow
.vimrc                  38;2;244;201;55 # yellow
.vimrc.before           38;2;244;201;55 # yellow
.vimrc.bundles          38;2;244;201;55 # yellow

#                                                                      zsh
#=========================================================================
#.zcompdump              38;5;68
#.zsh_history            38;5;68
.zshrc                  38;5;1



#                                                                  PROJECT
#=========================================================================
*README               38;2;249;241;174
*README.md            38;2;249;241;174
*LICENSE              38;2;249;241;174
*COPYING              38;2;249;241;174
*INSTALL              38;2;249;241;174
*COPYRIGHT            38;2;249;241;174
*AUTHORS              38;2;249;241;174
*HISTORY              38;2;249;241;174
*CONTRIBUTORS         38;2;249;241;174
*VERSION              38;2;249;241;174
*NOTICE               38;2;249;241;174
*NEWS                 38;2;249;241;174
*MANIFEST             38;2;249;241;174
*USAGE                38;2;249;241;174
*COMPAT               38;2;249;241;174
*POSIX                38;2;249;241;174
*ABOUT-NLS            38;2;249;241;174
*NOTES                38;2;249;241;174
*Y2K                  38;2;249;241;174
*RBASH                38;2;249;241;174
*TODO                 38;2;249;241;174
*CREDITS              38;2;249;241;174
*CHANGELOG            38;2;249;241;174
*CHANGES              38;2;249;241;174
*ChangeLog            38;2;249;241;174

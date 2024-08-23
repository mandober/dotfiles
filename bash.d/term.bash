#|------------------------------------------------------------ terminal colors
#| Set ls styles
eval "$(dircolors -b ~/.dircolors)"

#| ANSI code example for RGB true colors, 38;2;R;G;Bm
#| printf "\x1b[38;2;125;178;54mTRUECOLOR\x1b[0m\n"
#| printf "\x1b[38;2;230;30;110mTRUECOLOR\x1b[0m\n"

#| LS_COLORS
#| This env var is the 'compiled' outpur of 'dircolors'.
#| Many utils that list files consider it
#| (ls, readline, tree, eza, lsdi, etc.)
#| It should not be manually edited.

#| TERM
#| Set it to term256-color if not already set.
#| How is this value determined remains a great Linux mistery.
#export TERM=term-256color

#| COLORTERM, NOCOLOR, XTERM_VERSION, VTE_VERSION 
#| These are non-standard env vars that are
#| nevertheless often considered by utilities.

#| COLORTERM
#| Set it if the terminal really supports 24-bit color mode.
export COLORTERM=truecolor
#| COLORTERM environment variable convention arose in part because
#| of the problems that termcap/terminfo have fully and correctly
#| describing colour capabilities. If it has the value 'truecolor'
#| or the value '24bit', then the terminal type supports
#| ISO 8613-6/ITU T.416 Direct colour SGR control sequences.
#| Other values are not really reliable, as its semantics for those
#| cases have never been fully and formally specified.

#| NO_COLOR
#| The env var that utilities may consider as to whether to emit colors.
#| Set NO_COLOR to anything to prevent output colorization (provided the
#| app respects it). It is a one-palce switch to turn off colors.

#| XTERM_VERSION
#| The value of the XTerm version.

#| VTE_VERSION
#| The version of VTE library that the terminal emulator is employing.


#| stty - config raw terminal setttings
#| - release keys for flow control ^Q and ^S
#| - bound keys:
#|   eof = ^D          Signal: End of file
#|   intr = ^C         Signal: Interrupt  
#|   susp = ^Z         Signal: Suspend
#|   quit = ^\         Signal: Quit
#|   stop = ^S         Flow control: pause printing output
#|   start = ^Q        Flow control: continue printing output
#|   lnext = ^V        Input next keypress verbatim
#|   erase = ^?        Delete previous char (DEL)
#|   kill = ^U         Delete from cursor to BOL
#|   werase = ^W       Delete previous word
#|   discard = ^O      Discard input (instead bound by RL: exec cmdline but keep editing)
#|   rprnt = ^R        Reprint (instead bound by RL: reverse history search)
#|   eol = <undef>
#|   eol2 = <undef>
#|   swtch = <undef>

#| Terminal-related programs
#| - infocmp (e.g. 'infocmp mintty' prints mintty terminal capabilities)
#| - terminfo(5)
#| - stty
#| - tabs
#| - captoinfo(1)
#| - infotocap(1)
#| - tic(1)
#| - toe(1)
#| - ncurses(3NCURSES)
#| - user_caps(5)

#| getty, tty, 
#| captoinfo(1) - convert a termcap description into a terminfo description
#| clear(1) - clear the terminal screen
#| infocmp(1) - compare or print out terminfo descriptions
#| login(1) - begin session on the system
#| reset(1) - terminal initialization (reset terminal)
#| stty(1) - change and print terminal line settings
#| tabs(1) - set tabs on a terminal
#| tic(1) - the terminfo entry-description compiler
#| toe(1) - table of (terminfo) entries
#| tput(1) - initialize a terminal or query terminfo database
#| tset(1) - terminal initialization
#| termcap(1) - terminal capability database
#| infotocap(1) - convert a terminfo description into a termcap description
#| tty(4) - controlling terminal
#| term(5) - format of compiled term file
#| terminfo(5) - terminal capability database
#| user_caps(5) - user-defined terminfo capabilities
#| environ(7) - user environment
#| agetty(8) - alternative Linux getty
#| getty(8) - setup console


#| $ tput init
#|   Initialize the terminal according to the type of terminal in the env var
#|   TERM. This command should be included in profile after TERM is exported.

#| Install package 'vttest' to test terminal capabilities.

#| Terminal-related links:
#| xterm: https://invisible-island.net/

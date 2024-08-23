
Synopsis:
smenu \
  [*-h|-help] [*-?|-u|-usage] [-i|-in|-inc|-incl|-include... #regex] 
  [-e|-ex|-exc|-excl|-exclude... #regex] [-m|-msg|-message|-title #message] 
  [-!|-int|-int_string [#string]] [-a|-attr|-attributes #prefix:attr...] 
  [-1|-l1|-level1 #...<3] [-2|-l2|-level2 #...<3] [-3|-l3|-level3 #...<3] 
  [-4|-l4|-level4 #...<3] [-5|-l5|-level5 #...<3] [-z|-zap|-zap-glyphs #bytes] 
  [-n|-lines|-height [#height]] [-b|-blank] 
  [*-.|-dot|-invalid #invalid_char_subst] [-M|-middle|-center] 
  [-d|-restore|-delete|-clean|-delete_window|-clean_window] 
  [-k|-ks|-keep_spaces] [-W|-ws|-wd|-word_delimiters|-word_separators #bytes] 
  [-q|-no_bar|-no-scroll_bar] [-S|-subst... #/regex/repl/opts] 
  [-I|-si|-subst_included... #/regex/repl/opts] 
  [-E|-se|-subst_excluded... #/regex/repl/opts] 
  [-/|-search_method #prefix|substring|fuzzy] 
  [-s|-sp|-start|-start_pattern #pattern] [-x|-tmout|-timeout #...] 
  [-X|-htmout|-hidden_timeout #...] [-r|-auto_validate] [-v|-vb|-visual_bell] 
  [-Q|-ignore_quotes] [*-V|-version] [*-H|-long-help] 
  [-D|-data|-options #prefix:attr...] [-N|-number... [#regex...]] 
  [-U|-unnumber... [#regex...]] [-F|-en|-embedded_number] 
  [-c|-col|-col_mode|-column>Columns] [-l|-line|-line_mode>Lines] 
  [-t|-tab|-tab_mode|-tabulate_mode>Tabulations [#cols]] 
  [-T|-tm|-tag|-tag_mode>Tagging [#delim]] 
  [-P|-pm|-pin|-pin_mode>Tagging [#delim]] 

  If present in the command line,
  -F|-en|-embedded_number and
  -N|-number and
  -U|-unnumber will be evaluated after -D|-data|-options

  -N|-number and
  -U|-unnumber will be evaluated after -F|-en|-embedded_number

Explanation of the syntax used above:
Only the parameters (prefixed by -) and the arguments, if any, must be entered.
The following is just there to explain the other symbols displayed.

*            : the parameters defined for this option will be evaluated first.
>            : the context after this symbol will be the new default context.
#tag         : argument with a hint about its meaning.
[...]        : the object between square brackets is optional.
...          : several occurrences of the previous object are possible.
[<|=|>]number: rules constraining the number of parameters/arguments.

--------------------------------------------------------------------------------

This is a filter that gets words from stdin or from a file and outputs
the selected words (or nothing) on stdout in a nice selection window

The selection window appears on /dev/tty just below the current line
(no clear screen!).

Short description of allowed parameters:

-h|-help
  displays this help.
-u|-usage
  displays the synopsis of the current context.
-i|-in|-inc|-incl|-include
  sets the regex input filter to match the selectable words.
-e|-ex|-exc|-excl|-exclude
  sets the regex input filter to match the non-selectable words.
-m|-msg|-message|-title
  displays a one-line message above the window.
-!|-int|-int_string
  outputs an optional string when ^C is typed.
-a|-attr|-attributes
  sets the attributes for the various displayed elements.
-1|-l1|-level1,-2|-l2|-level2,...,-5|-l5|-level5
  gives specific colors to up to 5 classes of selectable words.
-z|-zap|-zap_glyphs bytes
  defines a set of glyphs to ignore as input.
-n|-lines|-height
  sets the number of lines in the selection window.
-b|-blank
  displays non printable characters as space.
-.|-dot|-invalid
  defines the substitution character for a non-printable character.
-M|-middle|-center
  centers the display if possible.
-d|-restore|-delete|-clean|-delete_window|-clean_window
  clears the lines used by the selection window on exit.
-k|-ks|-keep_spaces
  does not trim spaces surrounding the output string if any.
-W|-ws|-wd|-word_delimiters|-word_separators
  sets the input words separators.
-L|-ls|-ld|-line-delimiters|-line_separators
  sets the input lines separators.
-q|-no_bar|-no-scroll_bar
  prevents the display of the scroll bar.
-S|-subst
  sets the post-processing action to apply to all words.
-I|-si|-subst_included
  sets the post-processing action to apply to selectable words only.
-E|-se|-subst_excluded
  sets the post-processing action to apply to non-selectable words only.
-/|-search_method
  changes the affectation of the / key (default fuzzy search).
-s|-sp|-start|-start_pattern
  sets the initial cursor position (read the manual for more details).
-x|-tmout|-timeout/-X|-htmout|-hidden_timeout
  sets a timeout and specifies what to do when it expires.
-r|-auto_validate
  enables ENTER to validate the selection even in search mode.
-v|-vb|-visual_bell
  makes the bell visual (fuzzy search with error).
-Q|-ignore_quotes
  treats single and double quotes as normal characters.
-V|-version
  displays the current version and quits.
-H|-long_help
  displays a full help and the options available in all contexts.
-N|-number/-U|-unnumber
  numbers/un-numbers and provides a direct access to words matching
  (or not) a specific regex.
-F|-en|-embedded_number
  numbers and provides a direct access to words by extracting the number
-c|-col|-col_mode|-column
  is like|-t without argument but respects end of lines.
-l|-line|-line_mode
  is like|-c without column alignments.
-t|-tab|-tab_mode|-tabulate_mode
  tabulates the items. The number of columns can be limited with
  an optional number.
-T|-tm|-tag|-tag_mode/-P|-pm|-pin|-pin_mode
  enables the tagging (multi-selections) mode. An optional parameter
  sets the separator string between the selected words on the output.
  A single space is the default separator.

Navigation keys are:
  - Left/Down/Up/Right arrows or h/j/k/l, H/J/K/L.
  - Home/End, SHIFT|CTRL+Home/End CTRK+J/CTRL+K.
  - Numbers if some words are numbered (-N/-U/-F).
  - SPACE to search for the next match of a previously
          entered search prefix if any, see below.

Other useful keys are:
  - Help key (temporary display of a short help line): ?
  - Exit key without output (do nothing)             : q
  - Tagging keys: Select/Deselect/Toggle             : INS/DEL/t
  - Selection key                                    : ENTER
  - Cancel key                                       : ESC
  - Search key                                       : / or CTRL-F

The search key activates a timed search mode in which
you can enter the first letters of the searched word.
When entering this mode you have 7s to start typing
and each entered letter gives you 5 more seconds before
the timeout. After that the search mode is ended.

Notes:
- the timer can be cancelled by pressing ESC.
- a bad search letter can be removed with CTRL-H or Backspace.

(C) Pierre Gentile.


# WinCompose :: Keyboard key names

WinCompose identifies keys (that is keystrokes or symbols) by the names it assignes to them. WinCompose assigns both *descriptive names* and *symbolic names* to keys, both of which are written in the angle brackets when defining a key-sequwnce (keyseq). However, not all keys/symbols are supported.


INFO:
- `⟦` and `⟧` are used to delineate symbols
- `∙` is used to separate unshifted and shifted symbols (key states)


In brief, WinCompose recognizes the following keys:
- alphabetic lower- and upper-case letters: ⟦a..z⟧ ⟦A..Z⟧
  - these only have symbolic names, e.g. `<a>`, `<A>`
- numerics and their shifted states: ⟦`0123456789_=⟧ ⟦~!@#$%^&*[]-+⟧



  e.g. <period> or <.>, <asciitilde> or <~>
- WinCompose associates key sequences with the unicode symbols
  where unicode symbol is a single glyph, but you can also put more than one.
- WinCompose sequence always starts with the compose key, followed by any number 
  of keys, and (if correct) produces the associated unicode symbol; otherwise,
  a sequence permutation is tried. Eventually, the characters typed as part of 
  the sequence are removed (optional) from the document.

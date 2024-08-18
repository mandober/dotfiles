# XCompose :: Mapped leader keys

* Specials
  - ↑ Up                                    01_up.xcompose 
  - ↓ Down                                  02_down.xcompose
  - ← Left                                  03_left.xcompose
  - → Right                                 04_right.xcompose
  -   space    ( )                          16_space.xcompose

* Punct
  - grave      (`), asciitilde    (~)       05_grave.xcompose
  - underscore (_), minus         (-)       06_underscore.xcompose
  - equal      (=), plus          (+)       07_equal.xcompose
  - parenleft  ((), braceleft     ({)
  - parenright ()), braceright    (})
  - slash      (/), bar           (|)       10_slash.xcompose
  - colon      (:), semicolon     (;)       11_colon.xcompose
  - apostrophe ('), quotedbl      (")       12_apostrophe.xcompose
  - comma      (,), less          (<)       13_comma.xcompose
  - period     (.), greater       (>)       14_period.xcompose
  - backslash  (\), (not used)    (?)       15_backslash.xcompose

* Keypad
  - asterisk   (*) KEYPAD                   17_asterisk.xcompose
  - minus      (-) KEYPAD                   18_minus.xcompose
  - plus       (+) KEYPAD                   19_plus.xcompose
  - slash      (/) KEYPAD                   DUP KEYPAD (10_slash.xcompose)

* Digits
  - 1,              exclam        (!)       21.xcompose
  - 2,              at            (@)       22.xcompose
  - 3,              numbersign    (#)       23.xcompose
  - 4,              dollar        ($)       24.xcompose
  - 5,              percent       (%)       25.xcompose
  - 6,              asciicircum   (^)       26.xcompose
  - 7,              ampersand     (&)       27.xcompose
  - 8,              asterisk      (*)       28.xcompose
  - 9,              bracketleft   ([)       29.xcompose
  - 0,              bracketright  (])       20.xcompose

* Misc
  - double-tap a key                        31_doublekey.xcompose
  - tap 2 ⎄ ⎄                              32_tap2.xcompose
  - tap 3 ⎄ ⎄ ⎄                            33_tap3.xcompose
  - descriptive map                         34_desc.xcompose
  - misc                                    35_misc.xcompose




## All avaialable key names

```
percent (%)   asterisk (*)     ampersand (&)   asciicircum (^)
minus   (-)   plus     (+)     quotedbl  (")   apostrophe  (')
grave   (`)   exclam   (!)     dollar    ($)   numbersign  (#)
SLASH   (/)   bar      (|)     at        (@)   BACKSLASH   (\)
COMMA   (,)   PERIOD   (.)     colon     (:)   semicolon   (;)
less    (<)   greater  (>)     EQUAL     (=)   underscore  (_)
              space    ( )                     asciitilde  (~)
Up      (↑)                    Down     (↓)
Left    (←)                    Right    (→)
              braceleft   {                    braceright   }
              bracketleft [                    bracketright ]
              parenleft   (                    parenright   )
```


## Unshifted instead of shifted key states

Since hitting a key directly is more pleasent then shifting it, most SYMBOLS refer to the char produced by the unshifted key state of the corresponding key.

For example, to produce `≃` glyph, instead of going with the "obvious" combo
`<Multi_key> <asciitilde> <minus> : "≃"`

we'll use the `<grave>` instead of asciitilde to avoid shifting
`<Multi_key> <grave> <minus> : "≃"`

The `minus` can be produced by shifting the `underscore` but since 'minus' also occurs on the keypad, so it is also considered a leader key, just like `plus`, `asterisk`, and `slash` (`slash` is directly available in two places - above the RETURN and on the keypad).

# WinCompose :: My convention :: Key pairs

Since holding SHIFT to type a char is inconvenient, in most cases the nominal key characters is also used to repr the shifted character. For example, the glyph `⊢` dies to be encoded as the compose sequence `Multi_key <bar> <minus>`, but then this seemingly 3-key sequence actually becomes a 5-key sequence: `Alt, Shift + /, Shift + _`, which is too cumbersome. So instead of insisting on 'bar' (Shift + /), we repr 'bar' (pipe) as its alt pair characters, i.e. '/' (`<slash>`); and similarly for `-`: it is repr by `_`. Finally, the glyph `⊢` is encoded by the compose sequence `Multi_key <slash> <underscore>` and realized by the key sequence `Alt, /, _`.

Posiible exceptions are charset that can be realized by the numpad, although only `+` and `*` are otherwise alt key char (=/+) and (8/*)
- slash     /
- asterisk  *
- minus     -
- plus      +
- period    .

## Alt key pairs

PRIMARY              ALTERNATIVE            NUMPAD

grave        (`)`    asciitilde   (~)
1                    exclam       (!)
2                    at           (@)
3                    numbersign   (#)
4                    dollar       ($)
5                    percent      (%)
6                    asciicircum  (^)
7                    ampersand    (&)
8                    asterisk     (*)       primary @NumPad
9                    bracketleft   [
0                    bracketright  ]
underscore   (_)     minus        (-)       primary @NumPad
equal        (=)     plus         (+)       primary @NumPad
parenleft     (      braceleft     {
parenright    )      braceright    }
slash        (/)     bar          (|)
colon        (:)     semicolon    (;)
apostrophe   (')     quotedbl     (")
period       (.)     less         (<)
comma        (,)     greater      (>)

backslash    (\)     (? not used)
space        ( )     N/A
Up           (↑)     N/A
Down         (↓)     N/A
Left         (←)     N/A
Right        (→)     N/A


---

- `grave` also repr `~` asciitilde
- 1     ! exclam
- 2     @ at
- 3     # numbersign
- 4     $ dollar
- 5     % percent
- 6     ^ asciicircum
- 7     & ampersand
- 8     * asterisk
- 9     [ bracketleft
- 0     ] bracketright
- _     - minus
- =     + plus

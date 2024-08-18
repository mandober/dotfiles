# Remapped keys

WinCompose recognizes the symbols after being processed by the OS.

For example, on Windows, the keys that by default produce `[∙{` and `]∙}`, but have been remapped with MSKL to produce `(∙{` and `)∙}` instead, are recognized as the latter, as expected.

The program MSKL was used to remap the following keys:
- `[` ⟼ `(` (the shifted `{` was left unchanged),   `] = )`
- `]` ⟼ `)` (the shifted `}` was left unchanged),   `[ = (`
- `(` ⟼ `[` (the unshifted `9` was left unchanged), `Shift + 9 = [`
- `)` ⟼ `]` (the unshifted `0` was left unchanged), `Shift + 0 = ]`
- at the same key `;∙:`, the two states are swapped, so now it is `:∙;`, 
  i.e. the colon is now unshifted, the semicolon is shifted.
- made use of the SgGrAlt state (fabrically unused/unassigned). It is an additional key modifier, yielding new key states by pressing `GrAlt` key, i.e. the right Alt key, which seems to also be available as `Ctrl + left Alt`.
- turning on CapsLock turns on the "greek" (+ some logic symbols) mode, in which the GrAlt produces still a different set of symbols.

right Alt = `GrAlt` = Ctrl + left Alt


The brackets are fabrically set to the unshifted state, at the easily accessible keys to the left of ENTER. They were swapped with parenthesis (which were produced by `Shift + 9` and `Shift + 0`).

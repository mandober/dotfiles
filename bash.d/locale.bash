#| locale.bash - set locale
#|
#| name: locale.bash
#| path: ~/dots/bash/locale.bash
#| note: C encoding seems to be significantly faster than UTF-8
#| refs: locale(5), locale(7)

#| LANG
#| determine the locale category for any category not specifically
#| selected with a variable starting with LC_*.
LANG="C.UTF-8"

#| LC_ALL
#| overrides the value of LANG and any other LC_* variable specifying 
#| a locale category.
#LC_ALL=

#| LC_COLLATE
#| determines the collation order used when sorting the results of filename
#| expansion, and determines the behavior of range expressions, equivalence
#| classes, and collating sequences within filename expansion and pattern 
#| matching.
LC_COLLATE="C.UTF-8"

#| LC_CTYPE
#| determines the interpretation of chars and the behavior of char classes
#| within filename expansion and pattern matching.
LC_CTYPE="C.UTF-8"

#| LC_MESSAGES
#| determines the locale used to translate double-quoted strings preceded 
#| by a '$'.
LC_MESSAGES="C.UTF-8"

#| LC_NUMERIC
#| determines the locale category used for number formatting.
LC_NUMERIC="C.UTF-8"

#| LC_TIME
#| determines the locale category used for data and time formatting.
LC_TIME="C.UTF-8"

#| LC_ADDRESS
#| determines the locale category used for address formatting.
LC_ADDRESS="C.UTF-8"


LC_IDENTIFICATION="C.UTF-8"
LC_MEASUREMENT="C.UTF-8"
LC_MONETARY="C.UTF-8"
LC_NAME="C.UTF-8"
LC_PAPER="C.UTF-8"
LC_TELEPHONE="C.UTF-8"

LANGUAGE=

#| LOCPATH
#| path to a custom locale config in user dir.



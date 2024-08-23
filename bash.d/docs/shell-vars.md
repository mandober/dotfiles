# Shell variables

Types of variables
- env vars
- shell vars
  - inherited
  - exported
- bash vars (start with `BASH*`)
- user vars
- passed to subshell, `var=val cmd` or `var=val $(subshell)`

Attributes of bash vars
- integer,            `declare -i`
- indexed array,      `declare -a`
- associative array,  `declare -A`
- reference,          `declare -n`
- exported,           `declare -x`
- traced,             `declare -t`
- lowecase,           `declare -l`
- uppercase,          `declare -u`
- readonly,           `declare -r`


## Bash bultins re variables
- declare (typeset)
- local
- export
- readonly
- unset

### declare

declare [-aAfFgiIlnrtux] [-p] [name[=value] ...]

Set variable values and attributes.

Declare variables and give them attributes.
If no NAMEs are given, display the attributes and values of all variables.

Options:

-p        display the attributes and value of each NAME
-f        restrict action or display to function names and definitions
-g        create global vars when used in shell function; otherwise ignored
-F        restrict display to function names only
          (plus line number and source file when debugging)
-I        if creating a local variable, inherit the attributes
          and value of a var with the same name at a previous scope [NEW]

Options which set attributes:
-a        make NAMEs indexed arrays
-A        make NAMEs associative arrays
-i        make NAMEs have the `integer` attribute
-n        make NAME reference the var named by its value
-r        make NAMEs readonly
-t        make NAMEs have the `trace` attribute
-x        make NAMEs export
-l        convert value of each NAME to lower case on assignment
-u        convert value of each NAME to upper case on assignment

Using `+` instead of `-` turns off the given attribute.

Variables with integer attribute have arithmetic
evaluation performed when var is assigned a value.

When used in a function, `declare` makes NAMEs local,
as with the `local` command. `-g` option suppresses this.

Exit Status:
Returns success unless an invalid option supplied
or a variable assignment error occurs.


# dirstack

The directory stack is a list of recently-visited directories. 

`pushd` builtin adds directories to the stack as it changes the current directory
`popd` builtin removes specified directories from the stack and changes the current dir to removed dir
`dirs` builtin displays the contents of the directory stack
The current directory is always the "top" of the directory stack.
The contents of the directory stack are also visible as the value of `$DIRSTACK` shell variable.

## Bindings

s-LEFT   move back to previous dir, popping it off the dirstack
s-RIGHT  move forward to dir, popping it off the dirstack

## ls colors

The file `.dircolors` configures the ls colors.
It outputs commands to set `LS_COLORS` environment variable.

`LS_COLORS` contains the compiled dircolors as a long string of colors.


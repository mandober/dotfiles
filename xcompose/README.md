# xcompose

## Linux
On Linux, the main XCompose file is in $HOME, `$HOME/.xcompose`.

The setting that defines which key is used as the compose key can be in various places, depending on the distro, but it can also be defined in the file `xinitrc`

include ".xcompose.d/inc.xcompose"

## Windows
On Windows, the *wincompose* app tries to achive the same using the same format as the XCompose system. The main file that is loaded should be in the user's dir `%USERPROFILE%`, and named `.XCompose`, i.e. `%USERPROFILE%/.XCompose`. This file can then include XCompose files with definitions.

include "xcompose.d\inc.xcompose"
include "T:\lib\apps\wincompose\xcomposeinc\01_grave.xcompose"

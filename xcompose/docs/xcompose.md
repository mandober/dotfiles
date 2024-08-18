# xcompose


## ENVIRONMENT VARIABLES

- `XCOMPOSEFILE` File to use for compose sequences.
- `XCOMPOSECACHE` Directory to use for caching compiled compose files.

## FILES

* `$HOME/.XCompose`
User-specific default compose file; unless changed with $XCOMPOSEFILE

* `$HOME/.compose-cache/`
User-specific cache directory for compiled compose files.

* `/var/cache/libx11/compose/`
System-wide cache directory for compiled compose files.

* `/usr/share/X11/locale/<localemapping>/Compose`
System default compose file for the locale, mapped via `compose.dir` file.

* `/usr/share/X11/locale/compose.dir`
The file with the listings of the compose file path to use for each locale.
Excerpt:

```txt
# This file contains compose table file names.
# The first word is the compose table file name
# and the second word is the full locale name.

# Note that no Compose tables exist for ISO 8859-11, Microsoft code
# pages, Fujitsu's S90 or U90 character sets, or TIS620 yet.

iso8859-1/Compose               C
iso8859-1/Compose               aa_DJ.ISO8859-1
microsoft-cp1251/Compose        be_BY.CP1251
iso8859-1/Compose               en_EN.ISO8859-1
iso8859-1/Compose               en_GB.ISO8859-1
en_US.UTF-8/Compose             C.UTF-8
en_US.UTF-8/Compose             en_GB.UTF-8

```

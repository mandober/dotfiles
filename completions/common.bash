#!/bin/bash
#=========================================================================
# FILE: common.bash
# DESC: bash completions for common commands and builtins
# LAST: 2017-09-06
#=========================================================================

# users
complete -A user su id adduser useradd deluser usermod

# groups
complete -A groups addgroup groupadd groupdel chgrp

# files
complete -A file cat vim less

# services
complete -A service service


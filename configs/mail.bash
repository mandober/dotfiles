#!/bin/bash



# shopt -s mailwarn



# MAIL
# If this parameter is set to a file name and the MAILPATH variable is not set, bash 
# informs the user of the arrival of mail in the specified file.
# It can be used to monitor any file for changes; To monitor several files see MAILPATH.
MAIL=/t/storage/email/kerio/mail_store/mail/dr.dev/ivan/INBOX/index.fld

# MAILCHECK
# Specifies how often (in seconds) bash checks for mail. The default is 60 seconds. When
# it is time to check for mail, the shell does so before displaying the primary prompt. 
# If this variable is unset or set to a value that is not a number greater than or equal 
# to zero, the shell disables mail checking.
MAILCHECK=120

# MAILPATH
# Colon-separated list of file names to be checked for mail. The message to be printed 
# when mail arrives in a particular file may be specified by separating the file name 
# from the message with a ?. When used in the text of the message, $_ expands to the 
# name of the current mail file. Here’s an example:
# MAILPATH='/var/mail/bfox?"You have mail":~/shell-mail?"$_ has mail!"'
# Bash supplies a default value for this variable, but the location of the user mail 
# files that it uses is system dependent (for example, /var/mail/$USER)
MAILPATH='/t/storage/email/kerio/mail_store/mail/dr.dev/ivan/INBOX/index.fld?New email!:$HOME/mailtest?Mail test changed!:$HOME/bfx/dotfiles/prompt:New prompt added'

# pam_env.conf(5)

https://linux.die.net/man/5/pam_env.conf

`pam_env.conf` - the environment variables config file


The `/etc/security/pam_env.conf` file specifies the environment variables to be 
set, unset or modified by `pam_env(8)`. When someone logs in, this file is read 
and the environment variables are set according.


The format in `pam_env.conf` file 

    VAR_NAME [DEFAULT=[value]] [OVERRIDE=[value]]

- comment lines begin with `#`, with no spaces in front of it.
- the syntax `${string}` may be used to refer to a (possibly non-existent) env vars
- the syntax `@{string}` may be used to refer to a (possibly non-existent) *PAM_ITEM*
- `$` and `@` characters can be backslash-escaped in order to interpret them as literals.
- values may use double quotes as delimiters, but backslash-escaping a double quote is not supported (!)
- line continuation char is backslash, appearing as the final char on the line. 
  can the next line begin with spaces? (unclear)


So, it is not the classic VAR=NAME format, but
each line starts with a variable name (VAR_NAME) followed by 2 possible 
options for each variable: `DEFAULT` and `OVERRIDE` (literal strings).

`DEFAULT` option allows administrators to set a default value; 
if none supplied, the empty string is assumed.

`OVERRIDE` option tells *pam_env* to use the provided value to override the default value. 
If OVERRIDE is not used, the empty string is assumed, so no overriding takes place.


NOTE: many env vars may not be set by the time the PAM module is called 
(and this file is read), so be careful which env vars you refer to. For 
one, PAM does not make the *HOME* env var available in time so that you 
can refer to it here. Best set env var directly, without referencing 
other envars.


### Examples

Example lines which might be specified in `/etc/security/pam_env.conf`.


Set the REMOTEHOST variable for any hosts that are remote. 
Defaults to "localhost", rather than not being set at all.

      REMOTEHOST     DEFAULT=localhost    OVERRIDE=@{PAM_RHOST}


Set the DISPLAY variable if it seems reasonable

      DISPLAY        DEFAULT=${REMOTEHOST}:0.0 OVERRIDE=${DISPLAY}



Some simple variables

      PAGER          DEFAULT=less
      MANPAGER       DEFAULT=less
      LESS           DEFAULT="M q e h15 z23 b80"
      NNTPSERVER     DEFAULT=localhost
      PATH           DEFAULT=${HOME}/bin:/usr/local/bin:/bin\
      :/usr/bin:/usr/local/bin/X11:/usr/bin/X11


Silly examples just to show escaping.

      DOLLAR         DEFAULT=\$
      DOLLARDOLLAR   DEFAULT=        OVERRIDE=\$${DOLLAR}
      DOLLARPLUS     DEFAULT=\${REMOTEHOST}${REMOTEHOST}
      ATSIGN         DEFAULT=""      OVERRIDE=\@




Oh, man, just as it was established that HOME specifically is not available 
in time to refer to it in the `pam_env.conf`, the PATH example above uses it...


## See also
pam_env(8), pam.d(5), pam(8)

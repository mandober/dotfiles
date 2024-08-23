# Shell expansions

- word splitting
- primary command identification
- alias expansion
- brace expansion
- tilde expansion
- globs expansion
- filename generation
- parameter expansion
  - variables expansion
  - environment variables expansion
- redirection
  - shell pipes, `cmd1 | cmd2`
  - command substitution, `$(cmd)`
  - process substitution, `<(cmd)`, `>(cmd)`
  - subshell, `(…)`
  - command-group, `{ …; } >fd`
- arithmetic expansion
- quote removal
- quoting
  * escape character,              `\`
  * single quotes,                 '…'
  * double quotes,                 "…"
  * ansi-c quoting                $'…'
  * locale-specific translation,  $"…"
- handling comments,               `#`
- handling history expansion char, `!`




1. Reads input
2. Breaks input into words and operators
  - tokens are separated by metacharacters
  - performs alias expansion
  - handles quoting:
    - escape character
    - single quotes
    - double quotes
    - ANSI-C quoting
    - locale-specific translation
3. Parses the tokens into simple and compound commands.
  - reserved words parsing
  - simple commands
  - compound commands
  - redirection
  - pipeline
    - [time [-p]] [!] cmd1 [ | or |& cmd2 ] …
    - The output of each command in the pipeline is
      connected via pipe to the input of next command;
      i.e. each command reads the previous command's output.
      This is connected before any *redirections* specified by cmd1.
    - If `|&` is used, cmd1's stderr is also connected to 
      cmd2's stdin through the pipe, as a shorthand for `2>&1 |`. 
      This implicit redirection of stderr to stdout is
      performed after *redirections* specified by the cmd1.
    - If pipeline is not executed async, shell awaits
      for all commands in the pipeline to complete.
    - Each command in multi-command pipeline, where pipes are 
      created, is executed in its own subshell, which is a 
      separate process.
    - If `lastpipe` option is on, the last element of a pipeline 
      may be run by the shell process when job control is not active.
    - exit status of a pipeline is the exit status of the last command
      in the pipeline, unless `pipefail` option is enabled. 
      If `pipefail` is enabled, the pipeline's return status is 
      the value of the last (rightmost) command to exit with a non-0 status,
      or 0 if all commands exit successfully. I
    - If the reserved word `!` precedes the pipeline,
      the exit status is the logical negation of the exit status.
    - The shell awaits for all commands in pipeline 
      to terminate before returning a value.
  - Lists of commands
    - A list is a sequence of one or more pipelines 
      separated by one of operators `;`, `&`, `&&`, `||`,
      and optionally terminated by one of `;`, `&`, NL.
    - `&&` and `||` have equal precedence, followed 
      by `;` and `&`, which have equal precedence.
  - Compound Commands
    - Compound commands are the shell programming language constructs.
    - Each construct begins with a reserved word or control operator 
      and is terminated by a corresponding reserved word or operator.
    - Any redirections associated with a compound command apply to all 
      commands within that compound command unless explicitly overridden.
    - Looping Constructs
      - until test-commands; do consequent-commands; done
      - while test-commands; do consequent-commands; done
      - for name [ [in [words …] ] ; ] do commands; done
      - for (( expr1 ; expr2 ; expr3 )) ; do commands ; done
    - Conditional Constructs
      - if
      - case
      - select
      - ((…))
      - [[…]]
    - Grouping commands
      - ( list )
      - { list; }
    - Coprocesses
      - coproc [NAME] command [redirections]

4. Performs shell expansions,
   breaking the expanded tokens into lists of filenames and commands and arguments.
5. Performs redirections 
   and removes the redirection operators and their operands from the argument list.
6. Executes the command.
7. Optionally, waits for the command to complete and collects its exit status.



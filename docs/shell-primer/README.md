# Shell Primer

- console
  - text console
  - system console
  - virtual console
  - console (as a physical device)
- terminal
  - text terminal
  - terminal (as a physical device)
  - terminal emulator, virtual terminal
    - terminal multiplexer (tmux)
- teletype
  - teletype, tty
  - pseudo teletype, pty
- shell
  - interpreter of commands typed by users, command-line interpreter
  - scripting/glue/programming language (batch-mode execution)
  - text shell
  - command-line
    - command-line (as an input line of text)
    - command-line (place on screen where the prompt is printed)
    - command-line (means of computer interaction exclusively via text)
    - command-line interface (CLI)
    - interactive interface (text shell)
    - non-interactive interface (punch cards)
    - command-line shell


- shell modes
  - login shell
  - interactive shell
  - non-interactive shell

- shell mode opposing pairs
  - login vs non-login shell
  - interactive vs non-interactive shell
  - restricted vs non-restricted shell
  - remote vs local shell

- execution in shell
  - shell execution context/environment
  - batch-mode execution, non-interactive mode
  - line by line execution (REPL), interactive mode


- commands (procedures)

  - internal commands: executed in the current shell context
  - external commands: executed in a subshell




## Console

https://en.wikipedia.org/wiki/Computer_terminal

A **text terminal** is a serial computer interface for text entry and display.

The **system console** is often a text terminal used to operate a computer. Modern computers have a built-in keyboard and display for the console. 

Linux has **virtual consoles** providing several text terminals on a single computer. Some computers have a console that consists only of buttons, dials, lights and switches (e.g. Altair).

Console is also used in the sense of a physical hardware device that houses a text terminal. Nowadays, gaming devices are also called consoles (e.g. Sony Playstation); a hand-held computer intended for gaming is also called a console (e.g. GameBoy); an RC tray filled with controls for flying a drone could also be called a console.

The fundamental type of application running on a *text terminal* is a *shell*, aka a *command-line interpreter*, that prompts the user to type in commands which it then executes. In a shell, most of *commands* are small applications themselves.

https://en.wikipedia.org/wiki/Text-based_user_interface
https://en.wikipedia.org/wiki/Command-line_interface

## Shell

https://en.wikipedia.org/wiki/Shell_(computing)
https://en.wikipedia.org/wiki/Unix_shell

In 1964, for the Multics OS, Louis Pouzin conceived the idea of "using commands somehow like a programming language", and coined the term "shell" to describe it: "The purpose of such a procedure is to create a medium of exchange into which one could activate any procedure, as if it were called from the inside of another program. Hereafter, for simplification, we shall refer to that procedure as the SHELL". -- Louis Pouzin, "The SHELL: A Global Tool for Calling and Chaining Procedures in the System", 1964.

In a 1965 document, shell is defined as a common procedure called automatically by the supervisor whenever a user types in some message at the console, at a time when no other process is in active execution (under the console's control). This procedure acts as an interface between console messages and subroutine in the supervisor.

*Multics shell* had also introduced *active function*, a key concept in all later shells, defined as a string, that gets replaced by a character string return value before the command line containing it is executed. Active functions are often used to implement *command-language* macros. (from 1983's "Multics Common Commands" manual).

In 1971, Ken Thompson developed the *Thompson shell* in the first version of Unix. While simpler than the Multics shell, it contained some innovative features that are still present today, like the use of characters `<` and `>` for redirection (in this role called **metacharacters**).

A **command-line interface (CLI)** is a means of interacting with a computer by typing lines of text, called command-lines.


Command-line interfaces emerged in the mid-1960s, on computer terminals, as an interactive and user-friendly alternative to the *non-interactive interface* available with punched cards.

A **command-line interface (CLI)** is an operating system shell that uses alphanumeric characters typed on a keyboard to provide instructions and data to the operating system, in an interactive manner.


CLIs are made possible by command-line interpreters or command-line processors, which are programs that read command-lines and carry out the commands.

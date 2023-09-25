# Bash
https://devhints.io/bash
https://ss64.com/bash

    history               # commands history
    cat $HISTFILE         # the same

    history 10    # last 10 commands
    history -c    # clear history

  !100            # 100th command 
  !-2             # preprevious command

    Arrow up  recall last command
    Ctrl-P    recall last command

    !!      last command full
    !:0     program name
    !:^     1st argument
    !:3     3rd argument
    !:3-5   arguments range
    !:*     all arguments
    !:$     last argument

  

  Ctrl-L  clear the screen! :star:

## Move cursor
    Ctrl-A    Home
    Ctrl-XX   Home and back to current position
    Ctrl-E    End
    Alt-B     One word Back
    Alt-F     One word Forward
    
## Delete
    Ctrl-U    delete all left from cursor (sits left on keyboard)
    Ctrl-K    delete all right from cursor (sits right on keyboard)

    Ctrl-KU  delete current line

## Environment variables
https://www.cherryservers.com/blog/how-to-set-list-and-manage-linux-environment-variables

* shell variables
* environment variables
* and shell functions

      set | grep -i bash

      compgen -v    # list names only

### Set env var
SANDWICH=Pepper
SANDWICH='Pepper And Egg'
export SANDWICH='Pepper And Egg'
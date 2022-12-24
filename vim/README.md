# VIM


    :q    quit
    :q!     quit without changes

    :w      save
    :wa     save and quit

    i       INSERT mode, no move, ESQ to quit
    I       INSERT mode, move to the start of the line
    a       INSERT mode, started from the next character
    A       INSERT mode, move to the end of the line
    o       INSERT mode, insert a line below and starts there
    O       INSERT mode, insert a line above and start there

    5↑  | k     moves 5 lines up
    3↓  | j     moves 3 lines down
    10→ | l     moves 10 characters right
    40← | h     moves 40 characters left

    w       goto to start of next text-word
    W       goto to start of next symbolic-word
    b       goto to start of previous text-word
    B       goto to start of previous symbolic-word
    3w


    u       undo
    Ctrl R  redo

    v       VISUAL mode for selecting
    V       selects whoole lines

    y       copY (Ctrl-C)
    yy      copY the whole line
    Y       copY the whole line

    p       paste after cursor, 10p also works (Ctrl-V)
    P       paste before cursor

    d       deletes the selection
    D       deletes the line after cursor
    dd      deletes the whole line
    diw     delete inner word
    dw      deletes from cursor to the end of the word
    db      deletes from cursor to the beginning of the word
    una word
    d3w     deletes 3 words

    c       same as d + switch to INSERT mode



    :set number     enables line numbering
    :set relativenumber
    :set mouse=a
    :set tabstop=4
    :set shiftwidth=4
    
    :colorscheme


# Edu
* https://youtu.be/RZ4p-saaQkc
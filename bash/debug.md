# Bash debug


#!/bin/bash
trap 'echo "# $BASH_COMMAND";read' DEBUG
echo line1
echo line2
echo line3


* перед выполнением каждой команды выводится то, что будет исполняться
* trap перехватывает сигнал DEBUG
* read ожидает Enter/Ctrl-C
* $BASH_COMMAND, валидна внутри trap


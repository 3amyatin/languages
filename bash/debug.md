#!/bin/bash
trap 'echo "# $BASH_COMMAND";read' DEBUG
echo line1
echo line2
echo line3


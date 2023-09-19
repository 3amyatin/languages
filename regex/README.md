# Regex

## Regex flavors

### Exasol
https://docs.exasol.com/db/latest/sql_references/basiclanguageelements.htm#RegularExpressions

### Notepad++
https://npp-user-manual.org/docs/searching/#regular-expressions

## Regex examples

### A function call without some text in the parameters

    getsegidfakt[\s\n]*\((?![^\)]+Zamyatin)[^\)]+\)

Doesn't work with nested brackets :(

### remove duplicates in Notepad++
[notepad++/remove-duplicate-rows.md](/notepad++/remove-duplicate-rows.md)

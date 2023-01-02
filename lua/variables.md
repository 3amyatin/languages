# Lua variables
Lua variables are case SENSITIVE.

Exasol variables are UPPERCASE.
## declare
    var = 2 -- global scope
    local var = 2 -- local scope (warning! also inside if, for, etc)
 
## number
    type(n) == 'number'

## string
    type(s) == 'string'
    tostring(n)
    string.upper(s)

# Lua

applied in [Exasol](/exasol)

## manual
* http://www.lua.org/manual/5.4/
* :star: http://www.lua.org/pil/contents.html
* http://lua-users.org/wiki/LuaDirectory

## Syntax
```x:bar(3, 4)``` === ```x.bar(x, 3, 4)```

# Debug
* ```output(var)```
* ```output(type(var))```

# Variables
## declare
* var = 2 -- global scope
* local var = 2 -- local scope (warning! also inside if, for, etc)
 
## number
* ```type(n) == 'number'```

## string
* ```type(s) == 'string'```
* ```tostring(n)```
* string.upper(s)

# Control flow
# if
* 
# for
*

# Operators
## Precedence
high to low:
1. ^
2. not, - (negation)
3. *, /, %
4. +, -
5. ..
6. <, >, <=, >=, ~=, ==
7. and
8. or


# Functions
* https://www.lua.org/pil/6.html
* ```function foo (x) return 2*x end```
* ```foo = function (x) return 2*x end```

# OOP
* ```x:bar(3, 4)``` === ```x.bar(x, 3, 4)```

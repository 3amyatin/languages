# Lua variables
Lua variables are case SENSITIVE.

_Exasol: variables are UPPERCASE._

Variables have no types.
Values have type.

---
## scope
    s = 2 === global s = 2 -- by default
    local s = '' -- local in function / then / while bodies

use `local`  for counters and temporary variables

http://www.lua.org/pil/4.2.html

---
## nil
`nil` → not in list

_Exasol: null, NULL don't exist in Lua_

    type(nil) == 'nil'



---
## boolean
    v = true
    v = false
    type(true) == 'boolean'


---
## number
    type(n) == 'number'
    v = 5
    math.pi
    -- math methods: min, max, floor, sin, cos, random

    math.randomseed(os.time()) -- seed with different number
    math.random()

    tonumber("123") == 0 + "123"

_Exasol: no decimal(5.8) in Lua_

## time and date
os.time()

---
## string
    s = 'this ' .. "and that" .. [[ or "that" ]]
    -- "default"
    -- [[for multiline]]
    -- 'rather not'
    -- ' escaping \' character '
    type(s) == 'string'
    tostring(123) == "" .. 123
    string.upper(s)

    #s == string.len(s) = s:len()  -- string length
    string.lower(s) == s:lower()
    string.upper(s) == s:upper()
    string.rep(s, 3) == s:rep(3)

    s:sub(pos_from, pos_to) -- substract
    -- :bulb: negative position counts from the end
    -- :bulb: equals SUBSTR(s, a, b-a+1) in SQL
    
    # search
    if columns_list:find('AUSWBIS') ~= nil then

---
## arrays
* keys = numbers
* values = any type
* guaranteed order

A

    a = {} -- empty array
    a1 = { [1] = 'hi', [2] = 'hello', [3] = 'you' }
    a2 = { 'hi', 'hello', 'you' }
    a1 === a2

    #a -- array length, works with numerical arrays. #a = 0 if there is no [1] key

    type(a) == 'table'

    

### add a new element
    t[#t + 1]  = 'Exasol'
    table.insert(a, 1, 'four')

### remove an element
    removed_element = table.remove(a, 3)
    removed_element = table.remove(a) -- removes last element

### print an array
    print(table.concat(a, ', '))





---
## table
* aka dictionaries
* keys and values can be of any type
* no order

https://www.lua.org/pil/2.5.html

    { ["FIRSTNAME"] = "Jane" } == { FIRSTNAME = "Jane" } == a.FIRSTNAME = "Jane"

    #a -- table length doesn't work if there is no [1] key

    type(t) == 'table'


---
## function
[functions](functions.md) are naturally variables




---
## unset a variable
delete a variable

    v = nil
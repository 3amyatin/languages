# Lua control flow
http://www.lua.org/pil/4.3.html


## if
http://www.lua.org/pil/4.3.1.html

    t = {'Jane', 'Miller', 'Bob', 'Smith'}
    if t == nil then
      error('The array is nil')
    elseif #t %2 ~= 0 then
      error('The array doesn't contain an even number of elements')
    else
      print(#t)


## for numeric
http://www.lua.org/pil/4.3.4.html

    for i = 1, #t do
      print(t[i])
    end

backwards traversal from right to left with step -1

    for i = #t, 1, -1 do 
      print(t[i])
    end

    for i = v_from, v_to[, v_step or 1]

    end


## for generic
http://www.lua.org/pil/4.3.5.html

with pairs() iterator function: all tables

    for k, v in pairs(t) = v_from, v_to[, v_step or 1]
    
    end

with ipairs() iterator function: only for arrays

    for k, v in ipairs(t) = v_from, v_to[, v_step or 1]
    
    end



## break and return
http://www.lua.org/pil/4.4.html

## while
http://www.lua.org/pil/4.3.2.html

    i = 1
    while i <= #t do
      print(t[i])
      i = i+1
    end

    while true do
      do_smth()
      if we_like == true then
        break
      end
    end


## repeat
:bulb:	executed at least once

http://www.lua.org/pil/4.3.3.html

    repeat
      t[#t + 1]  = 'Exasol'
    until #t >= 10

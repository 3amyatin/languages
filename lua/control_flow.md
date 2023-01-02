# Lua control flow

## if
    t = {'Jane', 'Miller', 'Bob', 'Smith'}
    if t == nil then
      error('The array is nil')
    elseif #t %2 ~= 0 then
      error('The array doesn't contain an even number of elements')
    else
      print(#t)


# while
    i = 1
    while i <= #t do
      print(t[i])
      i = i+1
    end

# repeat
:bulb:	executed at least once

    repeat
      t[#t + 1]  = 'Exasol'
    until #t >= 10

## for
    for i = v_from, v_to[, v_step or 1]

    end

    -- with pairs() iterator function: all tables
    -- pairs(table): iterator
    for k, v in pairs(t) = v_from, v_to[, v_step or 1]
    
    end

    -- with ipairs() iterator function: only for arrays
    for k, v in ipairs(t) = v_from, v_to[, v_step or 1]
    
    end

    for i = 1, #t do
      print(t[i])
    end

    -- backwards traversal from right to left with step -1
    for i = #t, 1, -1 do 
      print(t[i])
    end

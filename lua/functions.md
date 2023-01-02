# Lua functions

https://www.lua.org/pil/6.html

    function foo(x) 
        -- don't overwrite the parameter variables
        local my_x = x  -- otherwise my_x will be available outside the function
        if x == nil then my_x = 5 end -- check parameter existence
        return x
    end

    foo() == foo(nil)   -- not set parameters equal nil
    foo(5, 3, 1) == foo(5) -- excessive parameters are ignored

    function complex(x,y,z)
        return 1, 2, 3
    end

    one, two, three = complex()
    one, two = complex()            -- three == nil
    zero, one, two = 0, complex()
    two = select(2, complex())


## Lambda function
    foo = function (x) return 2*x end

    type(type) == 'function'
    type(type(type))) == 'string'



# Lua objects


    function wrap_incrementAge(self, n)
        self.age = self.age + n
    end

    function new()
        return {
            name = "",
            age = 0
            incrementAge = wrap_incrementAge
        }
    end

    p = new()
    p.name = 'Peter'
    p.age = 25
    p:incrementAge(10) == p.incrementAge(p, 10)
    print(p.name, p.age)

    x:bar(3, 4) == x.bar(x, 3, 4)

## Accounts example class
    Account = {balance = 0}

    function Account:new (o, name)  -- constructor
    o = o or {name=name}
    setmetatable(o, self)
    self.__index = self
    return o
    end

    function Account:deposit (v) -- methods
    self.balance = self.balance + v
    end

    function Account:withdraw (v)
    if v > self.balance then error("insufficient funds on account "..self.name) end
    self.balance = self.balance - v
    end

    function Account:show (title)
    print(title or "", self.name, self.balance)
    end

    a = Account:new(nil,"demo")
    a:show("after creation")
    a:deposit(1000.00)
    a:show("after deposit")
    a:withdraw(100.00)
    a:show("after withdraw")

    -- this would raise an error
    --[[
    b = Account:new(nil,"DEMO")
    b:withdraw(100.00)
    --]]

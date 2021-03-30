# Falsy
* https://docs.python.org/3/library/stdtypes.html#truth-value-testing
## Definition

```python
obj.__bool__() == False
obj.__len__() == 0
None
False
0
0.0
0j
Decimal(0)
Fraction(0, 1)
""
()
[]
{}
set()
range(0)
```

# Operators
## not
## or
* return first truthy statement or the last one
* lazy execution = statements after first True are **NOT** executed
```python
X or Y === X if X else Y

A or B or C or D === A if A else B if B else C if C else D

max(lst or [0])  # Return 0 for empty list and not raises an Exception

x = a or default  # Default value
x = a or b or None

def func(lst=None):  # Never put mutable values as default argument's value
  lst = lst or []

def divide(a, b):  # Handling zero devision
  return b == 0 or a / b
  
lambda_func = lambda a, b: print(a, end=' ') or print(b) # executes multiple statements in lambda
````

## and
## if
## while

# Falsy
* https://docs.python.org/3/library/stdtypes.html#truth-value-testing
## Definition

```python
None or False  # constants
0 or 0.0 or 0j or Decimal(0) or Fraction(0, 1)  # numbers
"" or () or [] or {} or set() or range(0) # collections
obj.__bool__() == False or obj.__len__() == 0  # objects
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

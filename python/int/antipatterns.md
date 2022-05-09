# `assert` checks
assert can be disabled in the interpreter


# Default mutable arguments
```python
def compute_patterns(inputs=[]):
  inputs.append("some stuff")
  patterns = ["a list based on"] + inputs
  return patterns

compute_patterns()
['a list based on', 'some stuff']

compute_patterns()
['a list based on', 'some stuff', 'some stuff']

compute_patterns()
['a list based on', 'some stuff', 'some stuff', 'some stuff']
```
https://florimond.dev/blog/articles/2018/08/python-mutable-defaults-are-the-source-of-all-evil/


# Avoiding exceptions
```python
try:
    do_something()
except:
    pass
```
better
```python
try:
    do_something()
except ValueError:
    pass
```
https://realpython.com/the-most-diabolical-python-antipattern/

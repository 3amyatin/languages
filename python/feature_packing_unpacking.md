```python
def f(arg1, *args, *, kwarg1, kwargs2, **kwargs)


x, y, z = 'xyz'

rectangle = (0, 0), (4, 4)
(x1, y1), (x2, y2) = rectangle



for
```

# Unpacking


# Packing
```python

first, *rest = range(1, 5)
first, *rest, last = range(1, 5)
*_, (first, *rest) = [range(1, 5)] * 5

for a, *b in [range(4), range(2)]:
  print(b)





```



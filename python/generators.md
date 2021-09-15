# Generator
## Generator is a function
* returns some value on yield
* freezes until the next call
  * next(genvar)
  * for i in genvar: pass

## Simple example
```python
def countdown(n):
    while n > 0:
        yield n
        n -= 1
 ```

Calling a countdown
* creates an object
* but doesn't output anything

 
 
## Generator expression
aka generator comprehension
```python
csv_gen = (row for row in open(file_name))
```



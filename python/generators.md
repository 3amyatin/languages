# Generator
Generator is a function:
* returns some value on yield
* freezes until the next call
  * next(genvar)
  * for i in genvar: pass

```python
def countdown(n):
    while n > 0:
        yield n
        n -= 1
 ```
 
 
 calling a countdown:
 * creates an object
 * but doesn't output anything


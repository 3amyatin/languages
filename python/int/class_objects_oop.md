# Objects, classes and OOP
```python
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width
    def area(self):
        return self.length * self.width

class Square(Rectangle):
    def __init__(self, length):
        super().__init__(length, length)   # Rectangle's __init__
```

* cast a class object as a dict https://stackoverflow.com/questions/35282222/in-python-how-do-i-cast-a-class-object-to-a-dict

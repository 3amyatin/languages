
# Dataclasses
https://realpython.com/python-data-classes/

```python
from dataclasses import dataclass

@dataclass
class DataClassCard:
    rank: str
    suit: str

queen_of_hearts = DataClassCard('Q', 'Hearts')
queen_of_hearts.rank    # 'Q'
queen_of_hearts # DataClassCard(rank='Q', suit='Hearts')
queen_of_hearts == DataClassCard('Q', 'Hearts')     # True

@dataclass
class Dog:
    name: str
    age: int
    def bark(self):
        print(f"woof name={self.name} age={self.age}")
dog = Dog("rocky", 4)
dog.bark()   # woof name=rocky age=4
```

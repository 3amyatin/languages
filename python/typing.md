* Types [types.md](types.md)
* https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html
* https://mypy.readthedocs.io/en/stable/builtin_types.html
* https://realpython.com/python-type-checking
* https://docs.python.org/3/library/typing.html

# Basics
```python
var: str = 'bla'

def func(var1: type1, *, kvar2: type2, kvar3: type3 = 404) -> Any
  pass
  
print(func.__annotations__)   # for a function
print(__annotations__) # for all variables

def method_returns_nothing() -> None
  pass

str
int
float
bool
list
tuple
dict
set
```

# Aliases
```python
Vector = list[float]  
ConnectionOptions = dict[str, str]
Address = tuple[str, int]
Server = tuple[Address, ConnectionOptions]


from typing import Dict, List, Tuple
names: List[str] = ["Guido", "Jukka", "Ivan"]
version: Tuple[int, int, int] = (3, 7, 1)
options: Dict[str, bool] = {"centered": False, "capitalize": True}
```

# Sequence
* List or Tuple
* is anything that supports len() and .__getitem__()
```python
from typing import List, Sequence
elems: Sequence[float]
```


# Anything and Nothing
## Any
```python
from typing import Any, Sequence
Sequence[Any] === Sequence
```

## None
```python
return None
```

## NoReturn
means a function never reaching the end (probably due to an exception
```python
```

# Default value - Optional
```python
from typing import Optional
def player_order(start: Optional[str] = None) -> str:
  pass
```

# Alternative - Union
```python
from typing import Union
var: Union[None, str]
```



# Callable
method or function used without ()
```python
from collections.abc import Callable
Callable[[int, Exception], None]

```

# Also
https://docs.python.org/3/library/typing.html#newtype

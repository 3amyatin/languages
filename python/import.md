# import

```python

# absolute full import
import bla
import pandas as pd  # with alias

# absolute selective import 
from boo import foo
from boo import foo, faa, fee
from boo import *
from boo import foo as ke

# relative - for modules inside of a package
from . import du
from .mod1 import obj1
from .package2 import obj2
from .package2.module21 import obj21
```

```python
target = __import__("my_sum.py")
sum = target.sum
```
* (+) no need for a package
* (!) overwrite existing definitions/ already imported modules


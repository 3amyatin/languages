* Type hinting [typing.md](typing.md)

# Hack existing types
```python
class Hid(str):
    pass
   
hid = Hid('bla')

type(Hid)  # <class 'type'>
type(hid)  # <class '__main__.Hid'>

type(hid) is Hid  # True
type(hid) is str  # False

isinstance(hid, Hid)  # True
isinstance(hid, str)  # True
issubclass(Hid, str)  # True

```

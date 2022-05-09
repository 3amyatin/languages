# Iterables
* can be iterated over in a for-loop
* https://www.pythonlikeyoumeanit.com/Module2_EssentialsOfPython/Iterables.html

## sequental
lists, tuples, strings
## non-sequental collections
dict, set
## enum
https://rednafi.github.io/reflections/add-additional-attributes-to-enum-members-in-python.html


## Type hinting
[typing.md](typing.md)

## Hack existing types
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

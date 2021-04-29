# Testing


1. In main()
```python
if __name__ == "__main__":
  # test hier
```

2. with doctest
    * https://docs.python.org/3/library/doctest.html

3. separate test files with unittest, pytest  etc
    * https://realpython.com/python-testing/

# PyCharm
* https://www.jetbrains.com/help/pycharm/testing-your-first-python-application.html
* https://www.jetbrains.com/help/pycharm/pytest.html

# Template
* https://blog.miguelgrinberg.com/post/how-to-write-unit-tests-in-python-part-1-fizz-buzz

# pytest
* https://www.jetbrains.com/help/pycharm/pytest.html
* https://realpython.com/pytest-python-testing/
* https://docs.pytest.org/en/latest

```python
import pytest

from zielezin import ExasolConnection
from config import _config as config

@pytest.fixture
def exasol():
  return ExasolConnection(**config.connect['dev-sqlalchemy'])


def test_1(exasol):
  stmt = exasol.execute_lua_script('dwh_out.DWH_UTILITY_COPYZUSATZINFOMONAT', -1, 'FAKT_ZUSATZINFO_AGT', dryrun=True)
  assert stmt == "execute script dwh_out.DWH_UTILITY_COPYZUSATZINFOMONAT (-1, 'FAKT_ZUSATZINFO_AGT') with output;"


def test_dva(exasol):
  stmt = exasol.execute_lua_script('dwh_out.DWH_UTILITY_COPYDWTZUSATZINFOMONAT','-1', dryrun=True)
  assert stmt == "execute script dwh_out.DWH_UTILITY_COPYDWTZUSATZINFOMONAT ('-1') with output;"
```

# unittest
```python
import unittest


```

# Code coverage
* https://blog.miguelgrinberg.com/post/how-to-write-unit-tests-in-python-part-1-fizz-buzz

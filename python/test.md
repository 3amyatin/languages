# PyCharm
* https://www.jetbrains.com/help/pycharm/testing-your-first-python-application.html

# Template
* https://blog.miguelgrinberg.com/post/how-to-write-unit-tests-in-python-part-1-fizz-buzz

# pytest
* https://www.jetbrains.com/help/pycharm/pytest.html
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

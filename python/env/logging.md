* [How to log in Python like a PRO 🐍🌴](https://blog.guilatrova.dev/how-to-log-in-python-like-a-pro/)
* https://www.palkeo.com/en/blog/python-logging.html

```python
import logging

logger = logging.getLogger(__name__)

def myfunc():
    ...
    logger.info("Something relevant happened")
    ...
```

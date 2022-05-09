#Scopes
LEGB
* locals
* enclosing
* globals
* builtin

Чтение переменной работает по LEGB
Присваивание создает всегда переменную на местном уровне

# Global assignment
var = 4
def f():
  global var
  var += 1



globals()
locals()

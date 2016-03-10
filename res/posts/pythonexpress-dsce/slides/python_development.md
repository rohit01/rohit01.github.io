title: Python Development
author:
  name: Rohit Gupta
  twitter: rohit01
  url: http://www.rohit.io
output: python_development.html

---
# Python Development

---
### Topics

* **Working With Files**
* Errors and Exceptions
* Debugging
* Running Python Scripts

---
### Working With Files

```python
In [1]: f = open('foo.txt', 'r')                 # open a file in read mode

In [2]: print f.read()                           # Read full content
# Try this in Python shell
import this

In [3]: f = open('foo.txt', 'w')                 # open a file in write mode
In [4]: f.write('Hello World')
In [5]: f.close()

In [6]: print open('foo.txt', 'r').read()
Hello World

In [7]: f = open('foo.txt', 'a')                 # open a file in append mode
In [8]: f.write("\nPython is Awesome")
In [9]: f.close()

In [10]: print open('foo.txt', 'r').read()
Hello World
Python is Awesome
```

---
### Files - Useful Methods

```python
In [1]: open('foo.txt').readlines()             # Returns list of lines
Out[1]: ['Hello World\n', 'Python is Awesome']

In [2]: f = open('foo.txt')
In [3]: f.readline()                            # Returns first line
Out[3]: 'Hello World\n'
In [4]: f.readline()                            # Returns second line
Out[4]: 'Python is Awesome'
In [5]: f.readline()                            # Returns third line (absent)
Out[5]: ''

In [6]: f = open('foo.txt', 'a')
In [7]: f.writelines(['\nThird line', '\nFourth line'])
In [8]: f.close()
In [9]: print open('foo.txt', 'r').read()
Hello World
Python is Awesome
Third line
Fourth line
```

---
### Files - Example usage

```python
In [1]: def charcount(filename):
   ...:         return len(open(filename).read())
   ...: 

In [2]: def wordcount(filename):
   ...:         return len(open(filename).read().split())
   ...: 

In [3]: def linecount(filename):
   ...:         return len(open(filename).readlines())
   ...: 

In [4]: charcount('foo.txt')
Out[4]: 52

In [5]: wordcount('foo.txt')
Out[5]: 9

In [6]: linecount('foo.txt')
Out[6]: 4
```

---
### Files - Exercise

Write a function index(<filename>) to print the content of a file with line
numbers. Sample execution:

```python
In [1]: print open('foo.txt').read()
Hello World
Python is Awesome
Third line
Fourth line

In [2]: index('foo.txt')
1. Hello World
2. Python is Awesome
3. Third line
4. Fourth line
```

---
### Files - Solution

```python
In [1]: def index(filename):
   ...:     lineno = 1
   ...:     with open(filename) as f:
   ...:         for line in f:
   ...:             print("%s. %s" % (lineno, line)),
   ...:             lineno += 1
   ...:             

In [2]: index('foo.txt')
1. Hello World
2. Python is Awesome
3. Third line
4. Fourth line
```

---
### Topics

* ~~Working With Files~~
* **Errors and Exceptions**
* Debugging
* Running Python Scripts

---
### Errors and Exceptions

```python
In [1]: foo
NameError: name 'foo' is not defined

In [2]: "foo" + 2
TypeError: cannot concatenate 'str' and 'int' objects

In [3]: 2/0
ZeroDivisionError: integer division or modulo by zero

In [4]: open("not-there.txt")
IOError: [Errno 2] No such file or directory: 'not-there.txt'

In [5]: [1, 2, 4][20]
IndexError: list index out of range
```

---
### Exception Handling - try...except

```python
# catch all exceptions
try:
    ...
except:
    ...
# catch just one exception
try:
    ...
except IOError:
    ...
# catch one exception, but provide the exception object
try:
    ...
except IOError, e:
    ...
# catch more than one exception
try:
    ...
except (IOError, ValueError), e:
    ...
```

---
### Throwing Exceptions

```python
In [1]: def f1():
   ...:     f2()

In [2]: def f2():
   ...:     try:
   ...:         f3()
   ...:     except Exception as e:
   ...:         print "Exception while executing f3(). Message: %s" % e.message

In [3]: def f3():
   ...:     f4()

In [4]: def f4():
   ...:     raise Exception("Exception occured in f4()")

In [5]: f1()
Exception while executing f3(). Message: Exception occured in f4()
```

---
### Topics

* ~~Working With Files~~
* ~~Errors and Exceptions~~
* **Debugging**
* Running Python Scripts

---
### Debugging - pdb

```python
In [1]: def factorial(num):
   ...:     import pdb; pdb.set_trace()
   ...:     if num < 0:
   ...:         raise ValueError("Cannot calculate factorial for -ve numbers")
   ...:     elif num in (0, 1):
   ...:         return 1
   ...:     else:
   ...:         return num * factorial(num - 1)

In [2]: factorial(3)
> <ipython-input-1-91b88232d570>(3)factorial()
-> if num < 0:
(Pdb) n
> <ipython-input-1-91b88232d570>(5)factorial()
-> elif num in (0, 1):
(Pdb) n
> <ipython-input-1-91b88232d570>(8)factorial()
-> return num * factorial(num - 1)
(Pdb) c
     ....
Out[3]: 6
```

---
### Topics

* ~~Working With Files~~
* ~~Errors and Exceptions~~
* ~~Debugging~~
* **Running Python Scripts**

---
### Python scripts - Stand-alone programs

```python
#!/usr/bin/env python

f_num = 15                           # Global variable: Default number

def factorial(num):
    """
    Function to return factorial of a number
    """
    if num < 0:
        raise ValueError("Cannot calculate factorial for -ve numbers")
    elif num in (0, 1):
        return 1
    else:
        return num * factorial(num - 1)

if __name__ == "__main__":      # To prevent execution while importing module
    print factorial(f_num)
```

---
# Questions?

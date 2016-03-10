title: Python Basics
author:
  name: Rohit Gupta
  twitter: rohit01
  url: http://www.rohit.io
output: python_basics.html

---
# Python Basics

---
### Topics

* Hello World
* Basic data types
 * Numbers
 * Booleans
 * Strings
* Operators
* Simple IO
* Basic conditional flow
* Exercise

---
### Hello World!

##### IPython Shell

```python
In [1]: print "Hello World!"                 # Works on python 2.x
Hello World!

In [2]: print("Hello World!")                # Works on python 2.x, 3.x
Hello World!
```

---
### Hello World!

##### File: hello_world.py

```python
#!/usr/bin/env python

print("Hello World!")
```

##### Execute

```bash
$ python hello_world.py
Hello World!

$ chmod +x hello_world.py
$ ./hello_world.py
Hello World!
```

---
### Topics

* ~~Hello World~~
* **Basic data types**
 * **Numbers**
 * Booleans
 * Strings
* Operators
* Simple IO
* Basic conditional flow
* Exercise

---
### Numbers

##### 1. Int - whole number, no matter what the size!

```python
In [1]: a = 2014

In [2]: a
Out[2]: 2014

In [3]: b = 9999999999999999999999999999999999999999

In [4]: b
Out[4]: 9999999999999999999999999999999999999999L
```

---
### Numbers

##### 2. Float

```python
In [1]: a = 3.14159

In [2]: a
Out[2]: 3.14159

In [3]: b = 9876543210.123456789

In [4]: b
Out[4]: 9876543210.123457

In [5]: c = 1111111113333333333999999999999.1234

In [6]: c
Out[6]: 1.1111111133333333e+30
```

---
### Numbers

##### 3. Complex numbers

```python
In [1]: c = 3 + 4j

In [2]: c
Out[2]: (3+4j)

In [3]: abs(c)
Out[3]: 5.0

In [4]: c.imag
Out[4]: 4.0

In [5]: c.real
Out[5]: 3.0
```

---
### Topics

* ~~Hello World~~
* **Basic data types**
 * ~~Numbers~~
 * **Booleans**
 * Strings
* Operators
* Simple IO
* Basic conditional flow
* Exercise

---
### Booleans

```python
In [1]: t = True

In [2]: f = not t

In [3]: f or t
Out[3]: True

In [4]: f and t
Out[4]: False

In [5]: a = False

In [6]: b = True

In [7]: c = True

In [8]: (a and b) or c
Out[8]: True

In [9]: a and (b or c)
Out[9]: False
```

---
### Topics

* ~~Hello World~~
* **Basic data types**
 * ~~Numbers~~
 * ~~Booleans~~
 * **Strings**
* Operators
* Simple IO
* Basic conditional flow
* Exercise

---
### Strings

"Hello World!" ---> String

```python
In [1]: s = "Hello Strings!"

In [2]: print(s)
Hello Strings!

In [3]: print(s[0] + s[9] + " Guys!")
Hi Guys!

In [4]: len(s)
Out[4]: 14

In [5]: s.index('i')
Out[5]: 9

In [6]: "String" == 'String' == """String""" == '''String'''
Out[6]: True
```

---
### Strings

##### Strings are immutable (cannot be changed)

```python
In [1]: s = "This is a string"

In [2]: s[5] = 'N'
```

```
    ---------------------------------------------------------------------------
    TypeError                                 Traceback (most recent call last)
    <ipython-input-2-fd292d5d9b41> in <module>()
    ----> 1 s[5] = 'N'

    TypeError: 'str' object does not support item assignment
```

---
### String Methods

```python
In [1]: a = 'Hello World'

In [2]: a.startswith('Hell')
Out[2]: True

In [3]: a.endswith('ld')
Out[3]: True

In [4]: a.upper()
Out[4]: 'HELLO WORLD'

In [5]: a.lower()
Out[5]: 'hello world'

In [6]: a.<<press Tab twice>>
a.capitalize  a.encode      a.format      a.isdigit     a.isupper     a.lstrip
a.rindex      a.rstrip      a.strip       a.upper       a.center      a.endswith
a.index       a.islower     a.join        a.partition   a.rjust       a.split
a.swapcase    a.zfill       a.count       a.expandtabs  a.isalnum     a.isspace
a.ljust       a.replace     a.rpartition  a.splitlines  a.title       a.decode
a.find        a.isalpha     a.istitle     a.lower       a.rfind       a.rsplit
a.startswith  a.translate
```

---
### IPython Shell --> How to get help

```python
In [1]: a = "roHIt gUPTa"
```

```python
In [2]: a.title?
Type:        builtin_function_or_method
String form: <built-in method title of str object at 0x7f1122e0a4b0>
Docstring:
S.title() -> string

Return a titlecased version of S, i.e. words start with uppercase
characters, all remaining cased characters have lowercase.
```

```python
In [3]: a.title()
Out[3]: 'Rohit Gupta'
```

---
### String Formatting

```python
In [1]: x, y = 1, 1.234

In [2]: "x is %s, y is %s" % (x, y)
Out[2]: 'x is 1, y is 1.234'

In [3]: "x is %d, y is %f" % (x, y)
Out[3]: 'x is 1, y is 1.234000'

In [4]: "x is %d, y is %.1f" % (x, y)
Out[4]: 'x is 1, y is 1.2'
```

Details: [click here](https://docs.python.org/2/library/stdtypes.html#string-formatting-operations)

---
### Topics

* ~~Hello World~~
* ~~Basic data types~~
 * ~~Numbers~~
 * ~~Booleans~~
 * ~~Strings~~
* **Operators**
* Simple IO
* Basic conditional flow
* Exercise

---
### Operators -- math

```python
In [1]: 1786 % 12             # Mod operator
Out[1]: 10

In [2]: 45 % 2
Out[2]: 1

In [3]: 864675 % 10
Out[3]: 5

In [4]: 3124 * 126789         # Multiplication
Out[4]: 396088836

In [5]: 2 ** 3                # Exponent
Out[5]: 8

In [6]: big = 1234567891234567890 ** 3

In [7]: verybig = big * big * big * big
```

---
### Operators -- math

```python
In [8]: 17 / 2                # Division
Out[8]: 8

In [9]: 17 / 2.0
Out[9]: 8.5

In [10]: 17.0 / 2
Out[10]: 8.5

In [11]: 17.0 / 8.5
Out[11]: 2.0

In [12]: a = 7546

In [13]: a += 1               # -=, *=, /=, %=, **= also available

In [14]: a
Out[14]: 7547
```

---
### Operators -- strings

```python
In [18]: s = "Hello"

In [19]: p = "World"

In [20]: s + p
Out[20]: 'HelloWorld'

In [21]: s * 4
Out[21]: 'HelloHelloHelloHello'
```

```python
    In [22]: s * s
    ---------------------------------------------------------------------------
    TypeError                                 Traceback (most recent call last)
    <ipython-input-22-d39d6d7c295f> in <module>()
    ----> 1 s * s

    TypeError: can't multiply sequence by non-int of type 'str'
```

---
### Operators -- comparision

```python
In [23]: p, z, n = 1, 0, -1

In [24]: p == n
Out[24]: False

In [25]: p >= n
Out[25]: True

In [26]: n < z < p
Out[26]: True

In [27]: p + n != z
Out[27]: False
```

---
### Operators -- builtin functions

```python
In [28]: int(17 / 2.0)
Out[28]: 8

In [29]: float(17 / 2)
Out[29]: 8.0

In [30]: str(17 / 2.0)
Out[30]: '8.5'

In [31]: round( 7.5 )
Out[31]: 8.0
```

---
### Topics

* ~~Hello World~~
* ~~Basic data types~~
 * ~~Numbers~~
 * ~~Booleans~~
 * ~~Strings~~
* ~~Operators~~
* **Simple IO**
* Basic conditional flow
* Exercise

---
### Simple IO

```python
In [1]: a = raw_input()                     # raw_input() waits for user input.
100

In [2]: a
Out[2]: '100'

In [3]: a = raw_input('Enter a value: ')    # Prompt string is optional.
Enter a value: 500                          # All keystrokes are Strings!

In [4]: a = int(a)                          # int() converts string to int.

In [5]: a
Out[5]: 500

In [6]: print(a)                            # Output in stdout (terminal)
500

In [7]: %run -i hello_world.py              # Execute python file
Hello World!
```

---
### Topics

* ~~Hello World~~
* ~~Basic data types~~
 * ~~Numbers~~
 * ~~Booleans~~
 * ~~Strings~~
* ~~Operators~~
* ~~Simple IO~~
* **Basic conditional flow**
* Exercise

---
### Basic conditional flow

##### if ... elif ... else

```python
In [1]: x = int(raw_input("Enter an integer: "))
Enter an integer: 5

In [2]: if x < 0:
   ...:     print 'Be positive!'
   ...: elif x == 0:
   ...:     print 'Zero'
   ...: elif x == 1:
   ...:     print 'Single'
   ...: else:
   ...:     print 'More'
   ...: 
More
```

---
### Topics

* ~~Hello World~~
* ~~Basic data types~~
 * ~~Numbers~~
 * ~~Booleans~~
 * ~~Strings~~
* ~~Operators~~
* ~~Simple IO~~
* ~~Basic conditional flow~~
* **Exercise**

---
### Exercise

##### Write a program to calculate max or three numbers. Numbers can be of type int, float and complex.

##### Sample Input

```python
In [1]: a, b, c = 4, 5.2, 3+4j
```

---
### Hint - Max of three numbers

```python
In [1]: type(1)
Out[1]: int

In [2]: type(1.1)
Out[2]: float

In [3]: type(1.1+2.2j)
Out[3]: complex

In [4]: isinstance(1, int)
Out[4]: True

In [5]: isinstance(1.1, float)
Out[5]: True

In [6]: isinstance(1.1+2.2j, complex)
Out[6]: True

In [7]: abs(1.1+2.2j)
Out[7]: 2.459674775249769
```

---
### Solution

```python
In [1]: a, b, c = 4, 5.2, 3+4j

In [2]: max = a

In [3]: if abs(max) < abs(b):
   ...:     max = b
   ...:     

In [4]: if abs(max) < abs(c):
   ...:     max = c
   ...:     

In [5]: print(max)
5.2
```

---
# Questions?

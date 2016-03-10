title: Data Structures and Functions
author:
  name: Rohit Gupta
  twitter: rohit01
  url: http://www.rohit.io
output: ds_and_functions.html

---
# Data Structures and Functions

---
### Topics

* **Data Structures**
 * **Lists**
 * Tuples
 * Dictionaries
 * Sets
* Control Flow
 * Basic Looping
* Functions

---
### DS - Lists

```python
In [1]: l = [1, 2, 3, 4, 5]

In [2]: l
Out[2]: [1, 2, 3, 4, 5]

In [3]: type(l)
Out[3]: list

In [4]: isinstance(l, list)
Out[4]: True

In [5]: l2 = [1, 1.1, "Hello", [1, 2, [11], [], 3], 3+4j]

In [6]: l2
Out[6]: [1, 1.1, 'Hello', [1, 2, [11], [], 3], (3+4j)]

In [7]: isinstance(l2, list)
Out[7]: True
```

---
### DS - Lists: Methods

```python
In [1]: num = [1, 2, 3, 4]

In [2]: num + [9, 10, 11]
Out[2]: [1, 2, 3, 4, 9, 10, 11]

In [3]: num.append([9, 10, 11])

In [4]: num
Out[4]: [1, 2, 3, 4, [9, 10, 11]]

In [5]: num.extend([5, 6, 7])

In [6]: num
Out[6]: [1, 2, 3, 4, [9, 10, 11], 5, 6, 7]

In [7]: num.remove(6)

In [8]: num
Out[8]: [1, 2, 3, 4, [9, 10, 11], 5, 7]
```

---
### DS - Lists: Methods

```python
In [1]: num = [1, 2, 3, 4, 5]

In [2]: num.<<press Tab twice>>
num.append   num.count    num.extend   num.index    num.insert   num.pop
num.remove   num.reverse  num.sort     

In [2]: num.reverse()

In [3]: num
Out[3]: [5, 4, 3, 2, 1]

In [4]: num.sort()

In [5]: num
Out[5]: [1, 2, 3, 4, 5]

In [6]: num.pop(4)
Out[6]: 5

In [7]: num
Out[7]: [1, 2, 3, 4]
```

---
### DS - Lists: Slicing - list[initial:final]

```python
In [1]: num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

In [2]: num[2:5]
Out[2]: [3, 4, 5]

In [3]: num[1:-1]
Out[3]: [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

In [4]: num[10:]
Out[4]: [11, 12, 13, 14, 15]

In [5]: num is num[:]
Out[5]: False

In [6]: num == num[:]
Out[6]: True
```

---
### DS - Lists: Slicing - list[initial:final:step]

```python
In [1]: num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

In [2]: num[0:10:2]
Out[2]: [1, 3, 5, 7, 9]

In [3]: num[4::5]
Out[3]: [5, 10, 15]

In [4]: num[1:-1:2]
Out[4]: [2, 4, 6, 8, 10, 12, 14]

In [5]: num[::2]
Out[5]: [1, 3, 5, 7, 9, 11, 13, 15]

In [6]: num[-1::-1]
Out[6]: [15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
```

---
### DS - Lists: Containership

```python
In [1]: num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
In [2]: 5 in num
Out[2]: True

In [3]: b = 50
In [4]: b in num
Out[4]: False
In [5]: b not in num
Out[5]: True

In [6]: num.index(5)
Out[6]: 4
```

```python
 In [7]: num.index(b)
 ---------------------------------------------------------------------------
 ValueError                                Traceback (most recent call last)
 <ipython-input-6-ae39464d295c> in <module>()
 ----> 1 num.index(b)
 
 ValueError: 50 is not in list
```

---
### Topics

* **Data Structures**
 * ~~Lists~~
 * **Tuples**
 * Dictionaries
 * Sets
* Control Flow
 * Basic Looping
* Functions

---
### DS - Tuples: Intro

```python
In [1]: l = (1, 2, 3, 4, 5)

In [2]: l
Out[2]: (1, 2, 3, 4, 5)

In [3]: type(l)
Out[3]: tuple

In [4]: isinstance(l, tuple)
Out[4]: True

In [5]: l2 = (1, 1.1, "Hello", (1, (11), (), 3), 3+4j, [1, 2, [3, [4, 5]]])

In [6]: l2
Out[6]: (1, 1.1, 'Hello', (1, 11, (), 3), (3+4j), [1, 2, [3, [4, 5]]])

In [7]: isinstance(l2, tuple)
Out[7]: True
```

---
### DS - Tuples: Immutable lists

```python
In [1]: l = (1, 2, 3, 4, 5)

In [2]: l[1]
Out[2]: 2
```

```python
 In [3]: l[1] = 4
 ---------------------------------------------------------------------------
 TypeError                                 Traceback (most recent call last)
 <ipython-input-2-135240e0d2ea> in <module>()
 ----> 1 l[1] = 4
 
 TypeError: 'tuple' object does not support item assignment
```

---
### DS - Tuple: Methods

```python
In [1]: num = (1,2,1,2,1)

In [2]: num.<<press Tab twice>>
num.count    num.index

In [3]: num.count(1)
Out[3]: 3

In [4]: num.index(2)
Out[4]: 1

In [5]: num.index(1)
Out[5]: 0
```

---
### DS - Tuple: Slicing
#### Same as that of lists

### DS - Tuple: Containership
#### Same as that of lists

---
### Topics

* **Data Structures**
 * ~~Lists~~
 * ~~Tuples~~
 * **Dictionaries**
 * Sets
* Control Flow
 * Basic Looping
* Functions

---
### DS - Dictionaries

```python
In [1]: player = {'Mat': 134, 'Inn': 233, 'Runs': 10823, 'Avg': 52.53}

In [2]: player['Avg']
Out[2]: 52.53

In [3]: 'Inn' in player
Out[3]: True

In [4]: 233 in player                  # Containership is based on keys
Out[4]: False

In [5]: player.keys()
Out[5]: ['Runs', 'Inn', 'Avg', 'Mat']

In [6]: player.values()
Out[6]: [10823, 233, 52.53, 134]

In [7]: player.items()
Out[7]: [('Runs', 10823), ('Inn', 233), ('Avg', 52.53), ('Mat', 134)]
```

---
### Topics

* **Data Structures**
 * ~~Lists~~
 * ~~Tuples~~
 * ~~Dictionaries~~
 * **Sets**
* Control Flow
 * Basic Looping
* Functions

---
### DS - Sets

```python
In [1]: set1 = set([8, 2, 2, 3, 5, 1])          # Simplest container, mutable

In [2]: set2 = {2, 3, 5, 7}

In [3]: set1
Out[3]: {1, 2, 3, 5, 8}                         # No ordering, no duplicates

In [4]: set1 | set2, set1.union(set2)           # Union
Out[4]: ({1, 2, 3, 5, 7, 8}, {1, 2, 3, 5, 7, 8})

In [5]: set1 & set2, set1.intersection(set2)    # Intersection
Out[5]: {2, 3, 5}

In [6]: set1 - set2, set1.difference(set2)      # Set Difference
Out[6]: ({1, 8}, {1, 8})

In [7]: set1 ^ set2, set1.symmetric_difference(set2)    # Symmetric Difference
Out[7]: ({1, 7, 8}, {1, 7, 8})
```

---
### DS - Sets

```python
In [1]: set1 = set([8, 2, 3, 5, 1])

In [2]: set2 = {2, 3, 5, 7}

In [3]: set([2,3]) < set2
Out[3]: True

In [4]: set([2,3]) <= set2
Out[4]: True

In [5]: 2 in set2
Out[5]: True

In [6]: 4 in set2
Out[6]: False

In [7]: len(set1)
Out[7]: 5
```

---
### Topics

* ~~Data Structures~~
 * ~~Lists~~
 * ~~Tuples~~
 * ~~Dictionaries~~
 * ~~Sets~~
* **Control Flow**
 * **Basic Looping**
* Functions

---
### While loop - Fibonacci series

```python
In [1]: a, b = 0, 1

In [2]: while a < 10:
   ...:     print a,
   ...:     a, b = b, a + b
   ...:     
0 1 1 2 3 5 8
```

---
### Function - range([start,] stop[, step])

```python
In [1]: range(10)
Out[1]: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]      # Returns a list of integers

In [2]: range(5, 10)                        # Start argument is being used
Out[2]: [5, 6, 7, 8, 9]                     # Start inclusive, stop exclusive

In [3]: range(5, 10, 2)                     # Step argument is being used
Out[3]: [5, 7, 9]

In [4]: range(10, 1, -2)                    # Negative values allowed
Out[4]: [10, 8, 6, 4, 2]

In [5]: range(10, 20, -2)
Out[5]: []                                  # Empty as 10 < 20
```

---
### For loop - Square of First Five Numbers

```python
In [1]: for i in range(1, 6):
   ...:     print("%s: %s" % (i, i*i))
   ...:     
1: 1
2: 4
3: 9
4: 16
5: 25
```

---
### For loop - Square of odd numbers from 3 to 9

```python
In [1]: for i in range(3, 10, 2):
   ...:     print("%s: %s" % (i, i*i))
   ...:     
3: 9
5: 25
7: 49
9: 81
```

---
### Exercise

Write a program that displays all three digit numbers
that are equal to the sum of the cubes of their digits.
That is, print numbers abc that have the property

abc = a<sup>3</sup> + b<sup>3</sup> + c<sup>3</sup>

> These are called **Armstrong Numbers**.

---
### Solution - Armstrong Numbers

```python
In [1]: for i in range(100, 1000):
   ...:     if i == ((i%10)**3 + ((i/10)%10)**3 + ((i/100)%10)**3):
   ...:         print i
   ...:         
153
370
371
407
```

---
### Topics

* ~~Data Structures~~
 * ~~Lists~~
 * ~~Tuples~~
 * ~~Dictionaries~~
 * ~~Sets~~
* ~~Control Flow~~
 * ~~Basic Looping~~
* **Functions**

---
### Functions: Definition

```python
def <function_name>([arg1, arg2, arg3, ...]):       # def --> Reserved keyword
    """
    [Docstring]
    """
    <logic>
    [return <value>]
```

---
### Function - Fibonacci Series

```python
In [1]: def fibonacci(max):
   ...:     """
   ...:     Function to generate fibonacci series till a max value
   ...:     Arguments:
   ...:        max: Maximum value of the last item. Type: int
   ...:     """
   ...:     a, b = 0, 1
   ...:     f_list = []
   ...:     while a <= max:
   ...:         f_list.append(a)
   ...:         a, b = b, a + b
   ...:     return f_list
   ...: 

In [2]: f_list = fibonacci(100)

In [3]: print f_list
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
```

---
### Functions - Default & Keyword arguments

```python
In [1]: def welcome(greet, name="World"):
   ...:     print greet, name
   ...:     

In [2]: welcome("Hello")
Hello World

In [3]: welcome("Hi", "Guido")
Hi Guido

In [4]: welcome(name="Guido", greet="Hey")         # Using keyword arguments
Hey Guido
```

---
### Functions - Recursion

```python
In [1]: def factorial(num):
   ...:     if num < 0:
   ...:         raise ValueError("Cannot calculate factorial for -ve numbers")
   ...:     elif num in (0, 1):
   ...:         return 1
   ...:     else:
   ...:         return num * factorial(num - 1)
   ...:     

In [2]: factorial(0)
Out[2]: 1

In [3]: factorial(5)
Out[3]: 120

In [4]: try:
   ...:     factorial(-5)
   ...: except ValueError as ve:
   ...:     print(ve.message)
   ...:     
Cannot calculate factorial for -ve numbers
```

---
### Functions - Exercise

##### Write a function to return the gcd of two numbers.

---
### Solution - GCD

```python
In [1]: def gcd(num1, num2):
   ...:     while num2:
   ...:         num1, num2 = num2, num1 % num2
   ...:     return num1
   ...: 

In [2]: print(gcd(27, 99))
9

In [3]: print(gcd(15, 65))
5

In [4]: print(gcd(16, 76))
4
```

---
# Questions?

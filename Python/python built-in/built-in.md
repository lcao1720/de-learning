#### Functions

##### append()
    modify the original list
##### eval()
- FIRST ARGUMENT: expression
    - evaluates specific expression and execute
    - compound statement is not allowed, it only accept expressions, `for, while, import, def, class` will raise an error
    
    ```
     	x=100
     	eval("if x: print(x)")
    ```
    
    - assignment aren't allowed either
    
    ```
     	eval("pi=3.1416")
    ```
    - compile() is allowed
```
>>> # Arithmetic operations
>>> code = compile("5 + 4", "<string>", "eval")
>>> eval(code)
9
>>> code = compile("(5 + 7) * 2", "<string>", "eval")
>>> eval(code)
24
>>> import math
>>> # Volume of a sphere
>>> code = compile("4 / 3 * math.pi * math.pow(25, 3)", "<string>", "eval")
>>> eval(code)
65449.84694978735
```

- SECOND ARGUMENT: globals
```
>>> x = 100  # A global variable
>>> eval("x + 100", {"x": x})
200
>>> y = 200  # Another global variable>>> eval("x + y + z", {"x": x, "y": y, "z": 300})
600
```

- THIRD ARGUMENT: locals
	local names are those names (variables, functions, classes) that are defined inside a given function
```
>>> eval("x + 100", {}, {"x": 100})
200
```

- Example usage:
```
def func(a, b, condition):
	if eval(condition):
		return <calculation1>
	return <calculation2>
```
where the condition can be something directly written as a comparison, or many other types of operations (maths, comparison, boolean)

- 
##### getattr()
- in web developments, optional form attributes
- ML feature collection cases, where features go missing at times in data collection
	- `from sklearn.impute import SimpleImputer`: to fill missing values with the mean
	- good to use getattr(class_name, feature_name)

##### join()

##### common functions
	- lower()
	- upper()
	- min()
	- max()
	- range()
	- round()

##### range()

##### reduce()

##### replace()

##### slice()

##### sorted()

##### strip()






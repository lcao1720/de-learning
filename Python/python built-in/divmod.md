get quotient and remainder at the same time
```
q, mod = divmod(10, 3)
print(q, mod)
# 3 1
```

- Use case:
	- for leetcode like "check happy number", reverse the integer etc,
	- get each digit from a number and implement
- Normal usage
	- ```while
``` 
# assume input num>0
# reverse integer
ret = 0
while num>0:
	num, mod = divmod(num, 10)
	ret = ret*10+mod	
```
	

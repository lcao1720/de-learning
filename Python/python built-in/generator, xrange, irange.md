`from iter import irange`

- when to use `yield`?
- We should use yield **when we want to iterate over a sequence, but don't want to store the entire sequence in memory**. Yield is used in Python generators. A generator function is defined just like a normal function, but whenever it needs to generate a value, it does so with the yield keyword rather than return
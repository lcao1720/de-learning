`from iter import irange`

- when to use `yield`?
- We should use yield **when we want to iterate over a sequence, but don't want to store the entire sequence in memory**. Yield is used in Python generators. A generator function is defined just like a normal function, but whenever it needs to generate a value, it does so with the yield keyword rather than return

## Generator
### What is **generator**?

```
- iterable objects
- keep states between calls (remember a place in a sequence w/o holding entire sequence in memory)
- save memory, in exchange of slower than other iterables (tradeoff)
```

Generators allow to split the large memory items into small chunks and one at a time
- trade off between memory and speed
- generator function remembers where it left off, it is called "**state**", it can keep state between calls, keep track of condition

multiple yield statements?
- each call of next(generator_func) will run until reaching the next `yeild` and stop and wait

generator exhausted?
- means it reaches the end of the value it can yield
- They will raise the exception: ```Traceback StopIteration```
- normally cannot see it because the stopIteration is being called by **break**s


generator expression vs list
- (num**2 for num in range(5)) - longer, but smaller memory footprint
- [num**2 for num in range(5)] 
- check memory it takes by 
	```sys.getsizeof(object)```

- [cProfile](https://subscription.packtpub.com/book/programming/9781787282896/1/ch01lvl1sec05/finding-bottlenecks-with-cprofile) to help comparison

![[generator_func_expr.png]]

### Advanced generators

#### Streaming Data Processing
By chaining together multiple generator functions, you can create efficient data processing pipelines.
```
import csv

def read_csv(file_path):
    with open(file_path, 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            yield row

def process_data(rows):
    for row in rows:
        # Perform some processing on the row
        yield row

def write_csv(rows, output_path):
    with open(output_path, 'w') as file:
        writer = csv.writer(file)
        for row in rows:
            writer.writerow(row)

input_file = "large_data.csv"
output_file = "processed_data.csv"

rows = read_csv(input_file)
processed_rows = process_data(rows)
write_csv(processed_rows, output_file)
```


#### Asynchronous Task Execution
```
import aiohttp
import asyncio

async def fetch(url):
    async with aiohttp.ClientSession() as session:
        async with session.get(url) as response:
            return await response.text()

async def main():
    urls = ["https://example.com", "https://example.org", "https://example.net"]
    tasks = [fetch(url) for url in urls]

    responses = await asyncio.gather(*tasks)
    for response in responses:
        print(response[:100])

asyncio.run(main())
```


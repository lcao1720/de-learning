**https://pymotw.com/3/

#### Enum
- IntEnum - used for enumerations where members need to behave more like numbers, so that sorted(MyEnumClass) works, and logic is sort ascending by each members' value
- "unique" enum values - if ever there are 2 members showing the same value, then MyEnumClass.memberA is MyEnumClass.memberB. 
	To fix, add @unique decorator to the Enum
		```
		from enum import Enum, unique
		@unique
		class Status(Enum):
			.....

- creating Enums programmatically


#### Collections - container data types
`import collections
- `collections.ChainMap(a,b): add new dict
	- mutable, the change to one value of a key will change the following result of showing value.
- `collections.Counter()`
	- arithmetic of dict
- `collections.defaultdict(default_function, foo='bar')`
	- meaning if fail, use default_function, else do foo='bar'
- `collections.deque()
	- `d = collections.deque(range(10))`
	- `d.rotate(2)`, deque([8,9,0,1,2,....7]), right end to the "LEFT"
	- `d.rotate(-2)`, 
- `collections.OrderedDict()`
	- before python 3.5, needs d=collections.OrderedDict() to give an ordered sequence
	- 

#### array

#### heapq - Heap Sort Algorithm

#### bisect - Maintain Lists in sorted order
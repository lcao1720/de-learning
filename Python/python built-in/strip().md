The default is "any whitespace".
So for the test of return a string's words inversely, the easiest is to directly `strip()` instead of specify strip delimiter.

```
class Solution:

	def reverseWords(self, s: str) -> str:
	
		# words = s.strip().split(" ")
		
		# non_space_words = []
		
		# for i in words:
		
		# if i.strip()!="":
		
		# non_space_words.append(i.strip())
		
		# # print(non_space_words)
		
		# return " ".join(non_space_words[::-1])
		
		return " ".join(s.split()[::-1])
```

1. Difference between list and tuple
2. immutable
	1. ![[IMG_2097.heic]]
	2. ![[IMG_2098.heic]]

3. python generator, when to use
4. garbage collection
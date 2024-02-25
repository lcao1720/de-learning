- `ipdb` https://pypi.org/project/ipdb/

	- **n[ext]** : `n` simply continues program execution to the next line in the current method
	    
	- **s[tep]** : `s` steps to the very next line of executable code, whether it is inside a called method or just on the next line

	On a line where a method is being called, `n` will “step over” the method execution code while `s` will “step into” the method execution code allowing you to introspect the method code.

	- **w[here]** : `w` prints a stack trace, with the most recent frame at the bottom. An arrow indicates the “current frame”, which determines the context of most commonds.
	    
	- **b[reak]** _([filename:]lineno|function)_ : `b` ddds breakpoints to the specified locations. Example usage:
	    
	    - `b sample-filename.py:<line no>`
	    - `b <function>`
	    - `b <lineno>` (for the current file)
	- **c[ontinue]** : `c` continues program execution until another breakpoint is hit or the program execution completes
	    
	- **a[rgs]** : `a` prints out all the arguments the current function received
	    
	- **r[eturn]** : `r` continues execution until the current function returns

In case you are already using variables with names such as `c`, `a` use complete command `continue`, `args` to get desired operation.
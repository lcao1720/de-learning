- Use `assert` statement to test if the self defined function works as expected.
- the function is not run with normal python script, but 
	```
	pytest abc.py
	```

- `fixtures`
- test cases
- `mock`

Each unit test is basically a function, run 
```
pytest
```
in the directory, it should be able to find all the available tests -- **how does python identify all the tests?** --by naming convention.

1. create the test `.py` starting with `test_xxx`, or ending with `_test`
2. even the test functions need to have the same naming convention, specify the certain test with 
	`pytest file.py::function_name -s`
	The `-s` in the end enables pytest to print all the `pinrt()` 
3. from xxx import ClassToTest
```def test_can_add_item():
		cart=ClassToTest()
		cart.add('apple')
		assert cart.size()==1
```
4. with pytest.raises(Error), test will pass when it actually raises the specified error. But be careful about the test case, it should be only the edge case (e.g test cannot add more items, it should test for the past N item works but only fails on N+1) to capture more errors (if ever N-1 already failed, the "to N" can capture it).
5. **how to reduce duplicate code while setting up test cases?** `fixtures`! initialize baseline instance. Good for database connections to get some data in the test....
```
@pytest.fixtures
def xxxx_name():

# pass in fixture in each test
def test_xxxx(xxxx_name):
	pass
```
it also create new instances when it runs each task, actually not reuse the fixtures.

6. mock dependencies, use `unittest.mock`
e.g for `random()`, some modules that comes from another team, etc.
```
value=Mock(side_effect =mock_function(passed_value))
```

# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2.

_Include the name of the method, its parameters, return value, and side effects._

```ruby

todo_tracker(text)

(text) is a string with words.
todo_tracker returns true or false if the method finds "#TODO" in a text.

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

todo_tracker("") => error
todo_tracker("#TODO") => true
todo_tracker("text does not include #TODO") => false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

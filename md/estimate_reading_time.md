# {{PROBLEM}} Method Design Recipe



## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
reading_time = estimate_reading_time(text)

(text) is a sting with words
reading_time is a result that represents a number which would mean minutes.

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

1. estimate_reading_time("")
=> 0

2. estimate_reading_time("Two hundred words")
=> 1

3. estimate_reading_time("Three hundred words")
=> 2

4. estimate_reading_time("Four hundred words")
=> 2

5. estimate_reading_time("Two hundred words")
=> 2



# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

check_grammer = grammer_checker(text)

(text) is a sting with words.
check_grammer is a boolean to check if capitals and punctuations are there or not.

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

1. grammer_checker("") #fail "Not a sentence."

2. grammer_checker("Hello, coders i can use correct grammer.")  => true

3. grammer_checker("hello, coders i make mistakes.")  => false

4. grammer_checker("hello, coders i make mistakes")  => false

5. grammer_checker("HELLO, coders i can use correct grammer.")  => true

6 grammer_checker("Hello, coders i can use correct grammer?")  => true


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

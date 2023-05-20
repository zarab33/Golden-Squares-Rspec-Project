# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._
class Todolist

```ruby
# EXAMPLE

class TodoList

  def initialize
    #@task = []

  end

  def add_task(task)
    #@task << task

  end

  def view_task
    return @task

  end

  def mark_task_as_complete(task)
    is_completed = false

    @task.delete_at()

  end

end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo 1st = TodoList.new
todo_list.add("Wash the car")
todo_list.list # => ['Wash the car"]
# 3
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.list # => ["Wash the car", "Wash the dog"]

# 4

todo ist= Todolist.new
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.complete("Wash the car")
todo_list.list # => ["Wash the dog"]
# 5
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Wash - the dog")
todo_list.complete("Wash the car")
todo list_list #=> ["Wash the dog"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

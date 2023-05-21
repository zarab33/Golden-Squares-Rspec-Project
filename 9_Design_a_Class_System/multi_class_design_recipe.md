# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a to list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```

                               +------------------------+
                               |  DiaryEntry            |
                               |  - add(title, entry)   |
                               |  - title               |
                               |  - entry               |
                               |  - count words         |
                               |  - reading_time(wpm)   |
                               |                        |
                               +-----------+------------+
                                           |
                                           |
                                           v
+----------------------+       +------------------------+       +-----------------------+
|   Todo               |       |  Diary                 |       |   Phonebook           |
|   - add              |       |  - add(entry)          |       |   - add(name, number) |
|   - task             |       |  - view(entry)         |       |   - view              |
|   - view(diary)      +-----> |  - count_words         | <-----+   - event             |
|                      |       |  - reading_time(wpm)   |       |                       |
|                      |       |                        |       |                       |
|                      |       |                        |       |                       |
+----------------------+       +------------------------+       +-----------------------+

```

_Also design the interface of each class in more detail._

```ruby
class DiaryEntry
  def initialize(title, entry)
    #@title = title
    #@entry = entry
    # title, contents are strings
    # ...
  end

  def title
    #return @title
    # Returns the title as a string
  end

  def entry
    #return @entry
    # Returns the entry as a string
  end
end

class Diary
  def initialize
    #@entries = []
  end

  def add(entry)
   # @entries << entry
    # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def view
    #return @entries
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm)
    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end
    def find_best_entry_for_reading_time(wpm, minutes)
    # Returns an instance of diary entry representing the entry that is closest
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    end
end

class Todo
  def initialize
    @task = task
    @ne = false
  end

 def add(task)
    # Returns the task as a string
  end


  def task
   return @task
    # Returns the task as a string
  end

  def view(diary)
    @ne = true
    # Marks the to as ne
    # Returns nothing
  end
end

class Phonebook
def initialize(diary)
end

  def extract_numbers
   #return @task
    # Returns the task as a string
  end

  def extract_numbers_from_entry(entry)
    # Marks the to as ne
    # Returns nothing
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a to list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

```ruby

#1. Adds entry and returns to diary
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
    diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.view => [diary_entry_1, diary_entry_2]

#2. No entry outputs an empty string
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new
    diary.add(diary_entry_1)
    diary.view => []

#3. #count_words
    #"it counts all the words in diary entries contents"
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.count_words.to eq 5

#4. #"reading time"
    "fails if the wpm is zero"
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
    diary.add(diary_entry_1)
    diary.reading_time(0) => "WPM must be positive"


#5. "it calculates the reading time for all entries"
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.reading_time(2) => 3

#6. "it calculates the reading time for all entries where its over a minute"
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.reading_time(2) => 3

#7. "find best entry reading time"
    "when there is one entry that is readable in the time"
    "returns that entry"
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary.add(diary_entry_1)
    result = diary.find_best_entry_for_reading_time(2, 1)
(result) => diary_entry_1

#8. "when there is one entry that is unreadable in the time"
    "returns nil"
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents readable")
    diary.add(diary_entry_1)
    result = diary.find_best_entry_for_reading_time(2,1)
(result) => nil

#9. "where we have multiple entries"
    "returns the longest entry user could read in this time"
    diary = Diary.new
    best_entry = DiaryEntry.new("my title", "one, two")
    diary.add(DiaryEntry.new("my title", "one"))
    diary.add(best_entry)
    diary.add(DiaryEntry.new("my title", "one, two three"))
    diary.add(DiaryEntry.new("my title", "one, two three four"))
    result = diary.find_best_entry_for_reading_time(2, 1)
(result) => best_entry


#10. "add a new contact to diary entry"
    phone_book = PhonenumberExtractor.new(diary)
    diary.add(DiaryEntry.new("title0","my friend is cool"))
    diary.add(DiaryEntry.new("title1","my friend 07800000000 is cool"))
    diary.add(DiaryEntry.new("title0","my friends 07800000000, 07800000001, 07800000002 are cool"))
    phone_book.extract_numbers => ["07800000000", "07800000001", "07800000002"]

#11. "returns empty string if not enough integers are added to a contact"
    diary = Diary.new
    phone_book = PhonenumberExtractor.new(diary)
    diary.add(DiaryEntry.new("title0","my friends 078000000, 780000000111, 08000000010 are cool"))
    phone_book.extract_numbers => []


# Read past entries
# Select entries based on time
# Add task to to list and display with diary entry
# list phonebook in diary entries


```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby

DiaryEntry_spec

#1.     "contructs"
        diary_entry = DiaryEntry.new("my title", "my contents")
        (diary_entry.title).to  "my title"
        (diary_entry.contents) => "my contents"

#2.     "#count_words"
        "returns zero on empty contents"
        diary_entry = DiaryEntry.new("my title", "")
        (diary_entry.count_words) =>  0


#3.     #"counts the words in the contents"
        diary_entry = DiaryEntry.new("my title", "A day in the life of a Coder")
        (diary_entry.count_words) =>  8

#4.     "#reading_time"
        "fails if the wpm is zero"
        diary_entry = DiaryEntry.new("my title", "Hi Giraffe!")
        diary_entry.reading_time(0) =>  "WPM must be positive"


#5.     "returns zero if empty contents"
        diary_entry = DiaryEntry.new("my title", "")
        (diary_entry.reading_time(2)) => 0


#6.     "returns one if contents is one word"
        diary_entry = DiaryEntry.new("my title", "Coder")
        (diary_entry.reading_time(2)) =>  1


#7.     "returns a reading time for the contents"
        diary_entry = DiaryEntry.new("my title", "Happy days are on friday!")
        (diary_entry.reading_time(2)) =>  3


Diary

#1.     "has an empty list of entries"
        diary = Diary.new
        (diary.all) => []

#2.     "has a word count of 0"
        diary = Diary.new
        (diary.count_words) =>  0

#3.      "has a reading time of 0"
        diary = Diary.new
        (diary.reading_time(2)) =>  0

#4.     "has a best readable entry of nil"
        diary = Diary.new
        (diary.find_best_entry_for_reading_time(2, 1)) =>  nil



Todo

#1.      "given a task"
        "returns a task"
        tasks = Todo.new("Wash the winws")
        (tasks.task) => "Wash the winws"


#2.     "task is not complete initially"
        tasks = Todo.new("Wash the winws")
        (tasks.done?) =>  false


 #3.    "task can be marked ne when complete"
        tasks = Todo.new("Wash the winws")
        tasks.mark_done!
        (tasks.done?) =>  true


_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
```

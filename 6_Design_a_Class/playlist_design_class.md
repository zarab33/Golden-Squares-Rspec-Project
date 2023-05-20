# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._
class Todolist

```ruby
# EXAMPLE

class Playlist

  def initialize
    @tracks = []

  end

  def add_track(tracks)
    @tracks << task

  end

  def view_track
    return @tracks

  end

end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
# Given no tracks returns a fail.
playlist = Playlist.new
playlist.tracks # => fail "No tracks are added"

# 2
# Given a track its added to the playlist.
# Returns playlist.
playlist = Playlist.new
playlist.add_track("Shea Butter Baby")
playlist.view_track # => ["Shea Butter Baby"]

# 4
# Given multiple tracks its added to the playlist.
playlist = Playlist.new
playlist.add_track("Shea Butter Baby")
playlist.add_track("Pressure")
playlist.add_track("If I ruled the world")
todo_list.list # => [""Shea Butter Baby", "Pressure", "If I ruled the world"]




```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

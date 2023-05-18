class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
    # ...
  end

  def title
    return @title
    # Returns the title as a string
  end

  def contents
    return @contents
    # Returns the contents as a string
  end

  def count_words
    @contents.split(" ").length
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) 
    fail "Fail! Reading time must be above zero." unless wpm > 0
    return (count_words / wpm.to_f).ceil # ceiling rounds upwards
    # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) 
    no_words_we_can_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + no_words_we_can_read
    word_list = words[start_from, end_at]
    @furthest_word_read = end_at
    return word_list.join(" ")
    
    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end

  private

  def words
    return @contents.split(" ")
  end
end
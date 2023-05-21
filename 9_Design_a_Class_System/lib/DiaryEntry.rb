class DiaryEntry
  def initialize(title, entry)
    @title = title
    @entry = entry
    # title, contents are strings
    # ...
  end

  def title
    return @title
    # Returns the title as a string
  end

  def entry
    return @entry
    # Returns the entry as a string
  end

  def count_words
     return @entry.split(" ").length
    # Returns the number of words in the contents as an integer
  end
end
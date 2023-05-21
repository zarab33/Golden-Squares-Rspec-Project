=begin

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
=end
=begin

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
=end
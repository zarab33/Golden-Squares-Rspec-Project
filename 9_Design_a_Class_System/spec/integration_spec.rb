require 'Diary'
require 'DiaryEntry'
require 'Todo'
require 'Phonebook'

RSpec.describe "integration" do
    it "Adds entry and returns to diary" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
        diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.view).to eq [diary_entry_1, diary_entry_2]
    end
end
=begin
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
=end
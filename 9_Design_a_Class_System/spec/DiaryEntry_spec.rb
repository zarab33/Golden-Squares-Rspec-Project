require 'DiaryEntry'

RSpec.describe DiaryEntry do
    it "contructs" do
        diary_entry = DiaryEntry.new("my title", "my contents")
        expect(diary_entry.title).to eq "my title"
        expect(diary_entry.entry).to eq "my contents"
    end


    describe "#count_words" do
        it "returns zero on empty contents" do
            diary_entry = DiaryEntry.new("my title", "")
            expect(diary_entry.count_words).to eq 0
        end
    
         it "counts the words in the contents" do
            diary_entry = DiaryEntry.new("my title", "A day in the life of a Coder")
            expect(diary_entry.count_words).to eq 8
        end
    end
end   


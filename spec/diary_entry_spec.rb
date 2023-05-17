require 'diary_entry'

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.contents).to eq "my_contents"
    end

    describe "#count_words" do
        it "returns the number of words in a string" do
            diary_entry = DiaryEntry.new("my_title", "some contents here")
            expect(diary_entry.count_words).to eq 3
        end
    end

    it "returns zero when contents is empty" do
           diary_entry = DiaryEntry.new("my_title", "")
            expect(diary_entry.count_words).to eq 0
        
    end
end

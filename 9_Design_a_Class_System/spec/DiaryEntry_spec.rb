require 'DiaryEntry'

RSpec.describe DiaryEntry do
    it "contructs" do
        diary_entry = DiaryEntry.new("my title", "my contents")
        expect(diary_entry.title).to eq "my title"
        expect(diary_entry.entry).to eq "my contents"
    end
end
=begin

    describe "#count_words" do
        it "returns zero on empty contents" do
            diary_entry = DiaryEntry.new("my title", "")
            expect(diary_entry.count_words).to eq 0
        end

         it "counts the words in the contents" do
            diary_entry = DiaryEntry.new("my title", "A day in the life of a Coder")
            expect(diary_entry.count_words).to eq 8
        end
    
        describe "#reading_time" do
            it "fails if the wpm is zero" do
                diary_entry = DiaryEntry.new("my title", "Hi Giraffe!")
                expect { diary_entry.reading_time(0) }.to raise_error "WPM must be positive"
            end

            it "returns zero if empty contents" do
                diary_entry = DiaryEntry.new("my title", "")
                expect(diary_entry.reading_time(2)).to eq 0
            end

            it "returns one if contents is one word" do
                diary_entry = DiaryEntry.new("my title", "Coder")
                expect(diary_entry.reading_time(2)).to eq 1
            end

            it "returns a reading time for the contents" do
                diary_entry = DiaryEntry.new("my title", "Happy days are on friday!")
                expect(diary_entry.reading_time(2)).to eq 3
            end
        end    
    end

end
=end
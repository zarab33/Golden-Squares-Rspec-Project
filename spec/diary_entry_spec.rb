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
        it "returns zero when it has an empty string" do
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.count_words).to eq 0
        end
    end
    describe "#reading_time" do
        context "given a wpm of some sensible number (200)" do
            it "returns the ceiling of the number of minutes it takes to read the contents." do
            diary_entry = DiaryEntry.new("my_title", "one " * 550)
            expect(diary_entry.reading_time(200)).to eq 3
            end
        end
        context "given a wpm of zero" do
            it "fails" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            expect{ diary_entry.reading_time(0) }.to raise_error "Fail! Reading time must be above zero." 
            end
        end
    end
    describe "#reading_chunk" do
        context "With a contents readable within the time" do
            it "returns the full contents." do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            expect(diary_entry.reading_chunk(200, 1)).to eq "one two three"
            end
        end
        context "With a contents readable within the time" do
            it "returns the readable chunk." do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
            end
            it "returns the readable chunk next time we are asked." do
                diary_entry = DiaryEntry.new("my_title", "one two three")
                diary_entry.reading_chunk(2, 1)
                expect(diary_entry.reading_chunk(2, 1)).to eq "three"
            end
            #now it calls the previous two diary_entry to work through & get to the end
            it "restarts after reading the whole contects." do
                diary_entry = DiaryEntry.new("my_title", "one two three")
                diary_entry.reading_chunk(2, 1)
                diary_entry.reading_chunk(2, 1)
                expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
            end
        end
    end
end
















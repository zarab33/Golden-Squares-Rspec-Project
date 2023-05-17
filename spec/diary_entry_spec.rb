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

    describe "#reading_time" do
        context "given a wpm of some sensible number (200)" do
            it "returns the ceiling of the number of minutes it takes to read the context" do
            diary_entry = DiaryEntry.new("my_title", "one " * 550)
            expect(diary_entry.reading_time(200)).to eq 3
            end
        end
    end

    context "given a wpm of 0" do
            it "fails" do
            diary_entry = DiaryEntry.new("my_title", "one two three ")
            expect { diary_entry.reading_time(0) }.to raise_error "Fail! Reading time must be above zero."
            end
        
    end

    describe "#reading_chunk" do
        context "with a contents readable within the given minutes" do
            it "returns the full contents" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            chunk = diary_entry.reading_chunk(200, 1)
            expect(chunk).to eq "one two three"
            end
        end
    end


end

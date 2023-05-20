require 'count_words'

RSpec.describe "count_words method" do
    it "returns 0 if string empty" do
        expect(count_words("")).to eq "Number of words in string: 0"
    end
    it "returns num of word in string" do
        expect(count_words("Me and Afrika are coding")).to eq "Number of words in string: 5"
    end
end
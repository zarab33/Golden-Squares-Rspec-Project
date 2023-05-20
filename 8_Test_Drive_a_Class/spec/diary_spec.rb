require 'diary'

RSpec.describe Diary do
    it "has an empty list of entries" do
        diary = Diary.new
        expect(diary.all).to eq []
    end
end


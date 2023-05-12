require 'estimate_reading_time'

RSpec.describe "estimate_reading_time" do
    it "empty string returns zero" do 
        result = estimate_reading_time("")
        expect(result).to eq 0
    end

    it "estimates a result for a text under 200 words return 1" do 
        result = estimate_reading_time("one")
        expect(result).to eq 1
    end 

    it "estimates a result for a text of 200 words return 1" do 
        result = estimate_reading_time("Two" * 200)
        expect(result).to eq 1
    end 
end




        
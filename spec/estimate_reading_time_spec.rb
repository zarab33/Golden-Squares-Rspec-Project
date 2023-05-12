require 'estimate_reading_time'

RSpec.describe "estimate_reading_time" do
    it "empty string returns zero" do 
        result = estimate_reading_time("")
        expect(result).to eq 0
    end

    it "estimates a result for a text under 200 words return 1" do 
        result = estimate_reading_time("one ")
        expect(result).to eq 1
    end 

    it "estimates a result for a text of 200 words return 1" do 
        result = estimate_reading_time("Two " * 200)
        expect(result).to eq 1
    end 

    it "estimates a result for a text of 300 words return 2" do 
        result = estimate_reading_time("Three " * 300)
        expect(result).to eq 2
    end 

    it "estimates a result for a text of 400 words return 2" do 
        result = estimate_reading_time("Four " * 400)
        expect(result).to eq 2
    end 

    it "estimates a result for a text of 20,000 words return 100" do 
        result = estimate_reading_time("Twenty_thousand " * 20000)
        expect(result).to eq 100
    end 
end




        
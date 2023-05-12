require 'estimate_reading_time'

RSpec.describe "estimate_reading_time" do
    it "empty string returns zero" do 
        result = estimate_reading_time("")
        expect(result).to eq 0
    end
end




        
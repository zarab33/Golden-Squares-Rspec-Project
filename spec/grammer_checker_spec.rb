require 'grammer_checker'

RSpec.describe "grammer_checker" do
    it "empty string returns it fails" do 
        expect{ grammer_checker("")}.to raise_error "Not a sentence."
    end

  context "Given a sentence with a capital and fullstop" do
    it "returns true" do 
        result = grammer_checker("Hello, coders i can use correct grammer.") 
        expect(result).to eq true
    end
   end
end
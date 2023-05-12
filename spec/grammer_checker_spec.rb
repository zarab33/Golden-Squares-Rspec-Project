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

   context "Given a sentence without a capital and with fullstop" do
    it "returns false" do 
        result = grammer_checker("hello, coders i make mistakes.") 
        expect(result).to eq false
    end
   end

   context "Given a sentence without a capital or fullstop" do
    it "returns false" do 
        result = grammer_checker("hello, coders i make mistakes") 
        expect(result).to eq false
    end
   end

   context "Given a sentence with a capital word and with fullstop" do
    it "returns true" do 
        result = grammer_checker("HELLO, coders i can use correct grammer.")  
        expect(result).to eq true
    end
   end

   context "Given a sentence with a capital letter and question mark" do
    it "returns true" do 
        result = grammer_checker("Hello, coders i can use correct grammer?")  
        expect(result).to eq true
    end
   end

   context "Given a sentence with a capital letter and exclamation mark" do
    it "returns true" do 
        result = grammer_checker("Hello, coders i can use correct grammer!")  
        expect(result).to eq true
    end
   end
end
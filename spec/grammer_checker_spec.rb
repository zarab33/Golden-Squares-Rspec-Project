require 'grammer_checker'

RSpec.describe "grammer_checker" do
    it "empty string returns it fails" do 
        expect{ grammer_checker("")}.to raise_error "Not a sentence."
    end
end
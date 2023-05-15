require 'todo_tracker'

RSpec.describe "todo_tracker" do 
    context "Empty string returns an error" do
    it "fails" do
        expect{ todo_tracker ("")}.to raise_error("No text found")
    end
end
end

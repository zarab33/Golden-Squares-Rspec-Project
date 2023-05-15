require 'todo_tracker'

RSpec.describe "todo_tracker" do
    context "empty sting return an error"
    it "fail" do
    expect{todo_tracker("")}.to raise_error("No text found")
end

    context "Given a text with the word #TODO" do
        it "returns true" do
            result = todo_tracker("The text includes #TODO")
            expect(result).to eq true
        end
    end

    context "Given a text without the word #TODO" do
        it "returns false" do
            result = todo_tracker("The text does not include keyword")
            expect(result).to eq false
        end
    end
end

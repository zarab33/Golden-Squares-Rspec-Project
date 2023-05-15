require 'todo_tracker'

RSpec.describe "todo_tracker" do
    context "empty sting return an error"
    it "fail" do
    expect{todo_tracker("")}.to raise_error("No text found")
end
end

require 'todo'

RSpec.describe Todo do
    context "given no tasks" do 
        it "returns an empty string" do
            tasks = Todo.new("")
            expect(tasks.task).to eq ""
        end
    end

    context "given no tasks" do 
        it "returns a task" do
            tasks = Todo.new("Wash the windows")
            expect(tasks.task).to eq "Wash the windows"
        end
    end
end

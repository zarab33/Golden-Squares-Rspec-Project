require 'Todo'

RSpec.describe Todo do
    context "given a task" do 
        it "returns a task" do
            tasks = Todo.new("Wash the windows")
            expect(tasks.task).to eq "Wash the windows"
        end
    end
   
    it "given no tasks has an empty list" do
        tasks = Todo.new([])
        expect(tasks.task).to eq []
    end

    it "when given a task, puts the task in list" do
        todo = Todo.new("Do the dishes")
        expect(todo.task).to eq "Do the dishes"
    end


    it "when given two tasks they are both added to the list" do
        todo = Todo.new("Do the dishes")
        todo = Todo.new("Clean the car")
        expect(todo.task).to eq ("Do the dishes", "Clean the car")
    end
end

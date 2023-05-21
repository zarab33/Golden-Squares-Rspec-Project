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

    xit "when given a task to complete it removes it from the list" do
        todo_list = Todo.new
        todo_list.add("Do the ironing")
        todo_list.add("Go walk the dog")
        todo_list.complete("Do the ironing")
        expect(todo_list.task).to eq ["Go walk the dog"]
    end
   
    xit "fails when asked to complete a task that is not on the list" do
        todo_list = Todo.new
        todo_list.add("Cook dinner") 
        expect{ todo_list.complete("Go walk the dog") }.to raise_error "No such task."
    end
end

require 'todo_list'
require 'todo'


RSpec.describe "intergration" do
    xcontext "given no tasks" do 
        xit "has an empty todo list" do
            todos = TodoList.new
            tasks = Todo.new(task)
            todos.add(tasks)
            expect{ todos.incomplete[] }.to raise_error "No task found"
        end
    end        

    context "adds tasks" do
        it "to be completed" do
            todos = TodoList.new
            task_1 = Todo.new("Wash the windows")
            task_2 = Todo.new("Clean the oven")
            todos.add(task_1)
            todos.add(task_2)
            expect(todos.incomplete).to eq [task_1, task_2]
        end
    end

    context "When we mark a task as complete" do
        it "it doesnt show up in the task area" do
            todos = TodoList.new
            task_1 = Todo.new("Wash the windows")
            task_2 = Todo.new("Clean the oven")
            todos.add(task_1)
            todos.add(task_2)
            task_1.mark_done!
            expect(todos.incomplete).to eq [task_2]
        end
    end
end

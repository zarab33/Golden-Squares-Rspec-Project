require 'todo_list'
require 'todo'


RSpec.describe "intergration" do
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
        
        it "it shows up in the mark done list as complete" do
            todos = TodoList.new
            task_1 = Todo.new("Wash the windows")
            task_2 = Todo.new("Clean the oven")
            todos.add(task_1)
            todos.add(task_2)
            task_1.mark_done!
            expect(todos.complete).to eq [task_1]
        end
    end
    
    context "tasks that are in the mark done list are" do
        it "marked as complete" do
            todos = TodoList.new
            task_1 = Todo.new("Wash the windows")
            task_2 = Todo.new("Clean the oven")
            todos.add(task_1)
            todos.add(task_2)
            task_1.mark_done!
            task_2.mark_done!
            todos.give_up!
            expect(todos.complete).to eq [task_1, task_2]
        end
    end
end

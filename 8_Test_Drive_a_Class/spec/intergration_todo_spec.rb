require 'todo_list'
require 'todo'


RSpec.describe "intergration" do
    context "adds a task" do
        it "to be completed" do
            todos = TodoList.new
            tasks = Todo.new("Wash the windows")
            todos.add(tasks)
            expect(todos.incomplete).to eq [tasks]
        end
    end
end

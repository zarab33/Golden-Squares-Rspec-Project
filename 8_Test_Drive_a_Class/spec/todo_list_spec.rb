require 'todo_list'

RSpec.describe TodoList do
    context "Starts off with an empty task list" do
        it "has an empty list of tasks" do
            todo = TodoList.new
            expect(todo.incomplete).to eq []
        end

        it "has an empty list of completed tasks" do
            todo = TodoList.new
            expect(todo.incomplete).to eq []
        end
    end
end

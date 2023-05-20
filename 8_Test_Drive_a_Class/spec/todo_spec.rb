require 'todo'

RSpec.describe Todo do
    context "given a tasks" do 
        it "returns a task" do
            tasks = Todo.new("Wash the windows")
            expect(tasks.task).to eq "Wash the windows"
        end
    end
end

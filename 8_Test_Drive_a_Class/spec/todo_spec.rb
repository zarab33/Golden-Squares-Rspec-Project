require 'todo'

RSpec.describe Todo do
    xcontext "given no tasks" do 
        xit "returns an empty string" do
            tasks = Todo.new("")
            expect(tasks.task).to eq ""
        end
    end

    context "given a task" do 
        it "returns a task" do
            tasks = Todo.new("Wash the windows")
            expect(tasks.task).to eq "Wash the windows"
        end

        it "task is not complete initially" do
            tasks = Todo.new("Wash the windows")
            expect(tasks.done?).to eq false
        end

         it "task can be marked done when complete" do
            tasks = Todo.new("Wash the windows")
            tasks.mark_done!
            expect(tasks.done?).to eq true
        end
    end
end

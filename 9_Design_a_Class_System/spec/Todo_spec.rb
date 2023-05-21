=begin

#1.      "given a task"
        "returns a task"
        tasks = Todo.new("Wash the winws")
        (tasks.task) => "Wash the winws"


#2.     "task is not complete initially"
        tasks = Todo.new("Wash the winws")
        (tasks.done?) =>  false


 #3.    "task can be marked ne when complete"
        tasks = Todo.new("Wash the winws")
        tasks.mark_done!
        (tasks.done?) =>  true

        =end
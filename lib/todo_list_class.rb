class TodoList

  def initialize
    @task = []

  end

  def add(task)
      if task.empty?
        fail "No task found"
    end
    @task << task
  end
 
  def complete(task)
    fail "No such tasks" unless @task.include? task
    @task.delete(task)
  end

  def list
    return @task

  end
end
class Todo
  def initialize(task)
    @task = task
    
  end

 def add(task)
    @task << task
    # Returns the task as a string
  end

  def task
   return @task
    # Returns the task as a string
  end
end
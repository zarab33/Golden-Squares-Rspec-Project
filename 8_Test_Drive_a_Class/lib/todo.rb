class Todo
  def initialize(task)
    @task = task
   #@task = []
   #@todo = task 
    # task is a string
    # ...
  end

  def task
   return @task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end
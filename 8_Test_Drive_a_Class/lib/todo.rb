class Todo
  def initialize(task)
    @task = task
    @done = false
  end

  def task
   return @task
    # Returns the task as a string
  end

  def mark_done!
    @done = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    return @done
    # Returns true if the task is done
    # Otherwise, false
  end
end
class TodoList

  def initialize
    #@task = []

  end

  def add_task(task)
    #@task << task

  end

  def view_task
    return @task

  end

  def mark_task_as_complete(task)
    is_completed = false

    @task.delete_at()

  end

end
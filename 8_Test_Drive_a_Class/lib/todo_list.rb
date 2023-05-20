class TodoList
  def initialize
    @todo = []
  end

  def add(todo) 
    @todo << todo
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    return @todo
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end


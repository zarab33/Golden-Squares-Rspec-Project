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
    return @todo.reject do |todo|
        todo.done?
    end
     return @todo
    # Returns all non-done todos
  end

  def complete
    return @todo.select do |todo|
        todo.done?
    end
    # Returns all complete todos
  end

  def give_up!
    @todo.each do |todo|
        todo.mark_done!
    end
    # Marks all todos as complete
   end
end


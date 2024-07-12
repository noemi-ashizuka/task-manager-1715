require_relative "task"

class Controller
  # it serves the actions to the user
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    display_tasks
  end

  def add
    # Ask the view to ask the user for a description
    # store the description
    description = @view.ask_for_description # returns a string
    # create a new task
    task = Task.new(description)
    # store the task in the repository
    @repository.create(task)
  end

  def mark_as_done
    # display the tasks
    display_tasks
    # Ask the view to ask the user for a number (index)
    index = @view.ask_for_index # returns an index
    # use the index to find the task in the repository
    task = @repository.find(index) # gives me back an instance of a task
    # mark it as done
    task.mark_as_done!
  end

  def remove
    # display tasks
    display_tasks
    # Ask the user for the number of the task to remove
    index = @view.ask_for_index
    # remove the task
    @repository.destroy(index)
  end

  private

  def display_tasks
    # gets the tasks from the repository
    tasks = @repository.all
    # gives them to the view to display
    @view.display(tasks)
  end
end

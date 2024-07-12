class Repository
  # it acts as an in memory DB, stores the instances of tasks
  # responsible to store the tasks in a CSV file
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def create(task)
    @tasks << task
  end

  def destroy(index)
    @tasks.delete_at(index)
  end

  def find(index)
    @tasks[index]
  end
end

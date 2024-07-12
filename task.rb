class Task
  # the model, the smallest piece of actual data
  attr_reader :description

  def initialize(description)
    # state
    @description = description
    @done = false
  end

  # behaviour
  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end
end

# Task.new("description")

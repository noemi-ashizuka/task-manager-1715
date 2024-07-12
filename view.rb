class View
  # interface with the user: puts/gets
  def display(tasks) # the parameter is an array of tasks instances
    tasks.each_with_index do |task, index|
      x_mark = task.done? ? "X" : " "
      puts "#{index + 1}) [#{x_mark}] #{task.description}"
    end
  end

  def ask_for_description
    puts "What's the task description?"
    gets.chomp # returns a string
  end

  def ask_for_index
    puts "What's the number?"
    gets.chomp.to_i - 1
  end
end

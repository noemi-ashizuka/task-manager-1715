require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

shopping = Task.new("Go grocery shopping")
dishes = Task.new("Wash the dishes")

# p shopping
# p dishes

shopping.mark_as_done!

# p shopping

repository = Repository.new

repository.create(shopping)
repository.create(dishes)

# p repository

# repository.destroy(0)

# p repository

# tasks = repository.all

# view = View.new

# view.display_tasks(tasks)

controller = Controller.new(repository)

# controller.list
# controller.add
# controller.mark_as_done
# controller.list
# controller.remove
# controller.list

router = Router.new(controller)

# router.run

class TaskList < ActiveRecord::Base
	has_many :task_items
end

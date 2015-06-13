class TaskList < ActiveRecord::Base
	has_many :task_items

	belongs_to :user
end

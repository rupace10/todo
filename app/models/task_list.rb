class TaskList < ActiveRecord::Base
	has_many :task_items

	belongs_to :user
	validates :title, presence: true,
					  length: {minimum: 2}
end

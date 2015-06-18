class TaskItem < ActiveRecord::Base
  belongs_to :task_list
  validates :content, presence: true

  def completed?
  	!completed_at.blank?
  end

  # def completed?
  # 	update_attribute(:completed_at,nil)
  # else
  # 	update_attribute(:completed_at, Time.now)
  # end
end

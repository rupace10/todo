class TaskItemsController < ApplicationController
	before_action :set_task_list

	def create
		@task_item = @task_list.task_items.create(task_item_params)
		redirect_to @task_list
	end

	def destroy
		@task_item = @task_list.task_items.find(params[:id])
		if @task_item.destroy
			flash[:success] = "Task List item was deleted"
		else
			flash[:error] = "Task List item could not be deleted."
		end
		redirect_to @task_list
	end

	private

	def set_task_list
		@task_list = TaskList.find(params[:task_list_id])
	end

	def task_item_params
		params[:task_item].permit(:content)
	end
end

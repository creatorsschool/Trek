class TasksController < ApplicationController
 
	def new
  end
 
	def create
		Task.new({field: params[:task][:field],
      user_id: current_user.id}).save
		redirect_to dashboard_path
	end

	def edit
		@task = Task.find(params[:id].to_i)
  	end
 
	def update
		Task.find(params[:id].to_i).update(task_params)
		redirect_to dashboard_path
	end
 
	def destroy
    	Task.find(params[:id].to_i).destroy
    	redirect_to dashboard_path
  	end

  def toggle
  	task = Task.find(params[:id].to_i)
  	task.status = !task.status
  	task.save	
  	redirect_to dashboard_path
  end
 
end

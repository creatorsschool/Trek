class TasksController < ApplicationController
 
	def new
    group = Group.find(params[:group_id])
    @task = group.tasks.build
  end
 
	def create
		Task.new(task_params).save
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
 
	private

    def task_params
    	params.require(:task).permit(:field, :group_id)
    end
end

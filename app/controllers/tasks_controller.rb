class TasksController < ApplicationController

	def new
    group = Group.find(params[:group_id])
    @task = group.tasks.build
  end

	def create
		task = Task.create(task_params)
		redirect_to project_groups_path({project_id: task.group.project.id})
	end

	def edit
		@task = Task.find(params[:id].to_i)
	end

	def update
		task = Task.find(params[:id].to_i)
    task.update(task_params)
		redirect_to project_groups_path({project_id: task.group.project.id})
	end

	def destroy
    task = Task.find(params[:id].to_i).destroy
    redirect_to project_groups_path({project_id: task.group.project.id})
  	end

  def toggle
  	task = Task.find(params[:id].to_i)
  	task.status = !task.status
  	task.save
  	redirect_to project_groups_path({project_id: task.group.project.id})
  end

	private

    def task_params
    	params.require(:task).permit(:field, :group_id).merge(user_id: current_user.id)
    end
end

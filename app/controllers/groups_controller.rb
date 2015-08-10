class GroupsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
  	@group = Group.new
  end

  def create
    @project = Project.find(params[:project_id])
  	group = @project.groups.build(group_params)
    group.user_ids = params[:group][:user_ids]
    group.save
  	redirect_to project_groups_path
  end

  def show
  	@group = Group.find(params[:id])
  end

  def edit
    @project = Project.find(params[:project_id])
  	@group = Group.find(params[:id])
  end

  def update
  	Group.find(params[:id]).update(group_params)
  	redirect_to project_groups_path
  end

  def destroy
  	Group.find(params[:id].to_i).destroy
  	redirect_to project_groups_path
  end

  def index
    @project = Project.find(params[:project_id])
    @groups = @project.groups 
  end

  private
  def group_params
  	params.require(:group).permit(:name, :description)
  end
end
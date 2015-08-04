class GroupsController < ApplicationController

  def new
  	@group = Group.new
  end

  def create
    group = Group.create(group_params)
    list_users = User.where(id: params[:group][:user_ids])
    group.users << list_users 
  	redirect_to dashboard_path
  end

  def show
  	@group = Group.find(params[:id])
  end

  def edit
  	@group = Group.find(params[:id])
  end

  def update
  	Group.find(params[:id]).update(group_params)
  	redirect_to dashboard_path
  end

  def destroy
  	Group.find(params[:id].to_i).destroy
  	redirect_to dashboard_path
  end

  private
  def group_params
  	params.require(:group).permit(:name, :description)
  end
end
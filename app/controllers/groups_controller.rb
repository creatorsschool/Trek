class GroupsController < ApplicationController

  def new
  	@group = Group.new
  end

  def create
  	Group.create(group_params)
  	redirect_to dashboard_path
  end

  def show
  	@group = Group.find(params[:id])
  end

  def edit
  	@group = Group.find(params[:id])
  end

  def update
  	Group.find(params[:id]).update(group_params_update)
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

  def group_params_update
  	params.require(:group).permit(:name, :description)
  end
end
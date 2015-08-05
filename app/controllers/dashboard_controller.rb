class DashboardController < ApplicationController
  def index
    if params[:search]
      @projects = Project.where("name LIKE ? ", "%#{params[:search]}%")
    else
      @projects = Project.all
    end
    @users = User.all
    @groups = Group.all
    @tasks = Task.all
    @project = Project.new
  end
end

class DashboardController < ApplicationController
  def index
    if params[:search]
      @projects = Project.where("name LIKE ? ", "%#{params[:search]}%")
    else
      @projects = Project.all
    end
    @list_groups = current_user.groups.all
    @users = User.all
    @groups = Group.all
    @tasks = Task.all
  end
end

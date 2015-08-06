class DashboardController < ApplicationController
  def index
    @projects = Project.all
    @users = User.all
    @groups = Group.all
    @tasks = Task.all
    @project = Project.new
    @list_groups = current_user.groups.all
  end
end

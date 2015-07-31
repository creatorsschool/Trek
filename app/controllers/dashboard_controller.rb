class DashboardController < ApplicationController

  def index
    @projects = Project.all
    @users = User.all
    @groups = Group.all
    @tasks = Task.all
  end

end
class DashboardController < ApplicationController
  def index
    if signed_in?
      @projects = Project.all
      @users = User.all
      @groups = Group.all
      @tasks = Task.all
      @project = Project.new
    else
      redirect_to sign_in_path
    end
  end
end

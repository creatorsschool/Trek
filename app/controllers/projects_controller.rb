class ProjectsController < ApplicationController

  def new
    @project = Project.new 
  end

  def create
    @project = Project.create ({
      name: params[:project][:name],
      description: params[:project][:description]
      })
    redirect_to dashboard_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update({
      name: params[:project][:name],
      description: params[:project][:description]
      })
    redirect_to dashboard_path
  end

  def remove
    @project = Project.find params[:id]
    @project.destroy
    redirect_to dashboard_path
  end

end

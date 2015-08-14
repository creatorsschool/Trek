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
  def destroy
    @project = Project.find params[:id]
    @project.destroy
    redirect_to dashboard_path
  end
  def show
    @project = Project.find params[:id]
  end
  def search
    if !params[:search].blank?
      @projects = Project.where('name LIKE ?', "%#{params[:search]}%")
    else
      @projects = Project.all
    end

    render json: @projects.map {|project| project.attributes.merge(avatar: current_user.avatar.url, username: current_user.first_name)}
  end
end

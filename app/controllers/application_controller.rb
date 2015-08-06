class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  before_action :initialize_project

  def initialize_project
    @project = Project.new
  end
end

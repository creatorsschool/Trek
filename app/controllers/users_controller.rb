class UsersController < ApplicationController
  def show
    @user = User.find do |user|
      user.id == params[:id].to_i
    end
  end
  def edit
    @user = User.find do |user|
      user.id == params[:id].to_i
    end
  end
  def update
    User.update(params[:id],
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email])
    redirect_to dashboard_path
  end
  def destroy
    User.destroy(params[:id])
    redirect_to dashboard_path
  end
end

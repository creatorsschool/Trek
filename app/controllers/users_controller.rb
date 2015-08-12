class UsersController < Clearance::UsersController
  def show
    @user = User.find do |user|
      user.id == params[:id].to_i
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.update(params[:id], update_user)
    redirect_to dashboard_path
    # redirect_to edit_user_path(current_user.id)
  end
  def destroy
    User.destroy(params[:id])
    redirect_to sign_in_path
  end
  def user_from_params
    first_name = user_params.delete(:first_name)
    last_name = user_params.delete(:last_name)
    email = user_params.delete(:email)
    password = user_params.delete(:password)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.first_name = first_name
      user.last_name = last_name
      user.email = email
      user.password = password
    end
  end

  private

  def update_user
    params.require(:user).permit(:first_name, :last_name, :email , :password, :avatar)
  end
end

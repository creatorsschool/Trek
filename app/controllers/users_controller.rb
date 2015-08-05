class UsersController < Clearance::UsersController
  def show
    @user = User.find do |user|
      user.id == params[:id].to_i
    end
  end
  def edit
    @user = User.find params[:id]
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
end
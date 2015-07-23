get "/" do
	@users = User.all
	erb :index
end

get "/user/new" do
	erb :"/users/user_form-create"
end

post "/user/create" do
	User.create({
		first_name: params[:first_name],
		last_name: params[:last_name],
		email: params[:email],
		})
	redirect "/"
end
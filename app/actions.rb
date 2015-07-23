get "/" do
	@users = User.all
	erb :index
end

get '/user/:id/remove' do
	User.destroy(params[:id])
	redirect '/'
end

get '/group/:id/remove' do
	Group.destroy(params[:id])
	redirect '/'
end

post '/group/create' do
	Group.create({
		name: params[:name],
		description: params[:description],
		})
	redirect '/'

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
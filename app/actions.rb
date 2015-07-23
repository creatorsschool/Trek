get "/" do
	@users = User.all
	@groups = Group.all
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

get "/group/new" do
	erb :"/groups/group_form-create"
end

post '/group/create' do
	Group.create({
		name: params[:name],
		description: params[:description],
		})
	redirect '/'
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

get '/users/:id' do
    @user = User.find do |user|
        user.id == params[:id].to_i
    end
end

post '/users/:id/update' do
    User.update(params[:id], first_name: paramas[:first_name], last_name: params[:last_name], email: params[:email])
    redirect '/users/#{user_id}'
end
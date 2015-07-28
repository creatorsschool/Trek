get '/login' do
	erb :"/login/login"
end

get "/" do
	@projects = Project.all
	@users = User.all
	@groups = Group.all
	@tasks = Task.all
	erb :index
end

# => Project
get "/project/new" do
	erb :"/project/new"
end

post "/project/create" do
	Project.create({
		name: params[:name],
		description: params[:description]
		})
	redirect "/"
end

# => User
get '/user/:id/remove' do
	User.destroy(params[:id])
	redirect '/'
end

get "/user/new" do
	erb :"/user/new"
end

post "/user/create" do
	User.create({
		first_name: params[:first_name],
		last_name: params[:last_name],
		email: params[:email],
		})
	redirect "/"
end

get '/user/:id' do

    @user = User.find do |user|
        user.id == params[:id].to_i
    end
end

get '/user/:id/edit' do
	@user = User.find do |user|
        user.id == params[:id].to_i
    end
	erb :"/user/edit"
end

post '/user/:id/update' do
    User.update(params[:id], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    redirect '/'
end

get '/user/:id/remove' do
	User.destroy(params[:id])
	redirect '/'
end

# => Group
get "/groups/new" do
	@users = User.all
	erb :"/group/new"
end

post '/group/create' do
	Group.create({
		name: params[:name],
		description: params[:description],
		})
	redirect '/'
end


get '/group/:id' do
	@group = Group.find(params[:id])
	@users = @group.users
	erb :"group/show"
end

post '/group/:id/edit' do
	@group = Group.find do |group|
		group.id == params[:id].to_i
	end
	redirect '/group/#{group_id}'
end

get '/group/:id/remove' do
	Group.destroy(params[:id])
	redirect '/'
end

# => Task

get "/task/new" do
	erb :"/task/new"
end

post '/task/create/:user_id' do
	Task.create({
		field: params[:field],
		user_id: params[:user_id]
		})
	redirect '/'
end

get '/task/:task_id/edit' do
	@task = Task.find(params[:task_id])
	erb :"/task/edit"
end

post '/task/:task_id/update/:user_id' do
	Task.update(params[:task_id],
		field: params[:field],
		user_id: params[:user_id]
		)
	redirect "/"
end

get '/task/:id/remove' do
	Task.destroy(params[:id])
	redirect '/'
end

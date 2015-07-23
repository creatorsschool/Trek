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

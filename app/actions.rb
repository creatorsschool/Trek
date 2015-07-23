









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
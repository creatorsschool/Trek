









get '/user/:id/remove' do
	User.destroy(params[:id])
	redirect '/'
end

get '/group/:id/remove' do
	Group.destroy(params[:id])
	redirect '/'
end
class InstantMessagesController < ApplicationController

	def index
		@user_id_received = params[:user_id]
		@user_name_received = User.find(params[:user_id])
		messages_user_sent = InstantMessage.where(user_id_sent: current_user.id, user_id_received: params[:user_id])
		messages_user_received = InstantMessage.where(user_id_sent: params[:user_id], user_id_received: current_user.id )
		@messages= [messages_user_sent, messages_user_received].flatten!.sort_by(&:time) #== sort_by{|message| message.time}
		#@messages_sent = current_user.sent_messages # todas as mensagens que enviei
		#@messages_received = current_user.received_messages # todas as mensagens que recebi
	end

	def create
		unless params[:instant_message][:text].empty?
			message = InstantMessage.new({
				text: params[:instant_message][:text],
				user_id_sent: current_user.id ,
				user_id_received: params[:user_id], 
				time: DateTime.now
				})
			if message.save
				redirect_to user_instant_messages_path
			else
				flash[:error] = "Action failed"
			end
		else
			redirect_to user_instant_messages_path
		end
	end
end

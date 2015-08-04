class InstantMessagesController < ApplicationController

	def index
		@messages_sent = current_user.sent_messages
		@messages_received = current_user.received_messages
	end

	def create
		message = InstantMessage.new({
			text: params[:instant_message][:text],
			user_id_sent: current_user.id ,
			user_id_received: 1
			})
		if message.save
			redirect_to instant_messages_path
		else
			flash[:error] = "Action failed"
		end
	end
end

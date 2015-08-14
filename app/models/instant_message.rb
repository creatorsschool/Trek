class InstantMessage < ActiveRecord::Base
	belongs_to :sending_user, class_name: "User", foreign_key: "user_id_sent"
	belongs_to :receiving_user, class_name: "User", foreign_key: "user_id_received"
	validates :text, presence: true

	def str_time
		#verifica se esta no fuso horario de verao
		# if self.time.between?(DateTime.new(2015,05,29), DateTime.new(2015,10,25)) 
		# 	self.time += 1.hour
		# end 

		#verifica se esta no mesmo dia
		if DateTime.now.strftime("%d/%m/%Y") == self.time.strftime("%d/%m/%Y")
			hours_message = self.time.hour + self.time.min/60.0 + self.time.sec/3600.0 # passar tudo para horas
			hours_now = DateTime.now.hour + DateTime.now.min/60.0 + DateTime.now.sec/3600.0
			dif_minutes = ((hours_message - hours_now)*60).abs
			if dif_minutes < 1 
				return "now"
			elsif dif_minutes.between?(1,59)
				return "#{dif_minutes.round} min"
			else
				return self.time.strftime("%H:%M")
			end	
		end

		#verifica se esta na mesmo semana 
		return self.time.strftime("%a, %H:%M") if
			self.time.between?(self.time.at_beginning_of_week, self.time.at_end_of_week) 

		# se nenhuma das condicoes se verificar
		return self.time.strftime("%d de %b, %H:%M")
	end
end


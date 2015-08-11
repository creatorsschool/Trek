class InstantMessage < ActiveRecord::Base
	belongs_to :sending_user, class_name: "User", foreign_key: "user_id_sent"
	belongs_to :receiving_user, class_name: "User", foreign_key: "user_id_received"
	validates :text, presence: true

	def str_time
		#verifica se esta no fuso horario de verao
		self.time.between?(DateTime.new(2015,05,29), DateTime.new(2015,10,25)) ? self.time += 1.hour  : self.time
		#verifica se esta no mesmo dia
		return self.time.strftime("%H:%M") if DateTime.now.strftime("%d/%m/%Y") == self.time.strftime("%d/%m/%Y")
		#verifica se esta na mesmo semana 
		return self.time.strftime("%A, %H:%M") if self.time.between?(self.time.at_beginning_of_week,self.time.at_end_of_week) 
		# se nenhuma das condicoes se verificar
		return self.time.strftime("%d de %b, %H:%M")
	end
end


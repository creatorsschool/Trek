class InstantMessage < ActiveRecord::Base
	belongs_to :sending_user, class_name: "User", foreign_key: "user_id_sent"
	belongs_to :receiving_user, class_name: "User", foreign_key: "user_id_received"
	validates :text, presence: true
end
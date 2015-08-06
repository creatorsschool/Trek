class User < ActiveRecord::Base
include Clearance::User

	has_many :user_groups
	has_many :groups, through: :user_groups
	has_many :tasks
	has_many :sent_messages, class_name: "InstantMessage", foreign_key: "user_id_sent"
	has_many :received_messages, class_name: "InstantMessage", foreign_key: "user_id_received"
end

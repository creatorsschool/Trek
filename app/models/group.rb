class Group < ActiveRecord::Base
	has_many :user_groups, dependent: :destroy
	has_many :users, through: :user_groups
	has_many :instant_messages
	belongs_to :projects
end
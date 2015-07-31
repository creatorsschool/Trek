class User < ActiveRecord::Base
	has_many :groups, through: :user_group
	has_many :user_group
	has_many :tasks
end

class User < ActiveRecord::Base
include Clearance::User

	has_many :groups, through: :user_group
	has_many :user_group
	has_many :tasks
end

class User < ActiveRecord::Base
  has_many :groups, trough :user_group
  has_many :user_group
	has_many :tasks
end

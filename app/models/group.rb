class Group < ActiveRecord::Base
  has_many :users, through: :user_group
  has_many :user_group
end
class UserGroup < ActiveRecord::Base
  has_many :groups
  has_many :users
end
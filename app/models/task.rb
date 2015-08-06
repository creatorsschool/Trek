class Task < ActiveRecord::Base
	belongs_to :users
  belongs_to :group
end
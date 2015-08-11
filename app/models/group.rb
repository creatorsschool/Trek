class Group < ActiveRecord::Base
  mount_uploader :banner, BannerUploader
  has_many :user_groups, dependent: :destroy
	has_many :users, through: :user_group
	has_many :user_group
  has_many :tasks
  has_many :instant_messages
	belongs_to :project
end
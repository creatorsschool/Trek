class AddColumnsIntegerIds < ActiveRecord::Migration
  def change
  	remove_column(:instant_messages, :user_id_sent)
  	remove_column(:instant_messages, :user_id_received)
  	remove_column(:instant_messages, :group_id)
  	remove_column(:tasks, :user_id)
  	remove_column(:user_groups, :group_id)
  	remove_column(:user_groups, :user_id)
  	add_column(:instant_messages, :user_id_sent, :integer)
  	add_column(:instant_messages, :user_id_received, :integer)
  	add_column(:instant_messages, :group_id, :integer)
  	add_column(:tasks, :user_id, :integer)
  	add_column(:user_groups, :group_id, :integer)
  	add_column(:user_groups, :user_id, :integer)
  end
end


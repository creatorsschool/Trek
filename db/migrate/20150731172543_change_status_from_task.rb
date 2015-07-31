class ChangeStatusFromTask < ActiveRecord::Migration
  def change
  	remove_column :tasks, :status
  	add_column :tasks, :status, :boolean , default: false   
  end
end

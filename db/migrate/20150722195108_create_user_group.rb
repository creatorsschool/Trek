class CreateUserGroup < ActiveRecord::Migration
  def change
  	create_table :user_group do |t|
  		t.string :group_id
  		t.string :user_id
  	end
  end
end

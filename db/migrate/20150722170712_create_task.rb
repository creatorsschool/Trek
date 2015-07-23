class CreateTask < ActiveRecord::Migration
  def change
  	create_table :task do |t|
  		t.string :field
  		t.boolean :status
  		t.string :user_id
  		t.timestamp
  	end
  end
end

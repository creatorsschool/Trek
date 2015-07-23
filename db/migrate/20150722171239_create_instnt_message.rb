class CreateInstntMessage < ActiveRecord::Migration
  def change
  	create_table :instante_message do |t|
  		t.string :text
  		t.string :user_id_sent
  		t.string :user_id_received
  		t.string :group_id
  		t.datetime :time
  	end
  end
end

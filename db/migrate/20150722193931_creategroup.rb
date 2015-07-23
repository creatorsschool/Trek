class Creategroup < ActiveRecord::Migration
  def change
  	create_table :group do |t|
  		t.string :name
  		t.string :description
  		t.string :user
  	end
  end
end

class CreateUserDb < ActiveRecord::Migration
  def change
  	create_table :users do |table|
  		table.string :first_name
  		table.string :last_name
  		table.string :email
	end
  end
end
